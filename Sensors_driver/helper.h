#ifndef _HELPER_H_
#define _HELPER_H_

#include <stdint.h>
#include <stdbool.h>

#define RB_MAX_SIZE 100

typedef struct
{
    uint8_t head;
    int16_t buffer[RB_MAX_SIZE];
} rb_typedef_t;

void rb_push(rb_typedef_t *rb, int16_t val);
void rb_init(rb_typedef_t *rb);
#endif