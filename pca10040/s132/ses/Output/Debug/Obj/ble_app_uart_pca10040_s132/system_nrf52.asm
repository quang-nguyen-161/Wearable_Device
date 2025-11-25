	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"system_nrf52.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "D:\\nRF\\nRF5_SDK_17.1.0_ddde560\\modules\\nrfx\\mdk\\system_nrf52.c"
	.section	.text.__NVIC_SystemReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__NVIC_SystemReset, %function
__NVIC_SystemReset:
.LFB131:
	.file 2 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.loc 2 1934 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB10:
.LBB11:
	.file 3 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 3 946 3
	.syntax unified
@ 946 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.loc 3 947 1
	.thumb
	.syntax unified
	nop
.LBE11:
.LBE10:
	.loc 2 1938 32
	ldr	r3, .L3
	ldr	r3, [r3, #12]
	.loc 2 1938 40
	and	r2, r3, #1792
	.loc 2 1937 6
	ldr	r1, .L3
	.loc 2 1937 17
	ldr	r3, .L3+4
	orrs	r3, r3, r2
	.loc 2 1937 15
	str	r3, [r1, #12]
.LBB12:
.LBB13:
	.loc 3 946 3
	.syntax unified
@ 946 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.loc 3 947 1
	.thumb
	.syntax unified
	nop
.L2:
.LBE13:
.LBE12:
	.loc 2 1944 5 discriminator 1
	.syntax unified
@ 1944 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 1
	nop
@ 0 "" 2
	.loc 2 1944 5 is_stmt 0
	.thumb
	.syntax unified
	b	.L2
.L4:
	.align	2
.L3:
	.word	-536810240
	.word	100270084
	.cfi_endproc
.LFE131:
	.size	__NVIC_SystemReset, .-__NVIC_SystemReset
	.section	.text.nrf51_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_1, %function
nrf51_errata_1:
.LFB145:
	.file 4 "D:\\nRF\\nRF5_SDK_17.1.0_ddde560\\modules\\nrfx\\mdk\\nrf51_erratas.h"
	.loc 4 142 1 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 144 16
	movs	r3, #0
	.loc 4 190 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE145:
	.size	nrf51_errata_1, .-nrf51_errata_1
	.section	.text.nrf51_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_2, %function
nrf51_errata_2:
.LFB146:
	.loc 4 206 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 208 16
	movs	r3, #0
	.loc 4 254 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE146:
	.size	nrf51_errata_2, .-nrf51_errata_2
	.section	.text.nrf51_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_3, %function
nrf51_errata_3:
.LFB147:
	.loc 4 270 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 272 16
	movs	r3, #0
	.loc 4 318 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE147:
	.size	nrf51_errata_3, .-nrf51_errata_3
	.section	.text.nrf51_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_4, %function
nrf51_errata_4:
.LFB148:
	.loc 4 328 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 330 16
	movs	r3, #0
	.loc 4 334 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE148:
	.size	nrf51_errata_4, .-nrf51_errata_4
	.section	.text.nrf51_errata_5,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_5, %function
nrf51_errata_5:
.LFB149:
	.loc 4 344 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 346 16
	movs	r3, #0
	.loc 4 350 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE149:
	.size	nrf51_errata_5, .-nrf51_errata_5
	.section	.text.nrf51_errata_6,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_6, %function
nrf51_errata_6:
.LFB150:
	.loc 4 366 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 368 16
	movs	r3, #0
	.loc 4 414 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE150:
	.size	nrf51_errata_6, .-nrf51_errata_6
	.section	.text.nrf51_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_7, %function
nrf51_errata_7:
.LFB151:
	.loc 4 430 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 432 16
	movs	r3, #0
	.loc 4 478 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE151:
	.size	nrf51_errata_7, .-nrf51_errata_7
	.section	.text.nrf51_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_8, %function
nrf51_errata_8:
.LFB152:
	.loc 4 494 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 496 16
	movs	r3, #0
	.loc 4 542 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE152:
	.size	nrf51_errata_8, .-nrf51_errata_8
	.section	.text.nrf51_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_9, %function
nrf51_errata_9:
.LFB153:
	.loc 4 558 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 560 16
	movs	r3, #0
	.loc 4 606 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE153:
	.size	nrf51_errata_9, .-nrf51_errata_9
	.section	.text.nrf51_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_10, %function
nrf51_errata_10:
.LFB154:
	.loc 4 622 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 624 16
	movs	r3, #0
	.loc 4 670 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE154:
	.size	nrf51_errata_10, .-nrf51_errata_10
	.section	.text.nrf51_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_11, %function
nrf51_errata_11:
.LFB155:
	.loc 4 686 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 688 16
	movs	r3, #0
	.loc 4 734 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE155:
	.size	nrf51_errata_11, .-nrf51_errata_11
	.section	.text.nrf51_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_12, %function
nrf51_errata_12:
.LFB156:
	.loc 4 750 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 752 16
	movs	r3, #0
	.loc 4 798 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE156:
	.size	nrf51_errata_12, .-nrf51_errata_12
	.section	.text.nrf51_errata_13,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_13, %function
nrf51_errata_13:
.LFB157:
	.loc 4 814 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 816 16
	movs	r3, #0
	.loc 4 862 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE157:
	.size	nrf51_errata_13, .-nrf51_errata_13
	.section	.text.nrf51_errata_14,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_14, %function
nrf51_errata_14:
.LFB158:
	.loc 4 878 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 880 16
	movs	r3, #0
	.loc 4 926 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE158:
	.size	nrf51_errata_14, .-nrf51_errata_14
	.section	.text.nrf51_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_15, %function
nrf51_errata_15:
.LFB159:
	.loc 4 942 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 944 16
	movs	r3, #0
	.loc 4 990 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE159:
	.size	nrf51_errata_15, .-nrf51_errata_15
	.section	.text.nrf51_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_16, %function
nrf51_errata_16:
.LFB160:
	.loc 4 1006 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1008 16
	movs	r3, #0
	.loc 4 1054 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE160:
	.size	nrf51_errata_16, .-nrf51_errata_16
	.section	.text.nrf51_errata_17,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_17, %function
nrf51_errata_17:
.LFB161:
	.loc 4 1070 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1072 16
	movs	r3, #0
	.loc 4 1118 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE161:
	.size	nrf51_errata_17, .-nrf51_errata_17
	.section	.text.nrf51_errata_18,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_18, %function
nrf51_errata_18:
.LFB162:
	.loc 4 1134 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1136 16
	movs	r3, #0
	.loc 4 1182 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE162:
	.size	nrf51_errata_18, .-nrf51_errata_18
	.section	.text.nrf51_errata_19,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_19, %function
nrf51_errata_19:
.LFB163:
	.loc 4 1198 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1200 16
	movs	r3, #0
	.loc 4 1246 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE163:
	.size	nrf51_errata_19, .-nrf51_errata_19
	.section	.text.nrf51_errata_20,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_20, %function
nrf51_errata_20:
.LFB164:
	.loc 4 1262 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1264 16
	movs	r3, #0
	.loc 4 1310 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE164:
	.size	nrf51_errata_20, .-nrf51_errata_20
	.section	.text.nrf51_errata_21,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_21, %function
nrf51_errata_21:
.LFB165:
	.loc 4 1326 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1328 16
	movs	r3, #0
	.loc 4 1374 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE165:
	.size	nrf51_errata_21, .-nrf51_errata_21
	.section	.text.nrf51_errata_22,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_22, %function
nrf51_errata_22:
.LFB166:
	.loc 4 1390 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1392 16
	movs	r3, #0
	.loc 4 1438 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE166:
	.size	nrf51_errata_22, .-nrf51_errata_22
	.section	.text.nrf51_errata_23,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_23, %function
nrf51_errata_23:
.LFB167:
	.loc 4 1454 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1456 16
	movs	r3, #0
	.loc 4 1502 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE167:
	.size	nrf51_errata_23, .-nrf51_errata_23
	.section	.text.nrf51_errata_24,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_24, %function
nrf51_errata_24:
.LFB168:
	.loc 4 1518 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1520 16
	movs	r3, #0
	.loc 4 1566 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE168:
	.size	nrf51_errata_24, .-nrf51_errata_24
	.section	.text.nrf51_errata_25,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_25, %function
nrf51_errata_25:
.LFB169:
	.loc 4 1582 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1584 16
	movs	r3, #0
	.loc 4 1630 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE169:
	.size	nrf51_errata_25, .-nrf51_errata_25
	.section	.text.nrf51_errata_26,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_26, %function
nrf51_errata_26:
.LFB170:
	.loc 4 1646 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1648 16
	movs	r3, #0
	.loc 4 1694 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE170:
	.size	nrf51_errata_26, .-nrf51_errata_26
	.section	.text.nrf51_errata_27,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_27, %function
nrf51_errata_27:
.LFB171:
	.loc 4 1710 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1712 16
	movs	r3, #0
	.loc 4 1758 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE171:
	.size	nrf51_errata_27, .-nrf51_errata_27
	.section	.text.nrf51_errata_28,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_28, %function
nrf51_errata_28:
.LFB172:
	.loc 4 1774 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1776 16
	movs	r3, #0
	.loc 4 1822 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE172:
	.size	nrf51_errata_28, .-nrf51_errata_28
	.section	.text.nrf51_errata_29,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_29, %function
nrf51_errata_29:
.LFB173:
	.loc 4 1838 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1840 16
	movs	r3, #0
	.loc 4 1886 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE173:
	.size	nrf51_errata_29, .-nrf51_errata_29
	.section	.text.nrf51_errata_30,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_30, %function
nrf51_errata_30:
.LFB174:
	.loc 4 1902 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1904 16
	movs	r3, #0
	.loc 4 1950 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE174:
	.size	nrf51_errata_30, .-nrf51_errata_30
	.section	.text.nrf51_errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_31, %function
nrf51_errata_31:
.LFB175:
	.loc 4 1966 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 1968 16
	movs	r3, #0
	.loc 4 2014 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE175:
	.size	nrf51_errata_31, .-nrf51_errata_31
	.section	.text.nrf51_errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_32, %function
nrf51_errata_32:
.LFB176:
	.loc 4 2030 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2032 16
	movs	r3, #0
	.loc 4 2078 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE176:
	.size	nrf51_errata_32, .-nrf51_errata_32
	.section	.text.nrf51_errata_33,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_33, %function
nrf51_errata_33:
.LFB177:
	.loc 4 2094 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2096 16
	movs	r3, #0
	.loc 4 2142 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE177:
	.size	nrf51_errata_33, .-nrf51_errata_33
	.section	.text.nrf51_errata_34,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_34, %function
nrf51_errata_34:
.LFB178:
	.loc 4 2158 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2160 16
	movs	r3, #0
	.loc 4 2206 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE178:
	.size	nrf51_errata_34, .-nrf51_errata_34
	.section	.text.nrf51_errata_35,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_35, %function
nrf51_errata_35:
.LFB179:
	.loc 4 2222 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2224 16
	movs	r3, #0
	.loc 4 2270 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE179:
	.size	nrf51_errata_35, .-nrf51_errata_35
	.section	.text.nrf51_errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_36, %function
nrf51_errata_36:
.LFB180:
	.loc 4 2286 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2288 16
	movs	r3, #0
	.loc 4 2334 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE180:
	.size	nrf51_errata_36, .-nrf51_errata_36
	.section	.text.nrf51_errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_37, %function
nrf51_errata_37:
.LFB181:
	.loc 4 2350 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2352 16
	movs	r3, #0
	.loc 4 2398 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE181:
	.size	nrf51_errata_37, .-nrf51_errata_37
	.section	.text.nrf51_errata_38,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_38, %function
nrf51_errata_38:
.LFB182:
	.loc 4 2414 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2416 16
	movs	r3, #0
	.loc 4 2462 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE182:
	.size	nrf51_errata_38, .-nrf51_errata_38
	.section	.text.nrf51_errata_39,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_39, %function
nrf51_errata_39:
.LFB183:
	.loc 4 2478 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2480 16
	movs	r3, #0
	.loc 4 2526 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE183:
	.size	nrf51_errata_39, .-nrf51_errata_39
	.section	.text.nrf51_errata_40,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_40, %function
nrf51_errata_40:
.LFB184:
	.loc 4 2542 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2544 16
	movs	r3, #0
	.loc 4 2590 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE184:
	.size	nrf51_errata_40, .-nrf51_errata_40
	.section	.text.nrf51_errata_41,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_41, %function
nrf51_errata_41:
.LFB185:
	.loc 4 2606 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2608 16
	movs	r3, #0
	.loc 4 2654 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE185:
	.size	nrf51_errata_41, .-nrf51_errata_41
	.section	.text.nrf51_errata_42,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_42, %function
nrf51_errata_42:
.LFB186:
	.loc 4 2670 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2672 16
	movs	r3, #0
	.loc 4 2718 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE186:
	.size	nrf51_errata_42, .-nrf51_errata_42
	.section	.text.nrf51_errata_43,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_43, %function
nrf51_errata_43:
.LFB187:
	.loc 4 2734 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2736 16
	movs	r3, #0
	.loc 4 2782 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE187:
	.size	nrf51_errata_43, .-nrf51_errata_43
	.section	.text.nrf51_errata_44,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_44, %function
nrf51_errata_44:
.LFB188:
	.loc 4 2798 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2800 16
	movs	r3, #0
	.loc 4 2846 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE188:
	.size	nrf51_errata_44, .-nrf51_errata_44
	.section	.text.nrf51_errata_45,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_45, %function
nrf51_errata_45:
.LFB189:
	.loc 4 2862 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2864 16
	movs	r3, #0
	.loc 4 2910 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE189:
	.size	nrf51_errata_45, .-nrf51_errata_45
	.section	.text.nrf51_errata_46,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_46, %function
nrf51_errata_46:
.LFB190:
	.loc 4 2926 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2928 16
	movs	r3, #0
	.loc 4 2974 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE190:
	.size	nrf51_errata_46, .-nrf51_errata_46
	.section	.text.nrf51_errata_47,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_47, %function
nrf51_errata_47:
.LFB191:
	.loc 4 2990 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 2992 16
	movs	r3, #0
	.loc 4 3038 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE191:
	.size	nrf51_errata_47, .-nrf51_errata_47
	.section	.text.nrf51_errata_48,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_48, %function
nrf51_errata_48:
.LFB192:
	.loc 4 3054 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3056 16
	movs	r3, #0
	.loc 4 3102 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE192:
	.size	nrf51_errata_48, .-nrf51_errata_48
	.section	.text.nrf51_errata_49,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_49, %function
nrf51_errata_49:
.LFB193:
	.loc 4 3118 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3120 16
	movs	r3, #0
	.loc 4 3166 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE193:
	.size	nrf51_errata_49, .-nrf51_errata_49
	.section	.text.nrf51_errata_50,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_50, %function
nrf51_errata_50:
.LFB194:
	.loc 4 3176 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3178 16
	movs	r3, #0
	.loc 4 3182 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE194:
	.size	nrf51_errata_50, .-nrf51_errata_50
	.section	.text.nrf51_errata_51,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_51, %function
nrf51_errata_51:
.LFB195:
	.loc 4 3192 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3194 16
	movs	r3, #0
	.loc 4 3198 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE195:
	.size	nrf51_errata_51, .-nrf51_errata_51
	.section	.text.nrf51_errata_52,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_52, %function
nrf51_errata_52:
.LFB196:
	.loc 4 3208 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3210 16
	movs	r3, #0
	.loc 4 3214 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE196:
	.size	nrf51_errata_52, .-nrf51_errata_52
	.section	.text.nrf51_errata_53,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_53, %function
nrf51_errata_53:
.LFB197:
	.loc 4 3224 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3226 16
	movs	r3, #0
	.loc 4 3230 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE197:
	.size	nrf51_errata_53, .-nrf51_errata_53
	.section	.text.nrf51_errata_54,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_54, %function
nrf51_errata_54:
.LFB198:
	.loc 4 3240 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3242 16
	movs	r3, #0
	.loc 4 3246 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE198:
	.size	nrf51_errata_54, .-nrf51_errata_54
	.section	.text.nrf51_errata_55,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_55, %function
nrf51_errata_55:
.LFB199:
	.loc 4 3262 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3264 16
	movs	r3, #0
	.loc 4 3310 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE199:
	.size	nrf51_errata_55, .-nrf51_errata_55
	.section	.text.nrf51_errata_56,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_56, %function
nrf51_errata_56:
.LFB200:
	.loc 4 3326 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3328 16
	movs	r3, #0
	.loc 4 3374 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE200:
	.size	nrf51_errata_56, .-nrf51_errata_56
	.section	.text.nrf51_errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_57, %function
nrf51_errata_57:
.LFB201:
	.loc 4 3390 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3392 16
	movs	r3, #0
	.loc 4 3438 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE201:
	.size	nrf51_errata_57, .-nrf51_errata_57
	.section	.text.nrf51_errata_58,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_58, %function
nrf51_errata_58:
.LFB202:
	.loc 4 3454 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3456 16
	movs	r3, #0
	.loc 4 3502 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE202:
	.size	nrf51_errata_58, .-nrf51_errata_58
	.section	.text.nrf51_errata_59,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_59, %function
nrf51_errata_59:
.LFB203:
	.loc 4 3518 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3520 16
	movs	r3, #0
	.loc 4 3566 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE203:
	.size	nrf51_errata_59, .-nrf51_errata_59
	.section	.text.nrf51_errata_60,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_60, %function
nrf51_errata_60:
.LFB204:
	.loc 4 3582 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3584 16
	movs	r3, #0
	.loc 4 3630 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE204:
	.size	nrf51_errata_60, .-nrf51_errata_60
	.section	.text.nrf51_errata_61,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_61, %function
nrf51_errata_61:
.LFB205:
	.loc 4 3646 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3648 16
	movs	r3, #0
	.loc 4 3694 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE205:
	.size	nrf51_errata_61, .-nrf51_errata_61
	.section	.text.nrf51_errata_62,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_62, %function
nrf51_errata_62:
.LFB206:
	.loc 4 3710 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3712 16
	movs	r3, #0
	.loc 4 3758 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE206:
	.size	nrf51_errata_62, .-nrf51_errata_62
	.section	.text.nrf51_errata_63,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_63, %function
nrf51_errata_63:
.LFB207:
	.loc 4 3774 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3776 16
	movs	r3, #0
	.loc 4 3822 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE207:
	.size	nrf51_errata_63, .-nrf51_errata_63
	.section	.text.nrf51_errata_64,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_64, %function
nrf51_errata_64:
.LFB208:
	.loc 4 3838 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3840 16
	movs	r3, #0
	.loc 4 3886 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE208:
	.size	nrf51_errata_64, .-nrf51_errata_64
	.section	.text.nrf51_errata_65,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_65, %function
nrf51_errata_65:
.LFB209:
	.loc 4 3902 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3904 16
	movs	r3, #0
	.loc 4 3950 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE209:
	.size	nrf51_errata_65, .-nrf51_errata_65
	.section	.text.nrf51_errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_66, %function
nrf51_errata_66:
.LFB210:
	.loc 4 3966 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 3968 16
	movs	r3, #0
	.loc 4 4014 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE210:
	.size	nrf51_errata_66, .-nrf51_errata_66
	.section	.text.nrf51_errata_67,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_67, %function
nrf51_errata_67:
.LFB211:
	.loc 4 4030 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4032 16
	movs	r3, #0
	.loc 4 4078 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE211:
	.size	nrf51_errata_67, .-nrf51_errata_67
	.section	.text.nrf51_errata_68,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_68, %function
nrf51_errata_68:
.LFB212:
	.loc 4 4094 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4096 16
	movs	r3, #0
	.loc 4 4142 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE212:
	.size	nrf51_errata_68, .-nrf51_errata_68
	.section	.text.nrf51_errata_69,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_69, %function
nrf51_errata_69:
.LFB213:
	.loc 4 4158 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4160 16
	movs	r3, #0
	.loc 4 4206 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE213:
	.size	nrf51_errata_69, .-nrf51_errata_69
	.section	.text.nrf51_errata_70,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_70, %function
nrf51_errata_70:
.LFB214:
	.loc 4 4222 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4224 16
	movs	r3, #0
	.loc 4 4270 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE214:
	.size	nrf51_errata_70, .-nrf51_errata_70
	.section	.text.nrf51_errata_71,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_71, %function
nrf51_errata_71:
.LFB215:
	.loc 4 4286 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4288 16
	movs	r3, #0
	.loc 4 4334 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE215:
	.size	nrf51_errata_71, .-nrf51_errata_71
	.section	.text.nrf51_errata_72,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_72, %function
nrf51_errata_72:
.LFB216:
	.loc 4 4350 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4352 16
	movs	r3, #0
	.loc 4 4398 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE216:
	.size	nrf51_errata_72, .-nrf51_errata_72
	.section	.text.nrf51_errata_73,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_73, %function
nrf51_errata_73:
.LFB217:
	.loc 4 4414 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4416 16
	movs	r3, #0
	.loc 4 4462 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE217:
	.size	nrf51_errata_73, .-nrf51_errata_73
	.section	.text.nrf51_errata_74,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_74, %function
nrf51_errata_74:
.LFB218:
	.loc 4 4478 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4480 16
	movs	r3, #0
	.loc 4 4526 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE218:
	.size	nrf51_errata_74, .-nrf51_errata_74
	.section	.text.nrf51_errata_75,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_75, %function
nrf51_errata_75:
.LFB219:
	.loc 4 4542 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4544 16
	movs	r3, #0
	.loc 4 4590 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE219:
	.size	nrf51_errata_75, .-nrf51_errata_75
	.section	.text.nrf51_errata_76,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_76, %function
nrf51_errata_76:
.LFB220:
	.loc 4 4606 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4608 16
	movs	r3, #0
	.loc 4 4654 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE220:
	.size	nrf51_errata_76, .-nrf51_errata_76
	.section	.text.nrf51_errata_77,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_77, %function
nrf51_errata_77:
.LFB221:
	.loc 4 4664 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4666 16
	movs	r3, #0
	.loc 4 4670 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE221:
	.size	nrf51_errata_77, .-nrf51_errata_77
	.section	.text.nrf51_errata_78,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf51_errata_78, %function
nrf51_errata_78:
.LFB222:
	.loc 4 4686 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 4 4688 16
	movs	r3, #0
	.loc 4 4734 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE222:
	.size	nrf51_errata_78, .-nrf51_errata_78
	.section	.text.nrf52_errata_1,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_1, %function
nrf52_errata_1:
.LFB223:
	.file 5 "D:\\nRF\\nRF5_SDK_17.1.0_ddde560\\modules\\nrfx\\mdk\\nrf52_erratas.h"
	.loc 5 248 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 254 31
	ldr	r3, .L171
	ldr	r3, [r3]
	.loc 5 254 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 255 31
	ldr	r3, .L171+4
	ldr	r3, [r3]
	.loc 5 255 74
	lsrs	r3, r3, #4
	.loc 5 255 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 259 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L162
	.loc 5 261 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L163
	adr	r2, .L165
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L165:
	.word	.L169+1
	.word	.L168+1
	.word	.L167+1
	.word	.L166+1
	.word	.L164+1
	.p2align 1
.L169:
	.loc 5 264 32
	movs	r3, #1
	b	.L170
.L168:
	.loc 5 266 32
	movs	r3, #0
	b	.L170
.L167:
	.loc 5 268 32
	movs	r3, #0
	b	.L170
.L166:
	.loc 5 270 32
	movs	r3, #0
	b	.L170
.L164:
	.loc 5 272 32
	movs	r3, #0
	b	.L170
.L163:
	.loc 5 274 32
	movs	r3, #0
	b	.L170
.L162:
	.loc 5 278 16
	movs	r3, #0
.L170:
	.loc 5 280 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L172:
	.align	2
.L171:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE223:
	.size	nrf52_errata_1, .-nrf52_errata_1
	.section	.text.nrf52_errata_2,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_2, %function
nrf52_errata_2:
.LFB224:
	.loc 5 295 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 301 31
	ldr	r3, .L183
	ldr	r3, [r3]
	.loc 5 301 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 302 31
	ldr	r3, .L183+4
	ldr	r3, [r3]
	.loc 5 302 74
	lsrs	r3, r3, #4
	.loc 5 302 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 306 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L174
	.loc 5 308 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L175
	adr	r2, .L177
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L177:
	.word	.L181+1
	.word	.L180+1
	.word	.L179+1
	.word	.L178+1
	.word	.L176+1
	.p2align 1
.L181:
	.loc 5 311 32
	movs	r3, #1
	b	.L182
.L180:
	.loc 5 313 32
	movs	r3, #0
	b	.L182
.L179:
	.loc 5 315 32
	movs	r3, #0
	b	.L182
.L178:
	.loc 5 317 32
	movs	r3, #0
	b	.L182
.L176:
	.loc 5 319 32
	movs	r3, #0
	b	.L182
.L175:
	.loc 5 321 32
	movs	r3, #0
	b	.L182
.L174:
	.loc 5 325 16
	movs	r3, #0
.L182:
	.loc 5 327 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L184:
	.align	2
.L183:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE224:
	.size	nrf52_errata_2, .-nrf52_errata_2
	.section	.text.nrf52_errata_3,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_3, %function
nrf52_errata_3:
.LFB225:
	.loc 5 342 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 348 31
	ldr	r3, .L195
	ldr	r3, [r3]
	.loc 5 348 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 349 31
	ldr	r3, .L195+4
	ldr	r3, [r3]
	.loc 5 349 74
	lsrs	r3, r3, #4
	.loc 5 349 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 353 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L186
	.loc 5 355 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L187
	adr	r2, .L189
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L189:
	.word	.L193+1
	.word	.L192+1
	.word	.L191+1
	.word	.L190+1
	.word	.L188+1
	.p2align 1
.L193:
	.loc 5 358 32
	movs	r3, #1
	b	.L194
.L192:
	.loc 5 360 32
	movs	r3, #0
	b	.L194
.L191:
	.loc 5 362 32
	movs	r3, #0
	b	.L194
.L190:
	.loc 5 364 32
	movs	r3, #0
	b	.L194
.L188:
	.loc 5 366 32
	movs	r3, #0
	b	.L194
.L187:
	.loc 5 368 32
	movs	r3, #0
	b	.L194
.L186:
	.loc 5 372 16
	movs	r3, #0
.L194:
	.loc 5 374 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L196:
	.align	2
.L195:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE225:
	.size	nrf52_errata_3, .-nrf52_errata_3
	.section	.text.nrf52_errata_4,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_4, %function
nrf52_errata_4:
.LFB226:
	.loc 5 389 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 395 31
	ldr	r3, .L207
	ldr	r3, [r3]
	.loc 5 395 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 396 31
	ldr	r3, .L207+4
	ldr	r3, [r3]
	.loc 5 396 74
	lsrs	r3, r3, #4
	.loc 5 396 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 400 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L198
	.loc 5 402 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L199
	adr	r2, .L201
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L201:
	.word	.L205+1
	.word	.L204+1
	.word	.L203+1
	.word	.L202+1
	.word	.L200+1
	.p2align 1
.L205:
	.loc 5 405 32
	movs	r3, #1
	b	.L206
.L204:
	.loc 5 407 32
	movs	r3, #0
	b	.L206
.L203:
	.loc 5 409 32
	movs	r3, #0
	b	.L206
.L202:
	.loc 5 411 32
	movs	r3, #0
	b	.L206
.L200:
	.loc 5 413 32
	movs	r3, #0
	b	.L206
.L199:
	.loc 5 415 32
	movs	r3, #0
	b	.L206
.L198:
	.loc 5 419 16
	movs	r3, #0
.L206:
	.loc 5 421 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L208:
	.align	2
.L207:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE226:
	.size	nrf52_errata_4, .-nrf52_errata_4
	.section	.text.nrf52_errata_7,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_7, %function
nrf52_errata_7:
.LFB227:
	.loc 5 436 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 442 31
	ldr	r3, .L219
	ldr	r3, [r3]
	.loc 5 442 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 443 31
	ldr	r3, .L219+4
	ldr	r3, [r3]
	.loc 5 443 74
	lsrs	r3, r3, #4
	.loc 5 443 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 447 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L210
	.loc 5 449 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L211
	adr	r2, .L213
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L213:
	.word	.L217+1
	.word	.L216+1
	.word	.L215+1
	.word	.L214+1
	.word	.L212+1
	.p2align 1
.L217:
	.loc 5 452 32
	movs	r3, #1
	b	.L218
.L216:
	.loc 5 454 32
	movs	r3, #0
	b	.L218
.L215:
	.loc 5 456 32
	movs	r3, #0
	b	.L218
.L214:
	.loc 5 458 32
	movs	r3, #0
	b	.L218
.L212:
	.loc 5 460 32
	movs	r3, #0
	b	.L218
.L211:
	.loc 5 462 32
	movs	r3, #0
	b	.L218
.L210:
	.loc 5 466 16
	movs	r3, #0
.L218:
	.loc 5 468 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L220:
	.align	2
.L219:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE227:
	.size	nrf52_errata_7, .-nrf52_errata_7
	.section	.text.nrf52_errata_8,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_8, %function
nrf52_errata_8:
.LFB228:
	.loc 5 483 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 489 31
	ldr	r3, .L231
	ldr	r3, [r3]
	.loc 5 489 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 490 31
	ldr	r3, .L231+4
	ldr	r3, [r3]
	.loc 5 490 74
	lsrs	r3, r3, #4
	.loc 5 490 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 494 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L222
	.loc 5 496 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L223
	adr	r2, .L225
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L225:
	.word	.L229+1
	.word	.L228+1
	.word	.L227+1
	.word	.L226+1
	.word	.L224+1
	.p2align 1
.L229:
	.loc 5 499 32
	movs	r3, #1
	b	.L230
.L228:
	.loc 5 501 32
	movs	r3, #0
	b	.L230
.L227:
	.loc 5 503 32
	movs	r3, #0
	b	.L230
.L226:
	.loc 5 505 32
	movs	r3, #0
	b	.L230
.L224:
	.loc 5 507 32
	movs	r3, #0
	b	.L230
.L223:
	.loc 5 509 32
	movs	r3, #0
	b	.L230
.L222:
	.loc 5 513 16
	movs	r3, #0
.L230:
	.loc 5 515 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L232:
	.align	2
.L231:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE228:
	.size	nrf52_errata_8, .-nrf52_errata_8
	.section	.text.nrf52_errata_9,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_9, %function
nrf52_errata_9:
.LFB229:
	.loc 5 530 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 536 31
	ldr	r3, .L243
	ldr	r3, [r3]
	.loc 5 536 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 537 31
	ldr	r3, .L243+4
	ldr	r3, [r3]
	.loc 5 537 74
	lsrs	r3, r3, #4
	.loc 5 537 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 541 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L234
	.loc 5 543 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L235
	adr	r2, .L237
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L237:
	.word	.L241+1
	.word	.L240+1
	.word	.L239+1
	.word	.L238+1
	.word	.L236+1
	.p2align 1
.L241:
	.loc 5 546 32
	movs	r3, #1
	b	.L242
.L240:
	.loc 5 548 32
	movs	r3, #0
	b	.L242
.L239:
	.loc 5 550 32
	movs	r3, #0
	b	.L242
.L238:
	.loc 5 552 32
	movs	r3, #0
	b	.L242
.L236:
	.loc 5 554 32
	movs	r3, #0
	b	.L242
.L235:
	.loc 5 556 32
	movs	r3, #0
	b	.L242
.L234:
	.loc 5 560 16
	movs	r3, #0
.L242:
	.loc 5 562 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L244:
	.align	2
.L243:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE229:
	.size	nrf52_errata_9, .-nrf52_errata_9
	.section	.text.nrf52_errata_10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_10, %function
nrf52_errata_10:
.LFB230:
	.loc 5 577 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 583 31
	ldr	r3, .L255
	ldr	r3, [r3]
	.loc 5 583 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 584 31
	ldr	r3, .L255+4
	ldr	r3, [r3]
	.loc 5 584 74
	lsrs	r3, r3, #4
	.loc 5 584 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 588 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L246
	.loc 5 590 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L247
	adr	r2, .L249
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L249:
	.word	.L253+1
	.word	.L252+1
	.word	.L251+1
	.word	.L250+1
	.word	.L248+1
	.p2align 1
.L253:
	.loc 5 593 32
	movs	r3, #1
	b	.L254
.L252:
	.loc 5 595 32
	movs	r3, #0
	b	.L254
.L251:
	.loc 5 597 32
	movs	r3, #0
	b	.L254
.L250:
	.loc 5 599 32
	movs	r3, #0
	b	.L254
.L248:
	.loc 5 601 32
	movs	r3, #0
	b	.L254
.L247:
	.loc 5 603 32
	movs	r3, #0
	b	.L254
.L246:
	.loc 5 607 16
	movs	r3, #0
.L254:
	.loc 5 609 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L256:
	.align	2
.L255:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE230:
	.size	nrf52_errata_10, .-nrf52_errata_10
	.section	.text.nrf52_errata_11,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_11, %function
nrf52_errata_11:
.LFB231:
	.loc 5 624 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 630 31
	ldr	r3, .L267
	ldr	r3, [r3]
	.loc 5 630 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 631 31
	ldr	r3, .L267+4
	ldr	r3, [r3]
	.loc 5 631 74
	lsrs	r3, r3, #4
	.loc 5 631 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 635 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L258
	.loc 5 637 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L259
	adr	r2, .L261
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L261:
	.word	.L265+1
	.word	.L264+1
	.word	.L263+1
	.word	.L262+1
	.word	.L260+1
	.p2align 1
.L265:
	.loc 5 640 32
	movs	r3, #1
	b	.L266
.L264:
	.loc 5 642 32
	movs	r3, #0
	b	.L266
.L263:
	.loc 5 644 32
	movs	r3, #0
	b	.L266
.L262:
	.loc 5 646 32
	movs	r3, #0
	b	.L266
.L260:
	.loc 5 648 32
	movs	r3, #0
	b	.L266
.L259:
	.loc 5 650 32
	movs	r3, #0
	b	.L266
.L258:
	.loc 5 654 16
	movs	r3, #0
.L266:
	.loc 5 656 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L268:
	.align	2
.L267:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE231:
	.size	nrf52_errata_11, .-nrf52_errata_11
	.section	.text.nrf52_errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_12, %function
nrf52_errata_12:
.LFB232:
	.loc 5 671 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 680 17
	ldr	r3, .L281
	ldr	r3, [r3]
	.loc 5 680 16
	cmp	r3, #-1
	bne	.L270
	.loc 5 682 26
	ldr	r3, .L281+4
	ldr	r3, [r3]
	.loc 5 682 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 683 26
	ldr	r3, .L281+8
	ldr	r3, [r3]
	.loc 5 683 69
	lsrs	r3, r3, #4
	.loc 5 683 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L271
.L270:
	.loc 5 687 24
	ldr	r3, .L281
	.loc 5 687 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 688 24
	ldr	r3, .L281+12
	.loc 5 688 22
	ldr	r3, [r3]
	str	r3, [sp]
.L271:
	.loc 5 693 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L272
	.loc 5 695 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L273
	adr	r2, .L275
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L275:
	.word	.L279+1
	.word	.L278+1
	.word	.L277+1
	.word	.L276+1
	.word	.L274+1
	.p2align 1
.L279:
	.loc 5 698 32
	movs	r3, #1
	b	.L280
.L278:
	.loc 5 700 32
	movs	r3, #1
	b	.L280
.L277:
	.loc 5 702 32
	movs	r3, #1
	b	.L280
.L276:
	.loc 5 704 32
	movs	r3, #1
	b	.L280
.L274:
	.loc 5 706 32
	movs	r3, #1
	b	.L280
.L273:
	.loc 5 708 32
	movs	r3, #1
	b	.L280
.L272:
	.loc 5 712 16
	movs	r3, #0
.L280:
	.loc 5 714 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L282:
	.align	2
.L281:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE232:
	.size	nrf52_errata_12, .-nrf52_errata_12
	.section	.text.nrf52_errata_15,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_15, %function
nrf52_errata_15:
.LFB233:
	.loc 5 733 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 742 17
	ldr	r3, .L295
	ldr	r3, [r3]
	.loc 5 742 16
	cmp	r3, #-1
	bne	.L284
	.loc 5 744 26
	ldr	r3, .L295+4
	ldr	r3, [r3]
	.loc 5 744 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 745 26
	ldr	r3, .L295+8
	ldr	r3, [r3]
	.loc 5 745 69
	lsrs	r3, r3, #4
	.loc 5 745 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L285
.L284:
	.loc 5 749 24
	ldr	r3, .L295
	.loc 5 749 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 750 24
	ldr	r3, .L295+12
	.loc 5 750 22
	ldr	r3, [r3]
	str	r3, [sp]
.L285:
	.loc 5 761 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L286
	.loc 5 763 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L287
	adr	r2, .L289
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L289:
	.word	.L293+1
	.word	.L292+1
	.word	.L291+1
	.word	.L290+1
	.word	.L288+1
	.p2align 1
.L293:
	.loc 5 766 32
	movs	r3, #1
	b	.L294
.L292:
	.loc 5 768 32
	movs	r3, #1
	b	.L294
.L291:
	.loc 5 770 32
	movs	r3, #1
	b	.L294
.L290:
	.loc 5 772 32
	movs	r3, #1
	b	.L294
.L288:
	.loc 5 774 32
	movs	r3, #1
	b	.L294
.L287:
	.loc 5 776 32
	movs	r3, #1
	b	.L294
.L286:
	.loc 5 840 16
	movs	r3, #0
.L294:
	.loc 5 842 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L296:
	.align	2
.L295:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE233:
	.size	nrf52_errata_15, .-nrf52_errata_15
	.section	.text.nrf52_errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_16, %function
nrf52_errata_16:
.LFB234:
	.loc 5 857 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 863 31
	ldr	r3, .L307
	ldr	r3, [r3]
	.loc 5 863 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 864 31
	ldr	r3, .L307+4
	ldr	r3, [r3]
	.loc 5 864 74
	lsrs	r3, r3, #4
	.loc 5 864 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 868 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L298
	.loc 5 870 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L299
	adr	r2, .L301
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L301:
	.word	.L305+1
	.word	.L304+1
	.word	.L303+1
	.word	.L302+1
	.word	.L300+1
	.p2align 1
.L305:
	.loc 5 873 32
	movs	r3, #1
	b	.L306
.L304:
	.loc 5 875 32
	movs	r3, #0
	b	.L306
.L303:
	.loc 5 877 32
	movs	r3, #0
	b	.L306
.L302:
	.loc 5 879 32
	movs	r3, #0
	b	.L306
.L300:
	.loc 5 881 32
	movs	r3, #0
	b	.L306
.L299:
	.loc 5 883 32
	movs	r3, #0
	b	.L306
.L298:
	.loc 5 887 16
	movs	r3, #0
.L306:
	.loc 5 889 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L308:
	.align	2
.L307:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE234:
	.size	nrf52_errata_16, .-nrf52_errata_16
	.section	.text.nrf52_errata_17,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_17, %function
nrf52_errata_17:
.LFB235:
	.loc 5 904 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 910 31
	ldr	r3, .L319
	ldr	r3, [r3]
	.loc 5 910 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 911 31
	ldr	r3, .L319+4
	ldr	r3, [r3]
	.loc 5 911 74
	lsrs	r3, r3, #4
	.loc 5 911 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 915 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L310
	.loc 5 917 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L311
	adr	r2, .L313
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L313:
	.word	.L317+1
	.word	.L316+1
	.word	.L315+1
	.word	.L314+1
	.word	.L312+1
	.p2align 1
.L317:
	.loc 5 920 32
	movs	r3, #1
	b	.L318
.L316:
	.loc 5 922 32
	movs	r3, #0
	b	.L318
.L315:
	.loc 5 924 32
	movs	r3, #0
	b	.L318
.L314:
	.loc 5 926 32
	movs	r3, #0
	b	.L318
.L312:
	.loc 5 928 32
	movs	r3, #0
	b	.L318
.L311:
	.loc 5 930 32
	movs	r3, #0
	b	.L318
.L310:
	.loc 5 934 16
	movs	r3, #0
.L318:
	.loc 5 936 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L320:
	.align	2
.L319:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE235:
	.size	nrf52_errata_17, .-nrf52_errata_17
	.section	.text.nrf52_errata_20,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_20, %function
nrf52_errata_20:
.LFB236:
	.loc 5 957 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 966 17
	ldr	r3, .L333
	ldr	r3, [r3]
	.loc 5 966 16
	cmp	r3, #-1
	bne	.L322
	.loc 5 968 26
	ldr	r3, .L333+4
	ldr	r3, [r3]
	.loc 5 968 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 969 26
	ldr	r3, .L333+8
	ldr	r3, [r3]
	.loc 5 969 69
	lsrs	r3, r3, #4
	.loc 5 969 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L323
.L322:
	.loc 5 973 24
	ldr	r3, .L333
	.loc 5 973 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 974 24
	ldr	r3, .L333+12
	.loc 5 974 22
	ldr	r3, [r3]
	str	r3, [sp]
.L323:
	.loc 5 987 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L324
	.loc 5 989 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L325
	adr	r2, .L327
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L327:
	.word	.L331+1
	.word	.L330+1
	.word	.L329+1
	.word	.L328+1
	.word	.L326+1
	.p2align 1
.L331:
	.loc 5 992 32
	movs	r3, #1
	b	.L332
.L330:
	.loc 5 994 32
	movs	r3, #1
	b	.L332
.L329:
	.loc 5 996 32
	movs	r3, #1
	b	.L332
.L328:
	.loc 5 998 32
	movs	r3, #1
	b	.L332
.L326:
	.loc 5 1000 32
	movs	r3, #1
	b	.L332
.L325:
	.loc 5 1002 32
	movs	r3, #1
	b	.L332
.L324:
	.loc 5 1100 16
	movs	r3, #0
.L332:
	.loc 5 1102 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L334:
	.align	2
.L333:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE236:
	.size	nrf52_errata_20, .-nrf52_errata_20
	.section	.text.nrf52_errata_23,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_23, %function
nrf52_errata_23:
.LFB237:
	.loc 5 1117 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1123 31
	ldr	r3, .L345
	ldr	r3, [r3]
	.loc 5 1123 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1124 31
	ldr	r3, .L345+4
	ldr	r3, [r3]
	.loc 5 1124 74
	lsrs	r3, r3, #4
	.loc 5 1124 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1128 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L336
	.loc 5 1130 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L337
	adr	r2, .L339
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L339:
	.word	.L343+1
	.word	.L342+1
	.word	.L341+1
	.word	.L340+1
	.word	.L338+1
	.p2align 1
.L343:
	.loc 5 1133 32
	movs	r3, #1
	b	.L344
.L342:
	.loc 5 1135 32
	movs	r3, #0
	b	.L344
.L341:
	.loc 5 1137 32
	movs	r3, #0
	b	.L344
.L340:
	.loc 5 1139 32
	movs	r3, #0
	b	.L344
.L338:
	.loc 5 1141 32
	movs	r3, #0
	b	.L344
.L337:
	.loc 5 1143 32
	movs	r3, #0
	b	.L344
.L336:
	.loc 5 1147 16
	movs	r3, #0
.L344:
	.loc 5 1149 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L346:
	.align	2
.L345:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE237:
	.size	nrf52_errata_23, .-nrf52_errata_23
	.section	.text.nrf52_errata_24,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_24, %function
nrf52_errata_24:
.LFB238:
	.loc 5 1164 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1170 31
	ldr	r3, .L357
	ldr	r3, [r3]
	.loc 5 1170 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1171 31
	ldr	r3, .L357+4
	ldr	r3, [r3]
	.loc 5 1171 74
	lsrs	r3, r3, #4
	.loc 5 1171 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1175 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L348
	.loc 5 1177 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L349
	adr	r2, .L351
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L351:
	.word	.L355+1
	.word	.L354+1
	.word	.L353+1
	.word	.L352+1
	.word	.L350+1
	.p2align 1
.L355:
	.loc 5 1180 32
	movs	r3, #1
	b	.L356
.L354:
	.loc 5 1182 32
	movs	r3, #0
	b	.L356
.L353:
	.loc 5 1184 32
	movs	r3, #0
	b	.L356
.L352:
	.loc 5 1186 32
	movs	r3, #0
	b	.L356
.L350:
	.loc 5 1188 32
	movs	r3, #0
	b	.L356
.L349:
	.loc 5 1190 32
	movs	r3, #0
	b	.L356
.L348:
	.loc 5 1194 16
	movs	r3, #0
.L356:
	.loc 5 1196 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L358:
	.align	2
.L357:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE238:
	.size	nrf52_errata_24, .-nrf52_errata_24
	.section	.text.nrf52_errata_25,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_25, %function
nrf52_errata_25:
.LFB239:
	.loc 5 1211 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1217 31
	ldr	r3, .L369
	ldr	r3, [r3]
	.loc 5 1217 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1218 31
	ldr	r3, .L369+4
	ldr	r3, [r3]
	.loc 5 1218 74
	lsrs	r3, r3, #4
	.loc 5 1218 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1222 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L360
	.loc 5 1224 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L361
	adr	r2, .L363
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L363:
	.word	.L367+1
	.word	.L366+1
	.word	.L365+1
	.word	.L364+1
	.word	.L362+1
	.p2align 1
.L367:
	.loc 5 1227 32
	movs	r3, #1
	b	.L368
.L366:
	.loc 5 1229 32
	movs	r3, #0
	b	.L368
.L365:
	.loc 5 1231 32
	movs	r3, #0
	b	.L368
.L364:
	.loc 5 1233 32
	movs	r3, #0
	b	.L368
.L362:
	.loc 5 1235 32
	movs	r3, #0
	b	.L368
.L361:
	.loc 5 1237 32
	movs	r3, #0
	b	.L368
.L360:
	.loc 5 1241 16
	movs	r3, #0
.L368:
	.loc 5 1243 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L370:
	.align	2
.L369:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE239:
	.size	nrf52_errata_25, .-nrf52_errata_25
	.section	.text.nrf52_errata_26,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_26, %function
nrf52_errata_26:
.LFB240:
	.loc 5 1258 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1264 31
	ldr	r3, .L381
	ldr	r3, [r3]
	.loc 5 1264 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1265 31
	ldr	r3, .L381+4
	ldr	r3, [r3]
	.loc 5 1265 74
	lsrs	r3, r3, #4
	.loc 5 1265 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1269 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L372
	.loc 5 1271 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L373
	adr	r2, .L375
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L375:
	.word	.L379+1
	.word	.L378+1
	.word	.L377+1
	.word	.L376+1
	.word	.L374+1
	.p2align 1
.L379:
	.loc 5 1274 32
	movs	r3, #1
	b	.L380
.L378:
	.loc 5 1276 32
	movs	r3, #0
	b	.L380
.L377:
	.loc 5 1278 32
	movs	r3, #0
	b	.L380
.L376:
	.loc 5 1280 32
	movs	r3, #0
	b	.L380
.L374:
	.loc 5 1282 32
	movs	r3, #0
	b	.L380
.L373:
	.loc 5 1284 32
	movs	r3, #0
	b	.L380
.L372:
	.loc 5 1288 16
	movs	r3, #0
.L380:
	.loc 5 1290 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L382:
	.align	2
.L381:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE240:
	.size	nrf52_errata_26, .-nrf52_errata_26
	.section	.text.nrf52_errata_27,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_27, %function
nrf52_errata_27:
.LFB241:
	.loc 5 1305 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1311 31
	ldr	r3, .L393
	ldr	r3, [r3]
	.loc 5 1311 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1312 31
	ldr	r3, .L393+4
	ldr	r3, [r3]
	.loc 5 1312 74
	lsrs	r3, r3, #4
	.loc 5 1312 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1316 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L384
	.loc 5 1318 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L385
	adr	r2, .L387
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L387:
	.word	.L391+1
	.word	.L390+1
	.word	.L389+1
	.word	.L388+1
	.word	.L386+1
	.p2align 1
.L391:
	.loc 5 1321 32
	movs	r3, #1
	b	.L392
.L390:
	.loc 5 1323 32
	movs	r3, #0
	b	.L392
.L389:
	.loc 5 1325 32
	movs	r3, #0
	b	.L392
.L388:
	.loc 5 1327 32
	movs	r3, #0
	b	.L392
.L386:
	.loc 5 1329 32
	movs	r3, #0
	b	.L392
.L385:
	.loc 5 1331 32
	movs	r3, #0
	b	.L392
.L384:
	.loc 5 1335 16
	movs	r3, #0
.L392:
	.loc 5 1337 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L394:
	.align	2
.L393:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE241:
	.size	nrf52_errata_27, .-nrf52_errata_27
	.section	.text.nrf52_errata_28,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_28, %function
nrf52_errata_28:
.LFB242:
	.loc 5 1352 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1358 31
	ldr	r3, .L405
	ldr	r3, [r3]
	.loc 5 1358 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1359 31
	ldr	r3, .L405+4
	ldr	r3, [r3]
	.loc 5 1359 74
	lsrs	r3, r3, #4
	.loc 5 1359 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1363 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L396
	.loc 5 1365 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L397
	adr	r2, .L399
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L399:
	.word	.L403+1
	.word	.L402+1
	.word	.L401+1
	.word	.L400+1
	.word	.L398+1
	.p2align 1
.L403:
	.loc 5 1368 32
	movs	r3, #1
	b	.L404
.L402:
	.loc 5 1370 32
	movs	r3, #0
	b	.L404
.L401:
	.loc 5 1372 32
	movs	r3, #0
	b	.L404
.L400:
	.loc 5 1374 32
	movs	r3, #0
	b	.L404
.L398:
	.loc 5 1376 32
	movs	r3, #0
	b	.L404
.L397:
	.loc 5 1378 32
	movs	r3, #0
	b	.L404
.L396:
	.loc 5 1382 16
	movs	r3, #0
.L404:
	.loc 5 1384 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L406:
	.align	2
.L405:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE242:
	.size	nrf52_errata_28, .-nrf52_errata_28
	.section	.text.nrf52_errata_29,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_29, %function
nrf52_errata_29:
.LFB243:
	.loc 5 1399 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1405 31
	ldr	r3, .L417
	ldr	r3, [r3]
	.loc 5 1405 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1406 31
	ldr	r3, .L417+4
	ldr	r3, [r3]
	.loc 5 1406 74
	lsrs	r3, r3, #4
	.loc 5 1406 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1410 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L408
	.loc 5 1412 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L409
	adr	r2, .L411
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L411:
	.word	.L415+1
	.word	.L414+1
	.word	.L413+1
	.word	.L412+1
	.word	.L410+1
	.p2align 1
.L415:
	.loc 5 1415 32
	movs	r3, #1
	b	.L416
.L414:
	.loc 5 1417 32
	movs	r3, #0
	b	.L416
.L413:
	.loc 5 1419 32
	movs	r3, #0
	b	.L416
.L412:
	.loc 5 1421 32
	movs	r3, #0
	b	.L416
.L410:
	.loc 5 1423 32
	movs	r3, #0
	b	.L416
.L409:
	.loc 5 1425 32
	movs	r3, #0
	b	.L416
.L408:
	.loc 5 1429 16
	movs	r3, #0
.L416:
	.loc 5 1431 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L418:
	.align	2
.L417:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE243:
	.size	nrf52_errata_29, .-nrf52_errata_29
	.section	.text.nrf52_errata_30,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_30, %function
nrf52_errata_30:
.LFB244:
	.loc 5 1446 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1452 31
	ldr	r3, .L429
	ldr	r3, [r3]
	.loc 5 1452 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1453 31
	ldr	r3, .L429+4
	ldr	r3, [r3]
	.loc 5 1453 74
	lsrs	r3, r3, #4
	.loc 5 1453 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1457 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L420
	.loc 5 1459 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L421
	adr	r2, .L423
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L423:
	.word	.L427+1
	.word	.L426+1
	.word	.L425+1
	.word	.L424+1
	.word	.L422+1
	.p2align 1
.L427:
	.loc 5 1462 32
	movs	r3, #1
	b	.L428
.L426:
	.loc 5 1464 32
	movs	r3, #0
	b	.L428
.L425:
	.loc 5 1466 32
	movs	r3, #0
	b	.L428
.L424:
	.loc 5 1468 32
	movs	r3, #0
	b	.L428
.L422:
	.loc 5 1470 32
	movs	r3, #0
	b	.L428
.L421:
	.loc 5 1472 32
	movs	r3, #0
	b	.L428
.L420:
	.loc 5 1476 16
	movs	r3, #0
.L428:
	.loc 5 1478 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L430:
	.align	2
.L429:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE244:
	.size	nrf52_errata_30, .-nrf52_errata_30
	.section	.text.nrf52_errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_31, %function
nrf52_errata_31:
.LFB245:
	.loc 5 1496 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1505 17
	ldr	r3, .L443
	ldr	r3, [r3]
	.loc 5 1505 16
	cmp	r3, #-1
	bne	.L432
	.loc 5 1507 26
	ldr	r3, .L443+4
	ldr	r3, [r3]
	.loc 5 1507 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1508 26
	ldr	r3, .L443+8
	ldr	r3, [r3]
	.loc 5 1508 69
	lsrs	r3, r3, #4
	.loc 5 1508 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L433
.L432:
	.loc 5 1512 24
	ldr	r3, .L443
	.loc 5 1512 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 1513 24
	ldr	r3, .L443+12
	.loc 5 1513 22
	ldr	r3, [r3]
	str	r3, [sp]
.L433:
	.loc 5 1523 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L434
	.loc 5 1525 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L435
	adr	r2, .L437
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L437:
	.word	.L441+1
	.word	.L440+1
	.word	.L439+1
	.word	.L438+1
	.word	.L436+1
	.p2align 1
.L441:
	.loc 5 1528 32
	movs	r3, #1
	b	.L442
.L440:
	.loc 5 1530 32
	movs	r3, #1
	b	.L442
.L439:
	.loc 5 1532 32
	movs	r3, #1
	b	.L442
.L438:
	.loc 5 1534 32
	movs	r3, #1
	b	.L442
.L436:
	.loc 5 1536 32
	movs	r3, #1
	b	.L442
.L435:
	.loc 5 1538 32
	movs	r3, #1
	b	.L442
.L434:
	.loc 5 1580 16
	movs	r3, #0
.L442:
	.loc 5 1582 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L444:
	.align	2
.L443:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE245:
	.size	nrf52_errata_31, .-nrf52_errata_31
	.section	.text.nrf52_errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_32, %function
nrf52_errata_32:
.LFB246:
	.loc 5 1597 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1603 31
	ldr	r3, .L455
	ldr	r3, [r3]
	.loc 5 1603 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1604 31
	ldr	r3, .L455+4
	ldr	r3, [r3]
	.loc 5 1604 74
	lsrs	r3, r3, #4
	.loc 5 1604 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1608 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L446
	.loc 5 1610 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L447
	adr	r2, .L449
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L449:
	.word	.L453+1
	.word	.L452+1
	.word	.L451+1
	.word	.L450+1
	.word	.L448+1
	.p2align 1
.L453:
	.loc 5 1613 32
	movs	r3, #1
	b	.L454
.L452:
	.loc 5 1615 32
	movs	r3, #0
	b	.L454
.L451:
	.loc 5 1617 32
	movs	r3, #0
	b	.L454
.L450:
	.loc 5 1619 32
	movs	r3, #0
	b	.L454
.L448:
	.loc 5 1621 32
	movs	r3, #0
	b	.L454
.L447:
	.loc 5 1623 32
	movs	r3, #0
	b	.L454
.L446:
	.loc 5 1627 16
	movs	r3, #0
.L454:
	.loc 5 1629 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L456:
	.align	2
.L455:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE246:
	.size	nrf52_errata_32, .-nrf52_errata_32
	.section	.text.nrf52_errata_33,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_33, %function
nrf52_errata_33:
.LFB247:
	.loc 5 1644 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1650 31
	ldr	r3, .L467
	ldr	r3, [r3]
	.loc 5 1650 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1651 31
	ldr	r3, .L467+4
	ldr	r3, [r3]
	.loc 5 1651 74
	lsrs	r3, r3, #4
	.loc 5 1651 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1655 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L458
	.loc 5 1657 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L459
	adr	r2, .L461
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L461:
	.word	.L465+1
	.word	.L464+1
	.word	.L463+1
	.word	.L462+1
	.word	.L460+1
	.p2align 1
.L465:
	.loc 5 1660 32
	movs	r3, #1
	b	.L466
.L464:
	.loc 5 1662 32
	movs	r3, #0
	b	.L466
.L463:
	.loc 5 1664 32
	movs	r3, #0
	b	.L466
.L462:
	.loc 5 1666 32
	movs	r3, #0
	b	.L466
.L460:
	.loc 5 1668 32
	movs	r3, #0
	b	.L466
.L459:
	.loc 5 1670 32
	movs	r3, #0
	b	.L466
.L458:
	.loc 5 1674 16
	movs	r3, #0
.L466:
	.loc 5 1676 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L468:
	.align	2
.L467:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE247:
	.size	nrf52_errata_33, .-nrf52_errata_33
	.section	.text.nrf52_errata_34,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_34, %function
nrf52_errata_34:
.LFB248:
	.loc 5 1691 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1697 31
	ldr	r3, .L479
	ldr	r3, [r3]
	.loc 5 1697 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1698 31
	ldr	r3, .L479+4
	ldr	r3, [r3]
	.loc 5 1698 74
	lsrs	r3, r3, #4
	.loc 5 1698 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1702 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L470
	.loc 5 1704 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L471
	adr	r2, .L473
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L473:
	.word	.L477+1
	.word	.L476+1
	.word	.L475+1
	.word	.L474+1
	.word	.L472+1
	.p2align 1
.L477:
	.loc 5 1707 32
	movs	r3, #1
	b	.L478
.L476:
	.loc 5 1709 32
	movs	r3, #0
	b	.L478
.L475:
	.loc 5 1711 32
	movs	r3, #0
	b	.L478
.L474:
	.loc 5 1713 32
	movs	r3, #0
	b	.L478
.L472:
	.loc 5 1715 32
	movs	r3, #0
	b	.L478
.L471:
	.loc 5 1717 32
	movs	r3, #0
	b	.L478
.L470:
	.loc 5 1721 16
	movs	r3, #0
.L478:
	.loc 5 1723 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L480:
	.align	2
.L479:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE248:
	.size	nrf52_errata_34, .-nrf52_errata_34
	.section	.text.nrf52_errata_35,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_35, %function
nrf52_errata_35:
.LFB249:
	.loc 5 1738 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1744 31
	ldr	r3, .L491
	ldr	r3, [r3]
	.loc 5 1744 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1745 31
	ldr	r3, .L491+4
	ldr	r3, [r3]
	.loc 5 1745 74
	lsrs	r3, r3, #4
	.loc 5 1745 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1749 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L482
	.loc 5 1751 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L483
	adr	r2, .L485
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L485:
	.word	.L489+1
	.word	.L488+1
	.word	.L487+1
	.word	.L486+1
	.word	.L484+1
	.p2align 1
.L489:
	.loc 5 1754 32
	movs	r3, #1
	b	.L490
.L488:
	.loc 5 1756 32
	movs	r3, #0
	b	.L490
.L487:
	.loc 5 1758 32
	movs	r3, #0
	b	.L490
.L486:
	.loc 5 1760 32
	movs	r3, #0
	b	.L490
.L484:
	.loc 5 1762 32
	movs	r3, #0
	b	.L490
.L483:
	.loc 5 1764 32
	movs	r3, #0
	b	.L490
.L482:
	.loc 5 1768 16
	movs	r3, #0
.L490:
	.loc 5 1770 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L492:
	.align	2
.L491:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE249:
	.size	nrf52_errata_35, .-nrf52_errata_35
	.section	.text.nrf52_errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_36, %function
nrf52_errata_36:
.LFB250:
	.loc 5 1791 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1800 17
	ldr	r3, .L505
	ldr	r3, [r3]
	.loc 5 1800 16
	cmp	r3, #-1
	bne	.L494
	.loc 5 1802 26
	ldr	r3, .L505+4
	ldr	r3, [r3]
	.loc 5 1802 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1803 26
	ldr	r3, .L505+8
	ldr	r3, [r3]
	.loc 5 1803 69
	lsrs	r3, r3, #4
	.loc 5 1803 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L495
.L494:
	.loc 5 1807 24
	ldr	r3, .L505
	.loc 5 1807 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 1808 24
	ldr	r3, .L505+12
	.loc 5 1808 22
	ldr	r3, [r3]
	str	r3, [sp]
.L495:
	.loc 5 1821 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L496
	.loc 5 1823 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L497
	adr	r2, .L499
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L499:
	.word	.L503+1
	.word	.L502+1
	.word	.L501+1
	.word	.L500+1
	.word	.L498+1
	.p2align 1
.L503:
	.loc 5 1826 32
	movs	r3, #1
	b	.L504
.L502:
	.loc 5 1828 32
	movs	r3, #1
	b	.L504
.L501:
	.loc 5 1830 32
	movs	r3, #1
	b	.L504
.L500:
	.loc 5 1832 32
	movs	r3, #1
	b	.L504
.L498:
	.loc 5 1834 32
	movs	r3, #1
	b	.L504
.L497:
	.loc 5 1836 32
	movs	r3, #1
	b	.L504
.L496:
	.loc 5 1934 16
	movs	r3, #0
.L504:
	.loc 5 1936 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L506:
	.align	2
.L505:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE250:
	.size	nrf52_errata_36, .-nrf52_errata_36
	.section	.text.nrf52_errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_37, %function
nrf52_errata_37:
.LFB251:
	.loc 5 1951 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 1957 31
	ldr	r3, .L517
	ldr	r3, [r3]
	.loc 5 1957 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 1958 31
	ldr	r3, .L517+4
	ldr	r3, [r3]
	.loc 5 1958 74
	lsrs	r3, r3, #4
	.loc 5 1958 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 1962 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L508
	.loc 5 1964 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L509
	adr	r2, .L511
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L511:
	.word	.L515+1
	.word	.L514+1
	.word	.L513+1
	.word	.L512+1
	.word	.L510+1
	.p2align 1
.L515:
	.loc 5 1967 32
	movs	r3, #1
	b	.L516
.L514:
	.loc 5 1969 32
	movs	r3, #0
	b	.L516
.L513:
	.loc 5 1971 32
	movs	r3, #0
	b	.L516
.L512:
	.loc 5 1973 32
	movs	r3, #0
	b	.L516
.L510:
	.loc 5 1975 32
	movs	r3, #0
	b	.L516
.L509:
	.loc 5 1977 32
	movs	r3, #0
	b	.L516
.L508:
	.loc 5 1981 16
	movs	r3, #0
.L516:
	.loc 5 1983 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L518:
	.align	2
.L517:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE251:
	.size	nrf52_errata_37, .-nrf52_errata_37
	.section	.text.nrf52_errata_38,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_38, %function
nrf52_errata_38:
.LFB252:
	.loc 5 1998 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2004 31
	ldr	r3, .L529
	ldr	r3, [r3]
	.loc 5 2004 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2005 31
	ldr	r3, .L529+4
	ldr	r3, [r3]
	.loc 5 2005 74
	lsrs	r3, r3, #4
	.loc 5 2005 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2009 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L520
	.loc 5 2011 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L521
	adr	r2, .L523
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L523:
	.word	.L527+1
	.word	.L526+1
	.word	.L525+1
	.word	.L524+1
	.word	.L522+1
	.p2align 1
.L527:
	.loc 5 2014 32
	movs	r3, #1
	b	.L528
.L526:
	.loc 5 2016 32
	movs	r3, #0
	b	.L528
.L525:
	.loc 5 2018 32
	movs	r3, #0
	b	.L528
.L524:
	.loc 5 2020 32
	movs	r3, #0
	b	.L528
.L522:
	.loc 5 2022 32
	movs	r3, #0
	b	.L528
.L521:
	.loc 5 2024 32
	movs	r3, #0
	b	.L528
.L520:
	.loc 5 2028 16
	movs	r3, #0
.L528:
	.loc 5 2030 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L530:
	.align	2
.L529:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE252:
	.size	nrf52_errata_38, .-nrf52_errata_38
	.section	.text.nrf52_errata_39,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_39, %function
nrf52_errata_39:
.LFB253:
	.loc 5 2045 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2051 31
	ldr	r3, .L541
	ldr	r3, [r3]
	.loc 5 2051 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2052 31
	ldr	r3, .L541+4
	ldr	r3, [r3]
	.loc 5 2052 74
	lsrs	r3, r3, #4
	.loc 5 2052 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2056 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L532
	.loc 5 2058 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L533
	adr	r2, .L535
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L535:
	.word	.L539+1
	.word	.L538+1
	.word	.L537+1
	.word	.L536+1
	.word	.L534+1
	.p2align 1
.L539:
	.loc 5 2061 32
	movs	r3, #1
	b	.L540
.L538:
	.loc 5 2063 32
	movs	r3, #0
	b	.L540
.L537:
	.loc 5 2065 32
	movs	r3, #0
	b	.L540
.L536:
	.loc 5 2067 32
	movs	r3, #0
	b	.L540
.L534:
	.loc 5 2069 32
	movs	r3, #0
	b	.L540
.L533:
	.loc 5 2071 32
	movs	r3, #0
	b	.L540
.L532:
	.loc 5 2075 16
	movs	r3, #0
.L540:
	.loc 5 2077 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L542:
	.align	2
.L541:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE253:
	.size	nrf52_errata_39, .-nrf52_errata_39
	.section	.text.nrf52_errata_40,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_40, %function
nrf52_errata_40:
.LFB254:
	.loc 5 2092 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2098 31
	ldr	r3, .L553
	ldr	r3, [r3]
	.loc 5 2098 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2099 31
	ldr	r3, .L553+4
	ldr	r3, [r3]
	.loc 5 2099 74
	lsrs	r3, r3, #4
	.loc 5 2099 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2103 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L544
	.loc 5 2105 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L545
	adr	r2, .L547
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L547:
	.word	.L551+1
	.word	.L550+1
	.word	.L549+1
	.word	.L548+1
	.word	.L546+1
	.p2align 1
.L551:
	.loc 5 2108 32
	movs	r3, #1
	b	.L552
.L550:
	.loc 5 2110 32
	movs	r3, #0
	b	.L552
.L549:
	.loc 5 2112 32
	movs	r3, #0
	b	.L552
.L548:
	.loc 5 2114 32
	movs	r3, #0
	b	.L552
.L546:
	.loc 5 2116 32
	movs	r3, #0
	b	.L552
.L545:
	.loc 5 2118 32
	movs	r3, #0
	b	.L552
.L544:
	.loc 5 2122 16
	movs	r3, #0
.L552:
	.loc 5 2124 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L554:
	.align	2
.L553:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE254:
	.size	nrf52_errata_40, .-nrf52_errata_40
	.section	.text.nrf52_errata_41,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_41, %function
nrf52_errata_41:
.LFB255:
	.loc 5 2139 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2145 31
	ldr	r3, .L565
	ldr	r3, [r3]
	.loc 5 2145 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2146 31
	ldr	r3, .L565+4
	ldr	r3, [r3]
	.loc 5 2146 74
	lsrs	r3, r3, #4
	.loc 5 2146 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2150 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L556
	.loc 5 2152 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L557
	adr	r2, .L559
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L559:
	.word	.L563+1
	.word	.L562+1
	.word	.L561+1
	.word	.L560+1
	.word	.L558+1
	.p2align 1
.L563:
	.loc 5 2155 32
	movs	r3, #1
	b	.L564
.L562:
	.loc 5 2157 32
	movs	r3, #0
	b	.L564
.L561:
	.loc 5 2159 32
	movs	r3, #0
	b	.L564
.L560:
	.loc 5 2161 32
	movs	r3, #0
	b	.L564
.L558:
	.loc 5 2163 32
	movs	r3, #0
	b	.L564
.L557:
	.loc 5 2165 32
	movs	r3, #0
	b	.L564
.L556:
	.loc 5 2169 16
	movs	r3, #0
.L564:
	.loc 5 2171 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L566:
	.align	2
.L565:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE255:
	.size	nrf52_errata_41, .-nrf52_errata_41
	.section	.text.nrf52_errata_42,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_42, %function
nrf52_errata_42:
.LFB256:
	.loc 5 2186 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2192 31
	ldr	r3, .L577
	ldr	r3, [r3]
	.loc 5 2192 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2193 31
	ldr	r3, .L577+4
	ldr	r3, [r3]
	.loc 5 2193 74
	lsrs	r3, r3, #4
	.loc 5 2193 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2197 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L568
	.loc 5 2199 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L569
	adr	r2, .L571
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L571:
	.word	.L575+1
	.word	.L574+1
	.word	.L573+1
	.word	.L572+1
	.word	.L570+1
	.p2align 1
.L575:
	.loc 5 2202 32
	movs	r3, #1
	b	.L576
.L574:
	.loc 5 2204 32
	movs	r3, #0
	b	.L576
.L573:
	.loc 5 2206 32
	movs	r3, #0
	b	.L576
.L572:
	.loc 5 2208 32
	movs	r3, #0
	b	.L576
.L570:
	.loc 5 2210 32
	movs	r3, #0
	b	.L576
.L569:
	.loc 5 2212 32
	movs	r3, #0
	b	.L576
.L568:
	.loc 5 2216 16
	movs	r3, #0
.L576:
	.loc 5 2218 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L578:
	.align	2
.L577:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE256:
	.size	nrf52_errata_42, .-nrf52_errata_42
	.section	.text.nrf52_errata_43,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_43, %function
nrf52_errata_43:
.LFB257:
	.loc 5 2233 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2239 31
	ldr	r3, .L589
	ldr	r3, [r3]
	.loc 5 2239 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2240 31
	ldr	r3, .L589+4
	ldr	r3, [r3]
	.loc 5 2240 74
	lsrs	r3, r3, #4
	.loc 5 2240 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2244 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L580
	.loc 5 2246 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L581
	adr	r2, .L583
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L583:
	.word	.L587+1
	.word	.L586+1
	.word	.L585+1
	.word	.L584+1
	.word	.L582+1
	.p2align 1
.L587:
	.loc 5 2249 32
	movs	r3, #1
	b	.L588
.L586:
	.loc 5 2251 32
	movs	r3, #0
	b	.L588
.L585:
	.loc 5 2253 32
	movs	r3, #0
	b	.L588
.L584:
	.loc 5 2255 32
	movs	r3, #0
	b	.L588
.L582:
	.loc 5 2257 32
	movs	r3, #0
	b	.L588
.L581:
	.loc 5 2259 32
	movs	r3, #0
	b	.L588
.L580:
	.loc 5 2263 16
	movs	r3, #0
.L588:
	.loc 5 2265 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L590:
	.align	2
.L589:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE257:
	.size	nrf52_errata_43, .-nrf52_errata_43
	.section	.text.nrf52_errata_44,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_44, %function
nrf52_errata_44:
.LFB258:
	.loc 5 2280 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2286 31
	ldr	r3, .L601
	ldr	r3, [r3]
	.loc 5 2286 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2287 31
	ldr	r3, .L601+4
	ldr	r3, [r3]
	.loc 5 2287 74
	lsrs	r3, r3, #4
	.loc 5 2287 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2291 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L592
	.loc 5 2293 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L593
	adr	r2, .L595
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L595:
	.word	.L599+1
	.word	.L598+1
	.word	.L597+1
	.word	.L596+1
	.word	.L594+1
	.p2align 1
.L599:
	.loc 5 2296 32
	movs	r3, #1
	b	.L600
.L598:
	.loc 5 2298 32
	movs	r3, #0
	b	.L600
.L597:
	.loc 5 2300 32
	movs	r3, #0
	b	.L600
.L596:
	.loc 5 2302 32
	movs	r3, #0
	b	.L600
.L594:
	.loc 5 2304 32
	movs	r3, #0
	b	.L600
.L593:
	.loc 5 2306 32
	movs	r3, #0
	b	.L600
.L592:
	.loc 5 2310 16
	movs	r3, #0
.L600:
	.loc 5 2312 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L602:
	.align	2
.L601:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE258:
	.size	nrf52_errata_44, .-nrf52_errata_44
	.section	.text.nrf52_errata_46,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_46, %function
nrf52_errata_46:
.LFB259:
	.loc 5 2327 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2333 31
	ldr	r3, .L613
	ldr	r3, [r3]
	.loc 5 2333 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2334 31
	ldr	r3, .L613+4
	ldr	r3, [r3]
	.loc 5 2334 74
	lsrs	r3, r3, #4
	.loc 5 2334 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2338 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L604
	.loc 5 2340 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L605
	adr	r2, .L607
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L607:
	.word	.L611+1
	.word	.L610+1
	.word	.L609+1
	.word	.L608+1
	.word	.L606+1
	.p2align 1
.L611:
	.loc 5 2343 32
	movs	r3, #1
	b	.L612
.L610:
	.loc 5 2345 32
	movs	r3, #0
	b	.L612
.L609:
	.loc 5 2347 32
	movs	r3, #0
	b	.L612
.L608:
	.loc 5 2349 32
	movs	r3, #0
	b	.L612
.L606:
	.loc 5 2351 32
	movs	r3, #0
	b	.L612
.L605:
	.loc 5 2353 32
	movs	r3, #0
	b	.L612
.L604:
	.loc 5 2357 16
	movs	r3, #0
.L612:
	.loc 5 2359 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L614:
	.align	2
.L613:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE259:
	.size	nrf52_errata_46, .-nrf52_errata_46
	.section	.text.nrf52_errata_47,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_47, %function
nrf52_errata_47:
.LFB260:
	.loc 5 2374 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2380 31
	ldr	r3, .L625
	ldr	r3, [r3]
	.loc 5 2380 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2381 31
	ldr	r3, .L625+4
	ldr	r3, [r3]
	.loc 5 2381 74
	lsrs	r3, r3, #4
	.loc 5 2381 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2385 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L616
	.loc 5 2387 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L617
	adr	r2, .L619
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L619:
	.word	.L623+1
	.word	.L622+1
	.word	.L621+1
	.word	.L620+1
	.word	.L618+1
	.p2align 1
.L623:
	.loc 5 2390 32
	movs	r3, #1
	b	.L624
.L622:
	.loc 5 2392 32
	movs	r3, #0
	b	.L624
.L621:
	.loc 5 2394 32
	movs	r3, #0
	b	.L624
.L620:
	.loc 5 2396 32
	movs	r3, #0
	b	.L624
.L618:
	.loc 5 2398 32
	movs	r3, #0
	b	.L624
.L617:
	.loc 5 2400 32
	movs	r3, #0
	b	.L624
.L616:
	.loc 5 2404 16
	movs	r3, #0
.L624:
	.loc 5 2406 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L626:
	.align	2
.L625:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE260:
	.size	nrf52_errata_47, .-nrf52_errata_47
	.section	.text.nrf52_errata_48,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_48, %function
nrf52_errata_48:
.LFB261:
	.loc 5 2421 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2427 31
	ldr	r3, .L637
	ldr	r3, [r3]
	.loc 5 2427 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2428 31
	ldr	r3, .L637+4
	ldr	r3, [r3]
	.loc 5 2428 74
	lsrs	r3, r3, #4
	.loc 5 2428 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2432 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L628
	.loc 5 2434 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L629
	adr	r2, .L631
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L631:
	.word	.L635+1
	.word	.L634+1
	.word	.L633+1
	.word	.L632+1
	.word	.L630+1
	.p2align 1
.L635:
	.loc 5 2437 32
	movs	r3, #1
	b	.L636
.L634:
	.loc 5 2439 32
	movs	r3, #0
	b	.L636
.L633:
	.loc 5 2441 32
	movs	r3, #0
	b	.L636
.L632:
	.loc 5 2443 32
	movs	r3, #0
	b	.L636
.L630:
	.loc 5 2445 32
	movs	r3, #0
	b	.L636
.L629:
	.loc 5 2447 32
	movs	r3, #0
	b	.L636
.L628:
	.loc 5 2451 16
	movs	r3, #0
.L636:
	.loc 5 2453 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L638:
	.align	2
.L637:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE261:
	.size	nrf52_errata_48, .-nrf52_errata_48
	.section	.text.nrf52_errata_49,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_49, %function
nrf52_errata_49:
.LFB262:
	.loc 5 2468 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2474 31
	ldr	r3, .L649
	ldr	r3, [r3]
	.loc 5 2474 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2475 31
	ldr	r3, .L649+4
	ldr	r3, [r3]
	.loc 5 2475 74
	lsrs	r3, r3, #4
	.loc 5 2475 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2479 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L640
	.loc 5 2481 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L641
	adr	r2, .L643
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L643:
	.word	.L647+1
	.word	.L646+1
	.word	.L645+1
	.word	.L644+1
	.word	.L642+1
	.p2align 1
.L647:
	.loc 5 2484 32
	movs	r3, #1
	b	.L648
.L646:
	.loc 5 2486 32
	movs	r3, #0
	b	.L648
.L645:
	.loc 5 2488 32
	movs	r3, #0
	b	.L648
.L644:
	.loc 5 2490 32
	movs	r3, #0
	b	.L648
.L642:
	.loc 5 2492 32
	movs	r3, #0
	b	.L648
.L641:
	.loc 5 2494 32
	movs	r3, #0
	b	.L648
.L640:
	.loc 5 2498 16
	movs	r3, #0
.L648:
	.loc 5 2500 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L650:
	.align	2
.L649:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE262:
	.size	nrf52_errata_49, .-nrf52_errata_49
	.section	.text.nrf52_errata_51,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_51, %function
nrf52_errata_51:
.LFB263:
	.loc 5 2515 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2524 17
	ldr	r3, .L663
	ldr	r3, [r3]
	.loc 5 2524 16
	cmp	r3, #-1
	bne	.L652
	.loc 5 2526 26
	ldr	r3, .L663+4
	ldr	r3, [r3]
	.loc 5 2526 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2527 26
	ldr	r3, .L663+8
	ldr	r3, [r3]
	.loc 5 2527 69
	lsrs	r3, r3, #4
	.loc 5 2527 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L653
.L652:
	.loc 5 2531 24
	ldr	r3, .L663
	.loc 5 2531 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 2532 24
	ldr	r3, .L663+12
	.loc 5 2532 22
	ldr	r3, [r3]
	str	r3, [sp]
.L653:
	.loc 5 2537 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L654
	.loc 5 2539 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L655
	adr	r2, .L657
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L657:
	.word	.L661+1
	.word	.L660+1
	.word	.L659+1
	.word	.L658+1
	.word	.L656+1
	.p2align 1
.L661:
	.loc 5 2542 32
	movs	r3, #0
	b	.L662
.L660:
	.loc 5 2544 32
	movs	r3, #1
	b	.L662
.L659:
	.loc 5 2546 32
	movs	r3, #1
	b	.L662
.L658:
	.loc 5 2548 32
	movs	r3, #1
	b	.L662
.L656:
	.loc 5 2550 32
	movs	r3, #1
	b	.L662
.L655:
	.loc 5 2552 32
	movs	r3, #1
	b	.L662
.L654:
	.loc 5 2556 16
	movs	r3, #0
.L662:
	.loc 5 2558 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L664:
	.align	2
.L663:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE263:
	.size	nrf52_errata_51, .-nrf52_errata_51
	.section	.text.nrf52_errata_54,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_54, %function
nrf52_errata_54:
.LFB264:
	.loc 5 2574 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2583 17
	ldr	r3, .L677
	ldr	r3, [r3]
	.loc 5 2583 16
	cmp	r3, #-1
	bne	.L666
	.loc 5 2585 26
	ldr	r3, .L677+4
	ldr	r3, [r3]
	.loc 5 2585 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2586 26
	ldr	r3, .L677+8
	ldr	r3, [r3]
	.loc 5 2586 69
	lsrs	r3, r3, #4
	.loc 5 2586 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L667
.L666:
	.loc 5 2590 24
	ldr	r3, .L677
	.loc 5 2590 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 2591 24
	ldr	r3, .L677+12
	.loc 5 2591 22
	ldr	r3, [r3]
	str	r3, [sp]
.L667:
	.loc 5 2599 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L668
	.loc 5 2601 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L669
	adr	r2, .L671
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L671:
	.word	.L675+1
	.word	.L674+1
	.word	.L673+1
	.word	.L672+1
	.word	.L670+1
	.p2align 1
.L675:
	.loc 5 2604 32
	movs	r3, #0
	b	.L676
.L674:
	.loc 5 2606 32
	movs	r3, #1
	b	.L676
.L673:
	.loc 5 2608 32
	movs	r3, #1
	b	.L676
.L672:
	.loc 5 2610 32
	movs	r3, #1
	b	.L676
.L670:
	.loc 5 2612 32
	movs	r3, #1
	b	.L676
.L669:
	.loc 5 2614 32
	movs	r3, #1
	b	.L676
.L668:
	.loc 5 2640 16
	movs	r3, #0
.L676:
	.loc 5 2642 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L678:
	.align	2
.L677:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE264:
	.size	nrf52_errata_54, .-nrf52_errata_54
	.section	.text.nrf52_errata_55,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_55, %function
nrf52_errata_55:
.LFB265:
	.loc 5 2660 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2669 17
	ldr	r3, .L691
	ldr	r3, [r3]
	.loc 5 2669 16
	cmp	r3, #-1
	bne	.L680
	.loc 5 2671 26
	ldr	r3, .L691+4
	ldr	r3, [r3]
	.loc 5 2671 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2672 26
	ldr	r3, .L691+8
	ldr	r3, [r3]
	.loc 5 2672 69
	lsrs	r3, r3, #4
	.loc 5 2672 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L681
.L680:
	.loc 5 2676 24
	ldr	r3, .L691
	.loc 5 2676 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 2677 24
	ldr	r3, .L691+12
	.loc 5 2677 22
	ldr	r3, [r3]
	str	r3, [sp]
.L681:
	.loc 5 2687 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L682
	.loc 5 2689 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L683
	adr	r2, .L685
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L685:
	.word	.L689+1
	.word	.L688+1
	.word	.L687+1
	.word	.L686+1
	.word	.L684+1
	.p2align 1
.L689:
	.loc 5 2692 32
	movs	r3, #0
	b	.L690
.L688:
	.loc 5 2694 32
	movs	r3, #1
	b	.L690
.L687:
	.loc 5 2696 32
	movs	r3, #1
	b	.L690
.L686:
	.loc 5 2698 32
	movs	r3, #1
	b	.L690
.L684:
	.loc 5 2700 32
	movs	r3, #1
	b	.L690
.L683:
	.loc 5 2702 32
	movs	r3, #1
	b	.L690
.L682:
	.loc 5 2762 16
	movs	r3, #0
.L690:
	.loc 5 2764 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L692:
	.align	2
.L691:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE265:
	.size	nrf52_errata_55, .-nrf52_errata_55
	.section	.text.nrf52_errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_57, %function
nrf52_errata_57:
.LFB266:
	.loc 5 2779 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2785 31
	ldr	r3, .L703
	ldr	r3, [r3]
	.loc 5 2785 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2786 31
	ldr	r3, .L703+4
	ldr	r3, [r3]
	.loc 5 2786 74
	lsrs	r3, r3, #4
	.loc 5 2786 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2790 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L694
	.loc 5 2792 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L695
	adr	r2, .L697
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L697:
	.word	.L701+1
	.word	.L700+1
	.word	.L699+1
	.word	.L698+1
	.word	.L696+1
	.p2align 1
.L701:
	.loc 5 2795 32
	movs	r3, #1
	b	.L702
.L700:
	.loc 5 2797 32
	movs	r3, #0
	b	.L702
.L699:
	.loc 5 2799 32
	movs	r3, #0
	b	.L702
.L698:
	.loc 5 2801 32
	movs	r3, #0
	b	.L702
.L696:
	.loc 5 2803 32
	movs	r3, #0
	b	.L702
.L695:
	.loc 5 2805 32
	movs	r3, #0
	b	.L702
.L694:
	.loc 5 2809 16
	movs	r3, #0
.L702:
	.loc 5 2811 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L704:
	.align	2
.L703:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE266:
	.size	nrf52_errata_57, .-nrf52_errata_57
	.section	.text.nrf52_errata_58,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_58, %function
nrf52_errata_58:
.LFB267:
	.loc 5 2827 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2836 17
	ldr	r3, .L717
	ldr	r3, [r3]
	.loc 5 2836 16
	cmp	r3, #-1
	bne	.L706
	.loc 5 2838 26
	ldr	r3, .L717+4
	ldr	r3, [r3]
	.loc 5 2838 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2839 26
	ldr	r3, .L717+8
	ldr	r3, [r3]
	.loc 5 2839 69
	lsrs	r3, r3, #4
	.loc 5 2839 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L707
.L706:
	.loc 5 2843 24
	ldr	r3, .L717
	.loc 5 2843 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 2844 24
	ldr	r3, .L717+12
	.loc 5 2844 22
	ldr	r3, [r3]
	str	r3, [sp]
.L707:
	.loc 5 2852 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L708
	.loc 5 2854 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L709
	adr	r2, .L711
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L711:
	.word	.L715+1
	.word	.L714+1
	.word	.L713+1
	.word	.L712+1
	.word	.L710+1
	.p2align 1
.L715:
	.loc 5 2857 32
	movs	r3, #1
	b	.L716
.L714:
	.loc 5 2859 32
	movs	r3, #1
	b	.L716
.L713:
	.loc 5 2861 32
	movs	r3, #1
	b	.L716
.L712:
	.loc 5 2863 32
	movs	r3, #1
	b	.L716
.L710:
	.loc 5 2865 32
	movs	r3, #1
	b	.L716
.L709:
	.loc 5 2867 32
	movs	r3, #1
	b	.L716
.L708:
	.loc 5 2893 16
	movs	r3, #0
.L716:
	.loc 5 2895 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L718:
	.align	2
.L717:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE267:
	.size	nrf52_errata_58, .-nrf52_errata_58
	.section	.text.nrf52_errata_62,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_62, %function
nrf52_errata_62:
.LFB268:
	.loc 5 2910 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2916 31
	ldr	r3, .L729
	ldr	r3, [r3]
	.loc 5 2916 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2917 31
	ldr	r3, .L729+4
	ldr	r3, [r3]
	.loc 5 2917 74
	lsrs	r3, r3, #4
	.loc 5 2917 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2921 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L720
	.loc 5 2923 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L721
	adr	r2, .L723
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L723:
	.word	.L727+1
	.word	.L726+1
	.word	.L725+1
	.word	.L724+1
	.word	.L722+1
	.p2align 1
.L727:
	.loc 5 2926 32
	movs	r3, #1
	b	.L728
.L726:
	.loc 5 2928 32
	movs	r3, #0
	b	.L728
.L725:
	.loc 5 2930 32
	movs	r3, #0
	b	.L728
.L724:
	.loc 5 2932 32
	movs	r3, #0
	b	.L728
.L722:
	.loc 5 2934 32
	movs	r3, #0
	b	.L728
.L721:
	.loc 5 2936 32
	movs	r3, #0
	b	.L728
.L720:
	.loc 5 2940 16
	movs	r3, #0
.L728:
	.loc 5 2942 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L730:
	.align	2
.L729:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE268:
	.size	nrf52_errata_62, .-nrf52_errata_62
	.section	.text.nrf52_errata_63,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_63, %function
nrf52_errata_63:
.LFB269:
	.loc 5 2957 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 2963 31
	ldr	r3, .L741
	ldr	r3, [r3]
	.loc 5 2963 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 2964 31
	ldr	r3, .L741+4
	ldr	r3, [r3]
	.loc 5 2964 74
	lsrs	r3, r3, #4
	.loc 5 2964 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 2968 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L732
	.loc 5 2970 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L733
	adr	r2, .L735
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L735:
	.word	.L739+1
	.word	.L738+1
	.word	.L737+1
	.word	.L736+1
	.word	.L734+1
	.p2align 1
.L739:
	.loc 5 2973 32
	movs	r3, #1
	b	.L740
.L738:
	.loc 5 2975 32
	movs	r3, #1
	b	.L740
.L737:
	.loc 5 2977 32
	movs	r3, #0
	b	.L740
.L736:
	.loc 5 2979 32
	movs	r3, #0
	b	.L740
.L734:
	.loc 5 2981 32
	movs	r3, #0
	b	.L740
.L733:
	.loc 5 2983 32
	movs	r3, #0
	b	.L740
.L732:
	.loc 5 2987 16
	movs	r3, #0
.L740:
	.loc 5 2989 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L742:
	.align	2
.L741:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE269:
	.size	nrf52_errata_63, .-nrf52_errata_63
	.section	.text.nrf52_errata_64,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_64, %function
nrf52_errata_64:
.LFB270:
	.loc 5 3004 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3013 17
	ldr	r3, .L755
	ldr	r3, [r3]
	.loc 5 3013 16
	cmp	r3, #-1
	bne	.L744
	.loc 5 3015 26
	ldr	r3, .L755+4
	ldr	r3, [r3]
	.loc 5 3015 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3016 26
	ldr	r3, .L755+8
	ldr	r3, [r3]
	.loc 5 3016 69
	lsrs	r3, r3, #4
	.loc 5 3016 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L745
.L744:
	.loc 5 3020 24
	ldr	r3, .L755
	.loc 5 3020 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3021 24
	ldr	r3, .L755+12
	.loc 5 3021 22
	ldr	r3, [r3]
	str	r3, [sp]
.L745:
	.loc 5 3026 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L746
	.loc 5 3028 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L747
	adr	r2, .L749
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L749:
	.word	.L753+1
	.word	.L752+1
	.word	.L751+1
	.word	.L750+1
	.word	.L748+1
	.p2align 1
.L753:
	.loc 5 3031 32
	movs	r3, #1
	b	.L754
.L752:
	.loc 5 3033 32
	movs	r3, #1
	b	.L754
.L751:
	.loc 5 3035 32
	movs	r3, #1
	b	.L754
.L750:
	.loc 5 3037 32
	movs	r3, #1
	b	.L754
.L748:
	.loc 5 3039 32
	movs	r3, #1
	b	.L754
.L747:
	.loc 5 3041 32
	movs	r3, #1
	b	.L754
.L746:
	.loc 5 3045 16
	movs	r3, #0
.L754:
	.loc 5 3047 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L756:
	.align	2
.L755:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE270:
	.size	nrf52_errata_64, .-nrf52_errata_64
	.section	.text.nrf52_errata_65,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_65, %function
nrf52_errata_65:
.LFB271:
	.loc 5 3062 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3068 31
	ldr	r3, .L767
	ldr	r3, [r3]
	.loc 5 3068 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3069 31
	ldr	r3, .L767+4
	ldr	r3, [r3]
	.loc 5 3069 74
	lsrs	r3, r3, #4
	.loc 5 3069 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 3073 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L758
	.loc 5 3075 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L759
	adr	r2, .L761
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L761:
	.word	.L765+1
	.word	.L764+1
	.word	.L763+1
	.word	.L762+1
	.word	.L760+1
	.p2align 1
.L765:
	.loc 5 3078 32
	movs	r3, #1
	b	.L766
.L764:
	.loc 5 3080 32
	movs	r3, #0
	b	.L766
.L763:
	.loc 5 3082 32
	movs	r3, #0
	b	.L766
.L762:
	.loc 5 3084 32
	movs	r3, #0
	b	.L766
.L760:
	.loc 5 3086 32
	movs	r3, #0
	b	.L766
.L759:
	.loc 5 3088 32
	movs	r3, #0
	b	.L766
.L758:
	.loc 5 3092 16
	movs	r3, #0
.L766:
	.loc 5 3094 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L768:
	.align	2
.L767:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE271:
	.size	nrf52_errata_65, .-nrf52_errata_65
	.section	.text.nrf52_errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_66, %function
nrf52_errata_66:
.LFB272:
	.loc 5 3115 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3124 17
	ldr	r3, .L781
	ldr	r3, [r3]
	.loc 5 3124 16
	cmp	r3, #-1
	bne	.L770
	.loc 5 3126 26
	ldr	r3, .L781+4
	ldr	r3, [r3]
	.loc 5 3126 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3127 26
	ldr	r3, .L781+8
	ldr	r3, [r3]
	.loc 5 3127 69
	lsrs	r3, r3, #4
	.loc 5 3127 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L771
.L770:
	.loc 5 3131 24
	ldr	r3, .L781
	.loc 5 3131 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3132 24
	ldr	r3, .L781+12
	.loc 5 3132 22
	ldr	r3, [r3]
	str	r3, [sp]
.L771:
	.loc 5 3145 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L772
	.loc 5 3147 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L773
	adr	r2, .L775
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L775:
	.word	.L779+1
	.word	.L778+1
	.word	.L777+1
	.word	.L776+1
	.word	.L774+1
	.p2align 1
.L779:
	.loc 5 3150 32
	movs	r3, #0
	b	.L780
.L778:
	.loc 5 3152 32
	movs	r3, #0
	b	.L780
.L777:
	.loc 5 3154 32
	movs	r3, #1
	b	.L780
.L776:
	.loc 5 3156 32
	movs	r3, #1
	b	.L780
.L774:
	.loc 5 3158 32
	movs	r3, #1
	b	.L780
.L773:
	.loc 5 3160 32
	movs	r3, #1
	b	.L780
.L772:
	.loc 5 3258 16
	movs	r3, #0
.L780:
	.loc 5 3260 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L782:
	.align	2
.L781:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE272:
	.size	nrf52_errata_66, .-nrf52_errata_66
	.section	.text.nrf52_errata_67,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_67, %function
nrf52_errata_67:
.LFB273:
	.loc 5 3275 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3284 17
	ldr	r3, .L795
	ldr	r3, [r3]
	.loc 5 3284 16
	cmp	r3, #-1
	bne	.L784
	.loc 5 3286 26
	ldr	r3, .L795+4
	ldr	r3, [r3]
	.loc 5 3286 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3287 26
	ldr	r3, .L795+8
	ldr	r3, [r3]
	.loc 5 3287 69
	lsrs	r3, r3, #4
	.loc 5 3287 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L785
.L784:
	.loc 5 3291 24
	ldr	r3, .L795
	.loc 5 3291 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3292 24
	ldr	r3, .L795+12
	.loc 5 3292 22
	ldr	r3, [r3]
	str	r3, [sp]
.L785:
	.loc 5 3297 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L786
	.loc 5 3299 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L787
	adr	r2, .L789
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L789:
	.word	.L793+1
	.word	.L792+1
	.word	.L791+1
	.word	.L790+1
	.word	.L788+1
	.p2align 1
.L793:
	.loc 5 3302 32
	movs	r3, #1
	b	.L794
.L792:
	.loc 5 3304 32
	movs	r3, #1
	b	.L794
.L791:
	.loc 5 3306 32
	movs	r3, #1
	b	.L794
.L790:
	.loc 5 3308 32
	movs	r3, #1
	b	.L794
.L788:
	.loc 5 3310 32
	movs	r3, #1
	b	.L794
.L787:
	.loc 5 3312 32
	movs	r3, #1
	b	.L794
.L786:
	.loc 5 3316 16
	movs	r3, #0
.L794:
	.loc 5 3318 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L796:
	.align	2
.L795:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE273:
	.size	nrf52_errata_67, .-nrf52_errata_67
	.section	.text.nrf52_errata_68,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_68, %function
nrf52_errata_68:
.LFB274:
	.loc 5 3337 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3346 17
	ldr	r3, .L809
	ldr	r3, [r3]
	.loc 5 3346 16
	cmp	r3, #-1
	bne	.L798
	.loc 5 3348 26
	ldr	r3, .L809+4
	ldr	r3, [r3]
	.loc 5 3348 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3349 26
	ldr	r3, .L809+8
	ldr	r3, [r3]
	.loc 5 3349 69
	lsrs	r3, r3, #4
	.loc 5 3349 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L799
.L798:
	.loc 5 3353 24
	ldr	r3, .L809
	.loc 5 3353 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3354 24
	ldr	r3, .L809+12
	.loc 5 3354 22
	ldr	r3, [r3]
	str	r3, [sp]
.L799:
	.loc 5 3365 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L800
	.loc 5 3367 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L801
	adr	r2, .L803
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L803:
	.word	.L807+1
	.word	.L806+1
	.word	.L805+1
	.word	.L804+1
	.word	.L802+1
	.p2align 1
.L807:
	.loc 5 3370 32
	movs	r3, #1
	b	.L808
.L806:
	.loc 5 3372 32
	movs	r3, #1
	b	.L808
.L805:
	.loc 5 3374 32
	movs	r3, #1
	b	.L808
.L804:
	.loc 5 3376 32
	movs	r3, #1
	b	.L808
.L802:
	.loc 5 3378 32
	movs	r3, #1
	b	.L808
.L801:
	.loc 5 3380 32
	movs	r3, #1
	b	.L808
.L800:
	.loc 5 3444 16
	movs	r3, #0
.L808:
	.loc 5 3446 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L810:
	.align	2
.L809:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE274:
	.size	nrf52_errata_68, .-nrf52_errata_68
	.section	.text.nrf52_errata_70,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_70, %function
nrf52_errata_70:
.LFB275:
	.loc 5 3461 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3467 31
	ldr	r3, .L821
	ldr	r3, [r3]
	.loc 5 3467 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3468 31
	ldr	r3, .L821+4
	ldr	r3, [r3]
	.loc 5 3468 74
	lsrs	r3, r3, #4
	.loc 5 3468 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 3472 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L812
	.loc 5 3474 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L813
	adr	r2, .L815
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L815:
	.word	.L819+1
	.word	.L818+1
	.word	.L817+1
	.word	.L816+1
	.word	.L814+1
	.p2align 1
.L819:
	.loc 5 3477 32
	movs	r3, #1
	b	.L820
.L818:
	.loc 5 3479 32
	movs	r3, #1
	b	.L820
.L817:
	.loc 5 3481 32
	movs	r3, #0
	b	.L820
.L816:
	.loc 5 3483 32
	movs	r3, #0
	b	.L820
.L814:
	.loc 5 3485 32
	movs	r3, #0
	b	.L820
.L813:
	.loc 5 3487 32
	movs	r3, #0
	b	.L820
.L812:
	.loc 5 3491 16
	movs	r3, #0
.L820:
	.loc 5 3493 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L822:
	.align	2
.L821:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE275:
	.size	nrf52_errata_70, .-nrf52_errata_70
	.section	.text.nrf52_errata_71,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_71, %function
nrf52_errata_71:
.LFB276:
	.loc 5 3508 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3514 31
	ldr	r3, .L833
	ldr	r3, [r3]
	.loc 5 3514 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3515 31
	ldr	r3, .L833+4
	ldr	r3, [r3]
	.loc 5 3515 74
	lsrs	r3, r3, #4
	.loc 5 3515 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 3519 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L824
	.loc 5 3521 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L825
	adr	r2, .L827
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L827:
	.word	.L831+1
	.word	.L830+1
	.word	.L829+1
	.word	.L828+1
	.word	.L826+1
	.p2align 1
.L831:
	.loc 5 3524 32
	movs	r3, #1
	b	.L832
.L830:
	.loc 5 3526 32
	movs	r3, #1
	b	.L832
.L829:
	.loc 5 3528 32
	movs	r3, #0
	b	.L832
.L828:
	.loc 5 3530 32
	movs	r3, #0
	b	.L832
.L826:
	.loc 5 3532 32
	movs	r3, #0
	b	.L832
.L825:
	.loc 5 3534 32
	movs	r3, #0
	b	.L832
.L824:
	.loc 5 3538 16
	movs	r3, #0
.L832:
	.loc 5 3540 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L834:
	.align	2
.L833:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE276:
	.size	nrf52_errata_71, .-nrf52_errata_71
	.section	.text.nrf52_errata_72,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_72, %function
nrf52_errata_72:
.LFB277:
	.loc 5 3555 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3564 17
	ldr	r3, .L847
	ldr	r3, [r3]
	.loc 5 3564 16
	cmp	r3, #-1
	bne	.L836
	.loc 5 3566 26
	ldr	r3, .L847+4
	ldr	r3, [r3]
	.loc 5 3566 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3567 26
	ldr	r3, .L847+8
	ldr	r3, [r3]
	.loc 5 3567 69
	lsrs	r3, r3, #4
	.loc 5 3567 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L837
.L836:
	.loc 5 3571 24
	ldr	r3, .L847
	.loc 5 3571 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3572 24
	ldr	r3, .L847+12
	.loc 5 3572 22
	ldr	r3, [r3]
	str	r3, [sp]
.L837:
	.loc 5 3577 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L838
	.loc 5 3579 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L839
	adr	r2, .L841
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L841:
	.word	.L845+1
	.word	.L844+1
	.word	.L843+1
	.word	.L842+1
	.word	.L840+1
	.p2align 1
.L845:
	.loc 5 3582 32
	movs	r3, #1
	b	.L846
.L844:
	.loc 5 3584 32
	movs	r3, #1
	b	.L846
.L843:
	.loc 5 3586 32
	movs	r3, #1
	b	.L846
.L842:
	.loc 5 3588 32
	movs	r3, #1
	b	.L846
.L840:
	.loc 5 3590 32
	movs	r3, #1
	b	.L846
.L839:
	.loc 5 3592 32
	movs	r3, #1
	b	.L846
.L838:
	.loc 5 3596 16
	movs	r3, #0
.L846:
	.loc 5 3598 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L848:
	.align	2
.L847:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE277:
	.size	nrf52_errata_72, .-nrf52_errata_72
	.section	.text.nrf52_errata_73,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_73, %function
nrf52_errata_73:
.LFB278:
	.loc 5 3613 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3619 31
	ldr	r3, .L859
	ldr	r3, [r3]
	.loc 5 3619 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3620 31
	ldr	r3, .L859+4
	ldr	r3, [r3]
	.loc 5 3620 74
	lsrs	r3, r3, #4
	.loc 5 3620 22
	and	r3, r3, #15
	str	r3, [sp]
	.loc 5 3624 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L850
	.loc 5 3626 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L851
	adr	r2, .L853
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L853:
	.word	.L857+1
	.word	.L856+1
	.word	.L855+1
	.word	.L854+1
	.word	.L852+1
	.p2align 1
.L857:
	.loc 5 3629 32
	movs	r3, #1
	b	.L858
.L856:
	.loc 5 3631 32
	movs	r3, #1
	b	.L858
.L855:
	.loc 5 3633 32
	movs	r3, #0
	b	.L858
.L854:
	.loc 5 3635 32
	movs	r3, #0
	b	.L858
.L852:
	.loc 5 3637 32
	movs	r3, #0
	b	.L858
.L851:
	.loc 5 3639 32
	movs	r3, #0
	b	.L858
.L850:
	.loc 5 3643 16
	movs	r3, #0
.L858:
	.loc 5 3645 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L860:
	.align	2
.L859:
	.word	-268431392
	.word	-268431384
	.cfi_endproc
.LFE278:
	.size	nrf52_errata_73, .-nrf52_errata_73
	.section	.text.nrf52_errata_74,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_74, %function
nrf52_errata_74:
.LFB279:
	.loc 5 3660 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3669 17
	ldr	r3, .L873
	ldr	r3, [r3]
	.loc 5 3669 16
	cmp	r3, #-1
	bne	.L862
	.loc 5 3671 26
	ldr	r3, .L873+4
	ldr	r3, [r3]
	.loc 5 3671 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3672 26
	ldr	r3, .L873+8
	ldr	r3, [r3]
	.loc 5 3672 69
	lsrs	r3, r3, #4
	.loc 5 3672 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L863
.L862:
	.loc 5 3676 24
	ldr	r3, .L873
	.loc 5 3676 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3677 24
	ldr	r3, .L873+12
	.loc 5 3677 22
	ldr	r3, [r3]
	str	r3, [sp]
.L863:
	.loc 5 3682 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L864
	.loc 5 3684 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L865
	adr	r2, .L867
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L867:
	.word	.L871+1
	.word	.L870+1
	.word	.L869+1
	.word	.L868+1
	.word	.L866+1
	.p2align 1
.L871:
	.loc 5 3687 32
	movs	r3, #1
	b	.L872
.L870:
	.loc 5 3689 32
	movs	r3, #1
	b	.L872
.L869:
	.loc 5 3691 32
	movs	r3, #1
	b	.L872
.L868:
	.loc 5 3693 32
	movs	r3, #1
	b	.L872
.L866:
	.loc 5 3695 32
	movs	r3, #1
	b	.L872
.L865:
	.loc 5 3697 32
	movs	r3, #1
	b	.L872
.L864:
	.loc 5 3701 16
	movs	r3, #0
.L872:
	.loc 5 3703 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L874:
	.align	2
.L873:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE279:
	.size	nrf52_errata_74, .-nrf52_errata_74
	.section	.text.nrf52_errata_75,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_75, %function
nrf52_errata_75:
.LFB280:
	.loc 5 3718 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3727 17
	ldr	r3, .L887
	ldr	r3, [r3]
	.loc 5 3727 16
	cmp	r3, #-1
	bne	.L876
	.loc 5 3729 26
	ldr	r3, .L887+4
	ldr	r3, [r3]
	.loc 5 3729 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3730 26
	ldr	r3, .L887+8
	ldr	r3, [r3]
	.loc 5 3730 69
	lsrs	r3, r3, #4
	.loc 5 3730 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L877
.L876:
	.loc 5 3734 24
	ldr	r3, .L887
	.loc 5 3734 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3735 24
	ldr	r3, .L887+12
	.loc 5 3735 22
	ldr	r3, [r3]
	str	r3, [sp]
.L877:
	.loc 5 3740 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L878
	.loc 5 3742 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L879
	adr	r2, .L881
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L881:
	.word	.L885+1
	.word	.L884+1
	.word	.L883+1
	.word	.L882+1
	.word	.L880+1
	.p2align 1
.L885:
	.loc 5 3745 32
	movs	r3, #0
	b	.L886
.L884:
	.loc 5 3747 32
	movs	r3, #1
	b	.L886
.L883:
	.loc 5 3749 32
	movs	r3, #1
	b	.L886
.L882:
	.loc 5 3751 32
	movs	r3, #1
	b	.L886
.L880:
	.loc 5 3753 32
	movs	r3, #1
	b	.L886
.L879:
	.loc 5 3755 32
	movs	r3, #1
	b	.L886
.L878:
	.loc 5 3759 16
	movs	r3, #0
.L886:
	.loc 5 3761 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L888:
	.align	2
.L887:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE280:
	.size	nrf52_errata_75, .-nrf52_errata_75
	.section	.text.nrf52_errata_76,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_76, %function
nrf52_errata_76:
.LFB281:
	.loc 5 3776 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3785 17
	ldr	r3, .L901
	ldr	r3, [r3]
	.loc 5 3785 16
	cmp	r3, #-1
	bne	.L890
	.loc 5 3787 26
	ldr	r3, .L901+4
	ldr	r3, [r3]
	.loc 5 3787 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3788 26
	ldr	r3, .L901+8
	ldr	r3, [r3]
	.loc 5 3788 69
	lsrs	r3, r3, #4
	.loc 5 3788 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L891
.L890:
	.loc 5 3792 24
	ldr	r3, .L901
	.loc 5 3792 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3793 24
	ldr	r3, .L901+12
	.loc 5 3793 22
	ldr	r3, [r3]
	str	r3, [sp]
.L891:
	.loc 5 3798 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L892
	.loc 5 3800 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L893
	adr	r2, .L895
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L895:
	.word	.L899+1
	.word	.L898+1
	.word	.L897+1
	.word	.L896+1
	.word	.L894+1
	.p2align 1
.L899:
	.loc 5 3803 32
	movs	r3, #0
	b	.L900
.L898:
	.loc 5 3805 32
	movs	r3, #1
	b	.L900
.L897:
	.loc 5 3807 32
	movs	r3, #1
	b	.L900
.L896:
	.loc 5 3809 32
	movs	r3, #1
	b	.L900
.L894:
	.loc 5 3811 32
	movs	r3, #1
	b	.L900
.L893:
	.loc 5 3813 32
	movs	r3, #1
	b	.L900
.L892:
	.loc 5 3817 16
	movs	r3, #0
.L900:
	.loc 5 3819 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L902:
	.align	2
.L901:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE281:
	.size	nrf52_errata_76, .-nrf52_errata_76
	.section	.text.nrf52_errata_77,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_77, %function
nrf52_errata_77:
.LFB282:
	.loc 5 3837 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3846 17
	ldr	r3, .L915
	ldr	r3, [r3]
	.loc 5 3846 16
	cmp	r3, #-1
	bne	.L904
	.loc 5 3848 26
	ldr	r3, .L915+4
	ldr	r3, [r3]
	.loc 5 3848 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3849 26
	ldr	r3, .L915+8
	ldr	r3, [r3]
	.loc 5 3849 69
	lsrs	r3, r3, #4
	.loc 5 3849 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L905
.L904:
	.loc 5 3853 24
	ldr	r3, .L915
	.loc 5 3853 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3854 24
	ldr	r3, .L915+12
	.loc 5 3854 22
	ldr	r3, [r3]
	str	r3, [sp]
.L905:
	.loc 5 3864 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L906
	.loc 5 3866 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L907
	adr	r2, .L909
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L909:
	.word	.L913+1
	.word	.L912+1
	.word	.L911+1
	.word	.L910+1
	.word	.L908+1
	.p2align 1
.L913:
	.loc 5 3869 32
	movs	r3, #1
	b	.L914
.L912:
	.loc 5 3871 32
	movs	r3, #1
	b	.L914
.L911:
	.loc 5 3873 32
	movs	r3, #1
	b	.L914
.L910:
	.loc 5 3875 32
	movs	r3, #1
	b	.L914
.L908:
	.loc 5 3877 32
	movs	r3, #1
	b	.L914
.L907:
	.loc 5 3879 32
	movs	r3, #1
	b	.L914
.L906:
	.loc 5 3921 16
	movs	r3, #0
.L914:
	.loc 5 3923 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L916:
	.align	2
.L915:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE282:
	.size	nrf52_errata_77, .-nrf52_errata_77
	.section	.text.nrf52_errata_78,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_78, %function
nrf52_errata_78:
.LFB283:
	.loc 5 3944 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 3953 17
	ldr	r3, .L929
	ldr	r3, [r3]
	.loc 5 3953 16
	cmp	r3, #-1
	bne	.L918
	.loc 5 3955 26
	ldr	r3, .L929+4
	ldr	r3, [r3]
	.loc 5 3955 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 3956 26
	ldr	r3, .L929+8
	ldr	r3, [r3]
	.loc 5 3956 69
	lsrs	r3, r3, #4
	.loc 5 3956 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L919
.L918:
	.loc 5 3960 24
	ldr	r3, .L929
	.loc 5 3960 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 3961 24
	ldr	r3, .L929+12
	.loc 5 3961 22
	ldr	r3, [r3]
	str	r3, [sp]
.L919:
	.loc 5 3974 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L920
	.loc 5 3976 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L921
	adr	r2, .L923
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L923:
	.word	.L927+1
	.word	.L926+1
	.word	.L925+1
	.word	.L924+1
	.word	.L922+1
	.p2align 1
.L927:
	.loc 5 3979 32
	movs	r3, #1
	b	.L928
.L926:
	.loc 5 3981 32
	movs	r3, #1
	b	.L928
.L925:
	.loc 5 3983 32
	movs	r3, #1
	b	.L928
.L924:
	.loc 5 3985 32
	movs	r3, #1
	b	.L928
.L922:
	.loc 5 3987 32
	movs	r3, #1
	b	.L928
.L921:
	.loc 5 3989 32
	movs	r3, #1
	b	.L928
.L920:
	.loc 5 4087 16
	movs	r3, #0
.L928:
	.loc 5 4089 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L930:
	.align	2
.L929:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE283:
	.size	nrf52_errata_78, .-nrf52_errata_78
	.section	.text.nrf52_errata_79,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_79, %function
nrf52_errata_79:
.LFB284:
	.loc 5 4104 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4113 17
	ldr	r3, .L943
	ldr	r3, [r3]
	.loc 5 4113 16
	cmp	r3, #-1
	bne	.L932
	.loc 5 4115 26
	ldr	r3, .L943+4
	ldr	r3, [r3]
	.loc 5 4115 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4116 26
	ldr	r3, .L943+8
	ldr	r3, [r3]
	.loc 5 4116 69
	lsrs	r3, r3, #4
	.loc 5 4116 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L933
.L932:
	.loc 5 4120 24
	ldr	r3, .L943
	.loc 5 4120 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4121 24
	ldr	r3, .L943+12
	.loc 5 4121 22
	ldr	r3, [r3]
	str	r3, [sp]
.L933:
	.loc 5 4126 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L934
	.loc 5 4128 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L935
	adr	r2, .L937
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L937:
	.word	.L941+1
	.word	.L940+1
	.word	.L939+1
	.word	.L938+1
	.word	.L936+1
	.p2align 1
.L941:
	.loc 5 4131 32
	movs	r3, #0
	b	.L942
.L940:
	.loc 5 4133 32
	movs	r3, #1
	b	.L942
.L939:
	.loc 5 4135 32
	movs	r3, #1
	b	.L942
.L938:
	.loc 5 4137 32
	movs	r3, #1
	b	.L942
.L936:
	.loc 5 4139 32
	movs	r3, #1
	b	.L942
.L935:
	.loc 5 4141 32
	movs	r3, #1
	b	.L942
.L934:
	.loc 5 4145 16
	movs	r3, #0
.L942:
	.loc 5 4147 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L944:
	.align	2
.L943:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE284:
	.size	nrf52_errata_79, .-nrf52_errata_79
	.section	.text.nrf52_errata_81,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_81, %function
nrf52_errata_81:
.LFB285:
	.loc 5 4166 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4175 17
	ldr	r3, .L957
	ldr	r3, [r3]
	.loc 5 4175 16
	cmp	r3, #-1
	bne	.L946
	.loc 5 4177 26
	ldr	r3, .L957+4
	ldr	r3, [r3]
	.loc 5 4177 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4178 26
	ldr	r3, .L957+8
	ldr	r3, [r3]
	.loc 5 4178 69
	lsrs	r3, r3, #4
	.loc 5 4178 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L947
.L946:
	.loc 5 4182 24
	ldr	r3, .L957
	.loc 5 4182 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4183 24
	ldr	r3, .L957+12
	.loc 5 4183 22
	ldr	r3, [r3]
	str	r3, [sp]
.L947:
	.loc 5 4194 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L948
	.loc 5 4196 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L949
	adr	r2, .L951
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L951:
	.word	.L955+1
	.word	.L954+1
	.word	.L953+1
	.word	.L952+1
	.word	.L950+1
	.p2align 1
.L955:
	.loc 5 4199 32
	movs	r3, #0
	b	.L956
.L954:
	.loc 5 4201 32
	movs	r3, #1
	b	.L956
.L953:
	.loc 5 4203 32
	movs	r3, #1
	b	.L956
.L952:
	.loc 5 4205 32
	movs	r3, #1
	b	.L956
.L950:
	.loc 5 4207 32
	movs	r3, #1
	b	.L956
.L949:
	.loc 5 4209 32
	movs	r3, #1
	b	.L956
.L948:
	.loc 5 4273 16
	movs	r3, #0
.L956:
	.loc 5 4275 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L958:
	.align	2
.L957:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE285:
	.size	nrf52_errata_81, .-nrf52_errata_81
	.section	.text.nrf52_errata_83,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_83, %function
nrf52_errata_83:
.LFB286:
	.loc 5 4294 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4303 17
	ldr	r3, .L971
	ldr	r3, [r3]
	.loc 5 4303 16
	cmp	r3, #-1
	bne	.L960
	.loc 5 4305 26
	ldr	r3, .L971+4
	ldr	r3, [r3]
	.loc 5 4305 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4306 26
	ldr	r3, .L971+8
	ldr	r3, [r3]
	.loc 5 4306 69
	lsrs	r3, r3, #4
	.loc 5 4306 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L961
.L960:
	.loc 5 4310 24
	ldr	r3, .L971
	.loc 5 4310 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4311 24
	ldr	r3, .L971+12
	.loc 5 4311 22
	ldr	r3, [r3]
	str	r3, [sp]
.L961:
	.loc 5 4322 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L962
	.loc 5 4324 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L963
	adr	r2, .L965
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L965:
	.word	.L969+1
	.word	.L968+1
	.word	.L967+1
	.word	.L966+1
	.word	.L964+1
	.p2align 1
.L969:
	.loc 5 4327 32
	movs	r3, #0
	b	.L970
.L968:
	.loc 5 4329 32
	movs	r3, #1
	b	.L970
.L967:
	.loc 5 4331 32
	movs	r3, #1
	b	.L970
.L966:
	.loc 5 4333 32
	movs	r3, #1
	b	.L970
.L964:
	.loc 5 4335 32
	movs	r3, #1
	b	.L970
.L963:
	.loc 5 4337 32
	movs	r3, #1
	b	.L970
.L962:
	.loc 5 4401 16
	movs	r3, #0
.L970:
	.loc 5 4403 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L972:
	.align	2
.L971:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE286:
	.size	nrf52_errata_83, .-nrf52_errata_83
	.section	.text.nrf52_errata_84,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_84, %function
nrf52_errata_84:
.LFB287:
	.loc 5 4418 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4427 17
	ldr	r3, .L985
	ldr	r3, [r3]
	.loc 5 4427 16
	cmp	r3, #-1
	bne	.L974
	.loc 5 4429 26
	ldr	r3, .L985+4
	ldr	r3, [r3]
	.loc 5 4429 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4430 26
	ldr	r3, .L985+8
	ldr	r3, [r3]
	.loc 5 4430 69
	lsrs	r3, r3, #4
	.loc 5 4430 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L975
.L974:
	.loc 5 4434 24
	ldr	r3, .L985
	.loc 5 4434 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4435 24
	ldr	r3, .L985+12
	.loc 5 4435 22
	ldr	r3, [r3]
	str	r3, [sp]
.L975:
	.loc 5 4440 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L976
	.loc 5 4442 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L977
	adr	r2, .L979
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L979:
	.word	.L983+1
	.word	.L982+1
	.word	.L981+1
	.word	.L980+1
	.word	.L978+1
	.p2align 1
.L983:
	.loc 5 4445 32
	movs	r3, #1
	b	.L984
.L982:
	.loc 5 4447 32
	movs	r3, #1
	b	.L984
.L981:
	.loc 5 4449 32
	movs	r3, #1
	b	.L984
.L980:
	.loc 5 4451 32
	movs	r3, #1
	b	.L984
.L978:
	.loc 5 4453 32
	movs	r3, #1
	b	.L984
.L977:
	.loc 5 4455 32
	movs	r3, #1
	b	.L984
.L976:
	.loc 5 4459 16
	movs	r3, #0
.L984:
	.loc 5 4461 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L986:
	.align	2
.L985:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE287:
	.size	nrf52_errata_84, .-nrf52_errata_84
	.section	.text.nrf52_errata_86,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_86, %function
nrf52_errata_86:
.LFB288:
	.loc 5 4476 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4485 17
	ldr	r3, .L999
	ldr	r3, [r3]
	.loc 5 4485 16
	cmp	r3, #-1
	bne	.L988
	.loc 5 4487 26
	ldr	r3, .L999+4
	ldr	r3, [r3]
	.loc 5 4487 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4488 26
	ldr	r3, .L999+8
	ldr	r3, [r3]
	.loc 5 4488 69
	lsrs	r3, r3, #4
	.loc 5 4488 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L989
.L988:
	.loc 5 4492 24
	ldr	r3, .L999
	.loc 5 4492 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4493 24
	ldr	r3, .L999+12
	.loc 5 4493 22
	ldr	r3, [r3]
	str	r3, [sp]
.L989:
	.loc 5 4498 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L990
	.loc 5 4500 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L991
	adr	r2, .L993
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L993:
	.word	.L997+1
	.word	.L996+1
	.word	.L995+1
	.word	.L994+1
	.word	.L992+1
	.p2align 1
.L997:
	.loc 5 4503 32
	movs	r3, #1
	b	.L998
.L996:
	.loc 5 4505 32
	movs	r3, #1
	b	.L998
.L995:
	.loc 5 4507 32
	movs	r3, #1
	b	.L998
.L994:
	.loc 5 4509 32
	movs	r3, #1
	b	.L998
.L992:
	.loc 5 4511 32
	movs	r3, #1
	b	.L998
.L991:
	.loc 5 4513 32
	movs	r3, #1
	b	.L998
.L990:
	.loc 5 4517 16
	movs	r3, #0
.L998:
	.loc 5 4519 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1000:
	.align	2
.L999:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE288:
	.size	nrf52_errata_86, .-nrf52_errata_86
	.section	.text.nrf52_errata_87,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_87, %function
nrf52_errata_87:
.LFB289:
	.loc 5 4537 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4546 17
	ldr	r3, .L1013
	ldr	r3, [r3]
	.loc 5 4546 16
	cmp	r3, #-1
	bne	.L1002
	.loc 5 4548 26
	ldr	r3, .L1013+4
	ldr	r3, [r3]
	.loc 5 4548 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4549 26
	ldr	r3, .L1013+8
	ldr	r3, [r3]
	.loc 5 4549 69
	lsrs	r3, r3, #4
	.loc 5 4549 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1003
.L1002:
	.loc 5 4553 24
	ldr	r3, .L1013
	.loc 5 4553 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4554 24
	ldr	r3, .L1013+12
	.loc 5 4554 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1003:
	.loc 5 4564 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1004
	.loc 5 4566 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1005
	adr	r2, .L1007
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1007:
	.word	.L1011+1
	.word	.L1010+1
	.word	.L1009+1
	.word	.L1008+1
	.word	.L1006+1
	.p2align 1
.L1011:
	.loc 5 4569 32
	movs	r3, #1
	b	.L1012
.L1010:
	.loc 5 4571 32
	movs	r3, #1
	b	.L1012
.L1009:
	.loc 5 4573 32
	movs	r3, #1
	b	.L1012
.L1008:
	.loc 5 4575 32
	movs	r3, #1
	b	.L1012
.L1006:
	.loc 5 4577 32
	movs	r3, #1
	b	.L1012
.L1005:
	.loc 5 4579 32
	movs	r3, #1
	b	.L1012
.L1004:
	.loc 5 4639 16
	movs	r3, #0
.L1012:
	.loc 5 4641 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1014:
	.align	2
.L1013:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE289:
	.size	nrf52_errata_87, .-nrf52_errata_87
	.section	.text.nrf52_errata_88,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_88, %function
nrf52_errata_88:
.LFB290:
	.loc 5 4659 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4668 17
	ldr	r3, .L1027
	ldr	r3, [r3]
	.loc 5 4668 16
	cmp	r3, #-1
	bne	.L1016
	.loc 5 4670 26
	ldr	r3, .L1027+4
	ldr	r3, [r3]
	.loc 5 4670 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4671 26
	ldr	r3, .L1027+8
	ldr	r3, [r3]
	.loc 5 4671 69
	lsrs	r3, r3, #4
	.loc 5 4671 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1017
.L1016:
	.loc 5 4675 24
	ldr	r3, .L1027
	.loc 5 4675 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4676 24
	ldr	r3, .L1027+12
	.loc 5 4676 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1017:
	.loc 5 4686 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1018
	.loc 5 4688 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1019
	adr	r2, .L1021
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1021:
	.word	.L1025+1
	.word	.L1024+1
	.word	.L1023+1
	.word	.L1022+1
	.word	.L1020+1
	.p2align 1
.L1025:
	.loc 5 4691 32
	movs	r3, #1
	b	.L1026
.L1024:
	.loc 5 4693 32
	movs	r3, #1
	b	.L1026
.L1023:
	.loc 5 4695 32
	movs	r3, #1
	b	.L1026
.L1022:
	.loc 5 4697 32
	movs	r3, #1
	b	.L1026
.L1020:
	.loc 5 4699 32
	movs	r3, #1
	b	.L1026
.L1019:
	.loc 5 4701 32
	movs	r3, #1
	b	.L1026
.L1018:
	.loc 5 4743 16
	movs	r3, #0
.L1026:
	.loc 5 4745 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1028:
	.align	2
.L1027:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE290:
	.size	nrf52_errata_88, .-nrf52_errata_88
	.section	.text.nrf52_errata_89,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_89, %function
nrf52_errata_89:
.LFB291:
	.loc 5 4761 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4770 17
	ldr	r3, .L1041
	ldr	r3, [r3]
	.loc 5 4770 16
	cmp	r3, #-1
	bne	.L1030
	.loc 5 4772 26
	ldr	r3, .L1041+4
	ldr	r3, [r3]
	.loc 5 4772 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4773 26
	ldr	r3, .L1041+8
	ldr	r3, [r3]
	.loc 5 4773 69
	lsrs	r3, r3, #4
	.loc 5 4773 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1031
.L1030:
	.loc 5 4777 24
	ldr	r3, .L1041
	.loc 5 4777 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4778 24
	ldr	r3, .L1041+12
	.loc 5 4778 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1031:
	.loc 5 4786 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1032
	.loc 5 4788 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1033
	adr	r2, .L1035
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1035:
	.word	.L1039+1
	.word	.L1038+1
	.word	.L1037+1
	.word	.L1036+1
	.word	.L1034+1
	.p2align 1
.L1039:
	.loc 5 4791 32
	movs	r3, #0
	b	.L1040
.L1038:
	.loc 5 4793 32
	movs	r3, #1
	b	.L1040
.L1037:
	.loc 5 4795 32
	movs	r3, #1
	b	.L1040
.L1036:
	.loc 5 4797 32
	movs	r3, #1
	b	.L1040
.L1034:
	.loc 5 4799 32
	movs	r3, #1
	b	.L1040
.L1033:
	.loc 5 4801 32
	movs	r3, #1
	b	.L1040
.L1032:
	.loc 5 4827 16
	movs	r3, #0
.L1040:
	.loc 5 4829 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1042:
	.align	2
.L1041:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE291:
	.size	nrf52_errata_89, .-nrf52_errata_89
	.section	.text.nrf52_errata_91,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_91, %function
nrf52_errata_91:
.LFB292:
	.loc 5 4844 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 4853 17
	ldr	r3, .L1055
	ldr	r3, [r3]
	.loc 5 4853 16
	cmp	r3, #-1
	bne	.L1044
	.loc 5 4855 26
	ldr	r3, .L1055+4
	ldr	r3, [r3]
	.loc 5 4855 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 4856 26
	ldr	r3, .L1055+8
	ldr	r3, [r3]
	.loc 5 4856 69
	lsrs	r3, r3, #4
	.loc 5 4856 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1045
.L1044:
	.loc 5 4860 24
	ldr	r3, .L1055
	.loc 5 4860 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 4861 24
	ldr	r3, .L1055+12
	.loc 5 4861 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1045:
	.loc 5 4866 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1046
	.loc 5 4868 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1047
	adr	r2, .L1049
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1049:
	.word	.L1053+1
	.word	.L1052+1
	.word	.L1051+1
	.word	.L1050+1
	.word	.L1048+1
	.p2align 1
.L1053:
	.loc 5 4871 32
	movs	r3, #0
	b	.L1054
.L1052:
	.loc 5 4873 32
	movs	r3, #0
	b	.L1054
.L1051:
	.loc 5 4875 32
	movs	r3, #1
	b	.L1054
.L1050:
	.loc 5 4877 32
	movs	r3, #1
	b	.L1054
.L1048:
	.loc 5 4879 32
	movs	r3, #0
	b	.L1054
.L1047:
	.loc 5 4881 32
	movs	r3, #0
	b	.L1054
.L1046:
	.loc 5 4885 16
	movs	r3, #0
.L1054:
	.loc 5 4887 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1056:
	.align	2
.L1055:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE292:
	.size	nrf52_errata_91, .-nrf52_errata_91
	.section	.text.nrf52_errata_94,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_94, %function
nrf52_errata_94:
.LFB293:
	.loc 5 4901 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 4931 16
	movs	r3, #0
	.loc 5 4933 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE293:
	.size	nrf52_errata_94, .-nrf52_errata_94
	.section	.text.nrf52_errata_96,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_96, %function
nrf52_errata_96:
.LFB294:
	.loc 5 4947 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 4977 16
	movs	r3, #0
	.loc 5 4979 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE294:
	.size	nrf52_errata_96, .-nrf52_errata_96
	.section	.text.nrf52_errata_97,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_97, %function
nrf52_errata_97:
.LFB295:
	.loc 5 4995 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5004 17
	ldr	r3, .L1073
	ldr	r3, [r3]
	.loc 5 5004 16
	cmp	r3, #-1
	bne	.L1062
	.loc 5 5006 26
	ldr	r3, .L1073+4
	ldr	r3, [r3]
	.loc 5 5006 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5007 26
	ldr	r3, .L1073+8
	ldr	r3, [r3]
	.loc 5 5007 69
	lsrs	r3, r3, #4
	.loc 5 5007 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1063
.L1062:
	.loc 5 5011 24
	ldr	r3, .L1073
	.loc 5 5011 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5012 24
	ldr	r3, .L1073+12
	.loc 5 5012 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1063:
	.loc 5 5020 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1064
	.loc 5 5022 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1065
	adr	r2, .L1067
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1067:
	.word	.L1071+1
	.word	.L1070+1
	.word	.L1069+1
	.word	.L1068+1
	.word	.L1066+1
	.p2align 1
.L1071:
	.loc 5 5025 32
	movs	r3, #1
	b	.L1072
.L1070:
	.loc 5 5027 32
	movs	r3, #1
	b	.L1072
.L1069:
	.loc 5 5029 32
	movs	r3, #1
	b	.L1072
.L1068:
	.loc 5 5031 32
	movs	r3, #1
	b	.L1072
.L1066:
	.loc 5 5033 32
	movs	r3, #1
	b	.L1072
.L1065:
	.loc 5 5035 32
	movs	r3, #1
	b	.L1072
.L1064:
	.loc 5 5061 16
	movs	r3, #0
.L1072:
	.loc 5 5063 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1074:
	.align	2
.L1073:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE295:
	.size	nrf52_errata_97, .-nrf52_errata_97
	.section	.text.nrf52_errata_98,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_98, %function
nrf52_errata_98:
.LFB296:
	.loc 5 5077 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5107 16
	movs	r3, #0
	.loc 5 5109 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE296:
	.size	nrf52_errata_98, .-nrf52_errata_98
	.section	.text.nrf52_errata_101,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_101, %function
nrf52_errata_101:
.LFB297:
	.loc 5 5124 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5133 17
	ldr	r3, .L1089
	ldr	r3, [r3]
	.loc 5 5133 16
	cmp	r3, #-1
	bne	.L1078
	.loc 5 5135 26
	ldr	r3, .L1089+4
	ldr	r3, [r3]
	.loc 5 5135 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5136 26
	ldr	r3, .L1089+8
	ldr	r3, [r3]
	.loc 5 5136 69
	lsrs	r3, r3, #4
	.loc 5 5136 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1079
.L1078:
	.loc 5 5140 24
	ldr	r3, .L1089
	.loc 5 5140 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5141 24
	ldr	r3, .L1089+12
	.loc 5 5141 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1079:
	.loc 5 5146 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1080
	.loc 5 5148 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1081
	adr	r2, .L1083
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1083:
	.word	.L1087+1
	.word	.L1086+1
	.word	.L1085+1
	.word	.L1084+1
	.word	.L1082+1
	.p2align 1
.L1087:
	.loc 5 5151 32
	movs	r3, #0
	b	.L1088
.L1086:
	.loc 5 5153 32
	movs	r3, #1
	b	.L1088
.L1085:
	.loc 5 5155 32
	movs	r3, #1
	b	.L1088
.L1084:
	.loc 5 5157 32
	movs	r3, #1
	b	.L1088
.L1082:
	.loc 5 5159 32
	movs	r3, #1
	b	.L1088
.L1081:
	.loc 5 5161 32
	movs	r3, #1
	b	.L1088
.L1080:
	.loc 5 5165 16
	movs	r3, #0
.L1088:
	.loc 5 5167 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1090:
	.align	2
.L1089:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE297:
	.size	nrf52_errata_101, .-nrf52_errata_101
	.section	.text.nrf52_errata_102,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_102, %function
nrf52_errata_102:
.LFB298:
	.loc 5 5182 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5191 17
	ldr	r3, .L1103
	ldr	r3, [r3]
	.loc 5 5191 16
	cmp	r3, #-1
	bne	.L1092
	.loc 5 5193 26
	ldr	r3, .L1103+4
	ldr	r3, [r3]
	.loc 5 5193 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5194 26
	ldr	r3, .L1103+8
	ldr	r3, [r3]
	.loc 5 5194 69
	lsrs	r3, r3, #4
	.loc 5 5194 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1093
.L1092:
	.loc 5 5198 24
	ldr	r3, .L1103
	.loc 5 5198 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5199 24
	ldr	r3, .L1103+12
	.loc 5 5199 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1093:
	.loc 5 5204 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1094
	.loc 5 5206 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1095
	adr	r2, .L1097
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1097:
	.word	.L1101+1
	.word	.L1100+1
	.word	.L1099+1
	.word	.L1098+1
	.word	.L1096+1
	.p2align 1
.L1101:
	.loc 5 5209 32
	movs	r3, #0
	b	.L1102
.L1100:
	.loc 5 5211 32
	movs	r3, #1
	b	.L1102
.L1099:
	.loc 5 5213 32
	movs	r3, #1
	b	.L1102
.L1098:
	.loc 5 5215 32
	movs	r3, #0
	b	.L1102
.L1096:
	.loc 5 5217 32
	movs	r3, #0
	b	.L1102
.L1095:
	.loc 5 5219 32
	movs	r3, #0
	b	.L1102
.L1094:
	.loc 5 5223 16
	movs	r3, #0
.L1102:
	.loc 5 5225 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1104:
	.align	2
.L1103:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE298:
	.size	nrf52_errata_102, .-nrf52_errata_102
	.section	.text.nrf52_errata_103,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_103, %function
nrf52_errata_103:
.LFB299:
	.loc 5 5239 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5269 16
	movs	r3, #0
	.loc 5 5271 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE299:
	.size	nrf52_errata_103, .-nrf52_errata_103
	.section	.text.nrf52_errata_104,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_104, %function
nrf52_errata_104:
.LFB300:
	.loc 5 5285 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5315 16
	movs	r3, #0
	.loc 5 5317 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE300:
	.size	nrf52_errata_104, .-nrf52_errata_104
	.section	.text.nrf52_errata_106,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_106, %function
nrf52_errata_106:
.LFB301:
	.loc 5 5332 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5341 17
	ldr	r3, .L1121
	ldr	r3, [r3]
	.loc 5 5341 16
	cmp	r3, #-1
	bne	.L1110
	.loc 5 5343 26
	ldr	r3, .L1121+4
	ldr	r3, [r3]
	.loc 5 5343 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5344 26
	ldr	r3, .L1121+8
	ldr	r3, [r3]
	.loc 5 5344 69
	lsrs	r3, r3, #4
	.loc 5 5344 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1111
.L1110:
	.loc 5 5348 24
	ldr	r3, .L1121
	.loc 5 5348 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5349 24
	ldr	r3, .L1121+12
	.loc 5 5349 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1111:
	.loc 5 5354 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1112
	.loc 5 5356 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1113
	adr	r2, .L1115
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1115:
	.word	.L1119+1
	.word	.L1118+1
	.word	.L1117+1
	.word	.L1116+1
	.word	.L1114+1
	.p2align 1
.L1119:
	.loc 5 5359 32
	movs	r3, #0
	b	.L1120
.L1118:
	.loc 5 5361 32
	movs	r3, #0
	b	.L1120
.L1117:
	.loc 5 5363 32
	movs	r3, #1
	b	.L1120
.L1116:
	.loc 5 5365 32
	movs	r3, #0
	b	.L1120
.L1114:
	.loc 5 5367 32
	movs	r3, #0
	b	.L1120
.L1113:
	.loc 5 5369 32
	movs	r3, #0
	b	.L1120
.L1112:
	.loc 5 5373 16
	movs	r3, #0
.L1120:
	.loc 5 5375 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1122:
	.align	2
.L1121:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE301:
	.size	nrf52_errata_106, .-nrf52_errata_106
	.section	.text.nrf52_errata_107,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_107, %function
nrf52_errata_107:
.LFB302:
	.loc 5 5390 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5399 17
	ldr	r3, .L1135
	ldr	r3, [r3]
	.loc 5 5399 16
	cmp	r3, #-1
	bne	.L1124
	.loc 5 5401 26
	ldr	r3, .L1135+4
	ldr	r3, [r3]
	.loc 5 5401 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5402 26
	ldr	r3, .L1135+8
	ldr	r3, [r3]
	.loc 5 5402 69
	lsrs	r3, r3, #4
	.loc 5 5402 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1125
.L1124:
	.loc 5 5406 24
	ldr	r3, .L1135
	.loc 5 5406 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5407 24
	ldr	r3, .L1135+12
	.loc 5 5407 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1125:
	.loc 5 5412 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1126
	.loc 5 5414 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1127
	adr	r2, .L1129
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1129:
	.word	.L1133+1
	.word	.L1132+1
	.word	.L1131+1
	.word	.L1130+1
	.word	.L1128+1
	.p2align 1
.L1133:
	.loc 5 5417 32
	movs	r3, #0
	b	.L1134
.L1132:
	.loc 5 5419 32
	movs	r3, #0
	b	.L1134
.L1131:
	.loc 5 5421 32
	movs	r3, #1
	b	.L1134
.L1130:
	.loc 5 5423 32
	movs	r3, #0
	b	.L1134
.L1128:
	.loc 5 5425 32
	movs	r3, #0
	b	.L1134
.L1127:
	.loc 5 5427 32
	movs	r3, #0
	b	.L1134
.L1126:
	.loc 5 5431 16
	movs	r3, #0
.L1134:
	.loc 5 5433 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1136:
	.align	2
.L1135:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE302:
	.size	nrf52_errata_107, .-nrf52_errata_107
	.section	.text.nrf52_errata_108,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_108, %function
nrf52_errata_108:
.LFB303:
	.loc 5 5448 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5457 17
	ldr	r3, .L1149
	ldr	r3, [r3]
	.loc 5 5457 16
	cmp	r3, #-1
	bne	.L1138
	.loc 5 5459 26
	ldr	r3, .L1149+4
	ldr	r3, [r3]
	.loc 5 5459 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5460 26
	ldr	r3, .L1149+8
	ldr	r3, [r3]
	.loc 5 5460 69
	lsrs	r3, r3, #4
	.loc 5 5460 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1139
.L1138:
	.loc 5 5464 24
	ldr	r3, .L1149
	.loc 5 5464 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5465 24
	ldr	r3, .L1149+12
	.loc 5 5465 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1139:
	.loc 5 5470 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1140
	.loc 5 5472 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1141
	adr	r2, .L1143
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1143:
	.word	.L1147+1
	.word	.L1146+1
	.word	.L1145+1
	.word	.L1144+1
	.word	.L1142+1
	.p2align 1
.L1147:
	.loc 5 5475 32
	movs	r3, #1
	b	.L1148
.L1146:
	.loc 5 5477 32
	movs	r3, #1
	b	.L1148
.L1145:
	.loc 5 5479 32
	movs	r3, #1
	b	.L1148
.L1144:
	.loc 5 5481 32
	movs	r3, #1
	b	.L1148
.L1142:
	.loc 5 5483 32
	movs	r3, #1
	b	.L1148
.L1141:
	.loc 5 5485 32
	movs	r3, #1
	b	.L1148
.L1140:
	.loc 5 5489 16
	movs	r3, #0
.L1148:
	.loc 5 5491 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1150:
	.align	2
.L1149:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE303:
	.size	nrf52_errata_108, .-nrf52_errata_108
	.section	.text.nrf52_errata_109,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_109, %function
nrf52_errata_109:
.LFB304:
	.loc 5 5506 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5515 17
	ldr	r3, .L1163
	ldr	r3, [r3]
	.loc 5 5515 16
	cmp	r3, #-1
	bne	.L1152
	.loc 5 5517 26
	ldr	r3, .L1163+4
	ldr	r3, [r3]
	.loc 5 5517 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5518 26
	ldr	r3, .L1163+8
	ldr	r3, [r3]
	.loc 5 5518 69
	lsrs	r3, r3, #4
	.loc 5 5518 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1153
.L1152:
	.loc 5 5522 24
	ldr	r3, .L1163
	.loc 5 5522 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5523 24
	ldr	r3, .L1163+12
	.loc 5 5523 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1153:
	.loc 5 5528 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1154
	.loc 5 5530 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1155
	adr	r2, .L1157
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1157:
	.word	.L1161+1
	.word	.L1160+1
	.word	.L1159+1
	.word	.L1158+1
	.word	.L1156+1
	.p2align 1
.L1161:
	.loc 5 5533 32
	movs	r3, #0
	b	.L1162
.L1160:
	.loc 5 5535 32
	movs	r3, #0
	b	.L1162
.L1159:
	.loc 5 5537 32
	movs	r3, #1
	b	.L1162
.L1158:
	.loc 5 5539 32
	movs	r3, #1
	b	.L1162
.L1156:
	.loc 5 5541 32
	movs	r3, #1
	b	.L1162
.L1155:
	.loc 5 5543 32
	movs	r3, #1
	b	.L1162
.L1154:
	.loc 5 5547 16
	movs	r3, #0
.L1162:
	.loc 5 5549 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1164:
	.align	2
.L1163:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE304:
	.size	nrf52_errata_109, .-nrf52_errata_109
	.section	.text.nrf52_errata_110,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_110, %function
nrf52_errata_110:
.LFB305:
	.loc 5 5563 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5593 16
	movs	r3, #0
	.loc 5 5595 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE305:
	.size	nrf52_errata_110, .-nrf52_errata_110
	.section	.text.nrf52_errata_111,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_111, %function
nrf52_errata_111:
.LFB306:
	.loc 5 5609 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5639 16
	movs	r3, #0
	.loc 5 5641 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE306:
	.size	nrf52_errata_111, .-nrf52_errata_111
	.section	.text.nrf52_errata_112,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_112, %function
nrf52_errata_112:
.LFB307:
	.loc 5 5655 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5685 16
	movs	r3, #0
	.loc 5 5687 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE307:
	.size	nrf52_errata_112, .-nrf52_errata_112
	.section	.text.nrf52_errata_113,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_113, %function
nrf52_errata_113:
.LFB308:
	.loc 5 5703 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 5712 17
	ldr	r3, .L1183
	ldr	r3, [r3]
	.loc 5 5712 16
	cmp	r3, #-1
	bne	.L1172
	.loc 5 5714 26
	ldr	r3, .L1183+4
	ldr	r3, [r3]
	.loc 5 5714 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 5715 26
	ldr	r3, .L1183+8
	ldr	r3, [r3]
	.loc 5 5715 69
	lsrs	r3, r3, #4
	.loc 5 5715 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1173
.L1172:
	.loc 5 5719 24
	ldr	r3, .L1183
	.loc 5 5719 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 5720 24
	ldr	r3, .L1183+12
	.loc 5 5720 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1173:
	.loc 5 5728 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1174
	.loc 5 5730 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1175
	adr	r2, .L1177
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1177:
	.word	.L1181+1
	.word	.L1180+1
	.word	.L1179+1
	.word	.L1178+1
	.word	.L1176+1
	.p2align 1
.L1181:
	.loc 5 5733 32
	movs	r3, #0
	b	.L1182
.L1180:
	.loc 5 5735 32
	movs	r3, #0
	b	.L1182
.L1179:
	.loc 5 5737 32
	movs	r3, #1
	b	.L1182
.L1178:
	.loc 5 5739 32
	movs	r3, #1
	b	.L1182
.L1176:
	.loc 5 5741 32
	movs	r3, #1
	b	.L1182
.L1175:
	.loc 5 5743 32
	movs	r3, #1
	b	.L1182
.L1174:
	.loc 5 5769 16
	movs	r3, #0
.L1182:
	.loc 5 5771 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1184:
	.align	2
.L1183:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE308:
	.size	nrf52_errata_113, .-nrf52_errata_113
	.section	.text.nrf52_errata_115,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_115, %function
nrf52_errata_115:
.LFB309:
	.loc 5 5785 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5815 16
	movs	r3, #0
	.loc 5 5817 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE309:
	.size	nrf52_errata_115, .-nrf52_errata_115
	.section	.text.nrf52_errata_116,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_116, %function
nrf52_errata_116:
.LFB310:
	.loc 5 5831 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5861 16
	movs	r3, #0
	.loc 5 5863 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE310:
	.size	nrf52_errata_116, .-nrf52_errata_116
	.section	.text.nrf52_errata_117,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_117, %function
nrf52_errata_117:
.LFB311:
	.loc 5 5877 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5907 16
	movs	r3, #0
	.loc 5 5909 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE311:
	.size	nrf52_errata_117, .-nrf52_errata_117
	.section	.text.nrf52_errata_118,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_118, %function
nrf52_errata_118:
.LFB312:
	.loc 5 5923 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5953 16
	movs	r3, #0
	.loc 5 5955 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE312:
	.size	nrf52_errata_118, .-nrf52_errata_118
	.section	.text.nrf52_errata_119,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_119, %function
nrf52_errata_119:
.LFB313:
	.loc 5 5969 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 5999 16
	movs	r3, #0
	.loc 5 6001 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE313:
	.size	nrf52_errata_119, .-nrf52_errata_119
	.section	.text.nrf52_errata_120,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_120, %function
nrf52_errata_120:
.LFB314:
	.loc 5 6015 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6045 16
	movs	r3, #0
	.loc 5 6047 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE314:
	.size	nrf52_errata_120, .-nrf52_errata_120
	.section	.text.nrf52_errata_121,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_121, %function
nrf52_errata_121:
.LFB315:
	.loc 5 6061 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6091 16
	movs	r3, #0
	.loc 5 6093 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE315:
	.size	nrf52_errata_121, .-nrf52_errata_121
	.section	.text.nrf52_errata_122,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_122, %function
nrf52_errata_122:
.LFB316:
	.loc 5 6107 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6137 16
	movs	r3, #0
	.loc 5 6139 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE316:
	.size	nrf52_errata_122, .-nrf52_errata_122
	.section	.text.nrf52_errata_127,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_127, %function
nrf52_errata_127:
.LFB317:
	.loc 5 6153 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6183 16
	movs	r3, #0
	.loc 5 6185 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE317:
	.size	nrf52_errata_127, .-nrf52_errata_127
	.section	.text.nrf52_errata_128,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_128, %function
nrf52_errata_128:
.LFB318:
	.loc 5 6199 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6229 16
	movs	r3, #0
	.loc 5 6231 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE318:
	.size	nrf52_errata_128, .-nrf52_errata_128
	.section	.text.nrf52_errata_131,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_131, %function
nrf52_errata_131:
.LFB319:
	.loc 5 6245 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6275 16
	movs	r3, #0
	.loc 5 6277 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE319:
	.size	nrf52_errata_131, .-nrf52_errata_131
	.section	.text.nrf52_errata_132,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_132, %function
nrf52_errata_132:
.LFB320:
	.loc 5 6292 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 6301 17
	ldr	r3, .L1219
	ldr	r3, [r3]
	.loc 5 6301 16
	cmp	r3, #-1
	bne	.L1208
	.loc 5 6303 26
	ldr	r3, .L1219+4
	ldr	r3, [r3]
	.loc 5 6303 22
	uxtb	r3, r3
	str	r3, [sp, #4]
	.loc 5 6304 26
	ldr	r3, .L1219+8
	ldr	r3, [r3]
	.loc 5 6304 69
	lsrs	r3, r3, #4
	.loc 5 6304 22
	and	r3, r3, #15
	str	r3, [sp]
	b	.L1209
.L1208:
	.loc 5 6308 24
	ldr	r3, .L1219
	.loc 5 6308 22
	ldr	r3, [r3]
	str	r3, [sp, #4]
	.loc 5 6309 24
	ldr	r3, .L1219+12
	.loc 5 6309 22
	ldr	r3, [r3]
	str	r3, [sp]
.L1209:
	.loc 5 6314 16
	ldr	r3, [sp, #4]
	cmp	r3, #6
	bne	.L1210
	.loc 5 6316 17
	ldr	r3, [sp]
	subs	r3, r3, #3
	cmp	r3, #4
	bhi	.L1211
	adr	r2, .L1213
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1213:
	.word	.L1217+1
	.word	.L1216+1
	.word	.L1215+1
	.word	.L1214+1
	.word	.L1212+1
	.p2align 1
.L1217:
	.loc 5 6319 32
	movs	r3, #0
	b	.L1218
.L1216:
	.loc 5 6321 32
	movs	r3, #0
	b	.L1218
.L1215:
	.loc 5 6323 32
	movs	r3, #1
	b	.L1218
.L1214:
	.loc 5 6325 32
	movs	r3, #1
	b	.L1218
.L1212:
	.loc 5 6327 32
	movs	r3, #1
	b	.L1218
.L1211:
	.loc 5 6329 32
	movs	r3, #1
	b	.L1218
.L1210:
	.loc 5 6333 16
	movs	r3, #0
.L1218:
	.loc 5 6335 1
	mov	r0, r3
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L1220:
	.align	2
.L1219:
	.word	268435760
	.word	-268431392
	.word	-268431384
	.word	268435764
	.cfi_endproc
.LFE320:
	.size	nrf52_errata_132, .-nrf52_errata_132
	.section	.text.nrf52_errata_133,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_133, %function
nrf52_errata_133:
.LFB321:
	.loc 5 6349 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6379 16
	movs	r3, #0
	.loc 5 6381 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE321:
	.size	nrf52_errata_133, .-nrf52_errata_133
	.section	.text.nrf52_errata_134,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_134, %function
nrf52_errata_134:
.LFB322:
	.loc 5 6395 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6425 16
	movs	r3, #0
	.loc 5 6427 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE322:
	.size	nrf52_errata_134, .-nrf52_errata_134
	.section	.text.nrf52_errata_135,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_135, %function
nrf52_errata_135:
.LFB323:
	.loc 5 6441 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 5 6471 16
	movs	r3, #0
	.loc 5 6473 1
	mov	r0, r3
	bx	lr
	.cfi_endproc
.LFE323:
	.size	nrf52_errata_135, .-nrf52_errata_135
	.section	.text.nrf52_errata_136,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf52_errata_136, %function
nrf52_errata_136:
.LFB324:
	.loc 5 6494 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	.loc 5 6503 17
