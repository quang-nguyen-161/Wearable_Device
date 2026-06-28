#include "nvmc_driver.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

#define TEST_PAGE_ADDR  0x0007F000UL   // page 127, last page
#define BOOT_COUNT_ADDR 0x0007F010UL 
void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);
    NRF_LOG_DEFAULT_BACKENDS_INIT();
}

#define DATA_PAGE_ADDR   0x0007F000UL   // page 127 — for test data
#define COUNT_PAGE_ADDR  0x0007E000UL   // page 126 — dedicated boot counter

int main(void)
{
    log_init();
    flash_init();
		
    /* ---- read boot count BEFORE any erase ---- */
    uint32_t boot_count;
    flash_read(COUNT_PAGE_ADDR, &boot_count, sizeof(boot_count));

    /* first boot: flash reads 0xFFFFFFFF (erased) ? treat as 0 */
    if (boot_count == 0xFFFFFFFF)
    {
        boot_count = 0;
    }

    boot_count++;
    NRF_LOG_INFO("Boot count: %d", boot_count);

    /* erase count page, write new value */
    flash_page_erase(COUNT_PAGE_ADDR);
    flash_write(COUNT_PAGE_ADDR, &boot_count, sizeof(boot_count));

    /* ---- test data on its own page ---- */
    flash_page_erase(DATA_PAGE_ADDR);
    uint32_t data[4] = {0xDEADBEEF, 0xCAFEBABE, 0x12345678, 0xAABBCCDD};
    flash_write(DATA_PAGE_ADDR, data, sizeof(data));

    uint32_t readback[4];
    flash_read(DATA_PAGE_ADDR, readback, sizeof(readback));

    NRF_LOG_INFO("Flash readback (words):");
    for (size_t i = 0; i < 4; i++)
    {
        NRF_LOG_INFO("  [%d] = 0x%08X", i, readback[i]);
    }
    NRF_LOG_FLUSH();

    while (true)
    {
        NRF_LOG_PROCESS();
    }
}