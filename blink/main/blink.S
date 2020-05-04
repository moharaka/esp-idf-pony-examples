	.text
	.file	"blink"
	.literal_position               # -- Begin function StdStream_Dispatch
	.literal .LCPI0_0, pony_os_stdout
	.literal .LCPI0_1, pony_os_stderr
	.global	StdStream_Dispatch
	.p2align	2
	.type	StdStream_Dispatch,@function
StdStream_Dispatch:                     # @StdStream_Dispatch
# %bb.0:
	entry	a1, 40
	l32i.n	a8, a4, 4
	s32i.n	a3, a1, 0
	beqz	a8, .LBB0_3
# %bb.1:
	bnei	a8, 1, .LBB0_5
# %bb.2:
	l32r	a8, .LCPI0_0
	j	.LBB0_4
.LBB0_3:
	l32r	a8, .LCPI0_1
.LBB0_4:
	callx8	a8
	l32i.n	a8, a1, 0
	s32i	a10, a8, 128
	retw.n
.LBB0_5:
	#APP
	#NO_APP
.Lfunc_end0:
	.size	StdStream_Dispatch, .Lfunc_end0-StdStream_Dispatch
                                        # -- End function
	.literal_position               # -- Begin function StdStream_Trace
	.literal .LCPI1_0, .L__unnamed_1
	.literal .LCPI1_1, pony_traceknown
	.global	StdStream_Trace
	.p2align	2
	.type	StdStream_Trace,@function
StdStream_Trace:                        # @StdStream_Trace
# %bb.0:
	entry	a1, 32
	l32i	a11, a3, 128
	l32r	a12, .LCPI1_0
	movi.n	a13, 0
	l32r	a8, .LCPI1_1
	mov.n	a10, a2
	callx8	a8
	retw.n
.Lfunc_end1:
	.size	StdStream_Trace, .Lfunc_end1-StdStream_Trace
                                        # -- End function
	.literal_position               # -- Begin function Main_Dispatch
	.literal .LCPI2_0, pony_gc_recv
	.literal .LCPI2_1, .L__unnamed_2
	.literal .LCPI2_2, pony_traceknown
	.literal .LCPI2_3, pony_recv_done
	.literal .LCPI2_4, pony_alloc_small
	.literal .LCPI2_5, .L__unnamed_3
	.literal .LCPI2_6, gpio_pad_select_gpio
	.literal .LCPI2_7, gpio_set_direction
	.literal .LCPI2_8, gpio_set_level
	.literal .LCPI2_9, vTaskDelay
	.global	Main_Dispatch
	.p2align	2
	.type	Main_Dispatch,@function
Main_Dispatch:                          # @Main_Dispatch
# %bb.0:
	entry	a1, 56
	s32i.n	a3, a1, 20
	l32i.n	a8, a4, 4
	beqi	a8, 1, .LBB2_1
	j	.LBB2_20
.LBB2_1:
	l32i.n	a8, a4, 16
	s32i.n	a8, a1, 8
	l32r	a8, .LCPI2_0
	mov.n	a10, a2
	s32i.n	a10, a1, 12
	callx8	a8
	l32r	a12, .LCPI2_1
	movi.n	a13, 1
	s32i.n	a13, a1, 16
	l32r	a8, .LCPI2_2
	l32i.n	a10, a1, 12
	l32i.n	a11, a1, 8
	callx8	a8
	l32r	a8, .LCPI2_3
	l32i.n	a10, a1, 12
	callx8	a8
	movi.n	a11, 0
	s32i.n	a11, a1, 0
	l32r	a8, .LCPI2_4
	l32i.n	a10, a1, 12
	callx8	a8
	mov.n	a9, a10
	s32i.n	a9, a1, 8
	movi.n	a10, 5
	s32i.n	a10, a1, 12
	s32i.n	a10, a9, 12
	l32r	a8, .LCPI2_5
	s32i.n	a8, a9, 0
	l32i.n	a8, a1, 0
	s32i.n	a8, a9, 8
	l32r	a8, .LCPI2_6
	callx8	a8
	movi.n	a11, 2
	l32r	a8, .LCPI2_7
	l32i.n	a10, a1, 12
	callx8	a8
	l32i.n	a8, a1, 20
	l32i.n	a9, a1, 8
	s32i	a9, a8, 128
	l32i.n	a11, a1, 16
	s32i.n	a11, a9, 8
	l32r	a8, .LCPI2_8
	l32i.n	a10, a1, 12
	s32i.n	a8, a1, 12
	callx8	a8
	movi	a10, 100
	l32r	a8, .LCPI2_9
	s32i.n	a10, a1, 8
	s32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_3
# %bb.2:
	l32i.n	a11, a1, 0
.LBB2_3:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_5
# %bb.4:
	l32i.n	a11, a1, 0
.LBB2_5:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_7
# %bb.6:
	l32i.n	a11, a1, 0
.LBB2_7:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_9
# %bb.8:
	l32i.n	a11, a1, 0
.LBB2_9:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_11
# %bb.10:
	l32i.n	a11, a1, 0
.LBB2_11:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_13
# %bb.12:
	l32i.n	a11, a1, 0
.LBB2_13:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_15
# %bb.14:
	l32i.n	a11, a1, 0
.LBB2_15:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a10, a1, 16
	mov.n	a11, a10
	bne	a9, a10, .LBB2_17
# %bb.16:
	l32i.n	a11, a1, 0
.LBB2_17:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i	a8, a8, 128
	l32i.n	a9, a8, 4
	l32i.n	a11, a1, 16
	bne	a9, a11, .LBB2_19
# %bb.18:
	l32i.n	a11, a1, 0
.LBB2_19:
	s32i.n	a11, a8, 4
	l32i.n	a10, a8, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	retw.n
.LBB2_20:
	#APP
	#NO_APP
.Lfunc_end2:
	.size	Main_Dispatch, .Lfunc_end2-Main_Dispatch
                                        # -- End function
	.literal_position               # -- Begin function Main_Trace
	.literal .LCPI3_0, .L__unnamed_3
	.literal .LCPI3_1, pony_traceknown
	.global	Main_Trace
	.p2align	2
	.type	Main_Trace,@function
Main_Trace:                             # @Main_Trace
# %bb.0:
	entry	a1, 32
	l32i	a11, a3, 128
	l32r	a12, .LCPI3_0
	movi.n	a13, 0
	l32r	a8, .LCPI3_1
	mov.n	a10, a2
	callx8	a8
	retw.n
.Lfunc_end3:
	.size	Main_Trace, .Lfunc_end3-Main_Trace
                                        # -- End function
	.literal_position               # -- Begin function String_Trace
	.literal .LCPI4_0, .L__unnamed_4
	.literal .LCPI4_1, pony_traceknown
	.global	String_Trace
	.p2align	2
	.type	String_Trace,@function
String_Trace:                           # @String_Trace
# %bb.0:
	entry	a1, 32
	l32i.n	a11, a3, 12
	l32r	a12, .LCPI4_0
	movi.n	a13, 0
	l32r	a8, .LCPI4_1
	mov.n	a10, a2
	callx8	a8
	retw.n
.Lfunc_end4:
	.size	String_Trace, .Lfunc_end4-String_Trace
                                        # -- End function
	.literal_position               # -- Begin function Array_String_val_Trace
	.literal .LCPI5_0, pony_trace
	.literal .LCPI5_1, .L__unnamed_5
	.literal .LCPI5_2, pony_traceknown
	.global	Array_String_val_Trace
	.p2align	2
	.type	Array_String_val_Trace,@function
Array_String_val_Trace:                 # @Array_String_val_Trace
# %bb.0:
	entry	a1, 72
	s32i.n	a3, a1, 36
	l32i.n	a11, a3, 12
	l32r	a8, .LCPI5_0
	s32i.n	a2, a1, 24
	mov.n	a10, a2
	s32i.n	a11, a1, 20
	callx8	a8
	l32i.n	a9, a1, 36
	l32i.n	a8, a9, 8
	l32i.n	a9, a9, 4
	s32i.n	a8, a1, 16
	s32i.n	a9, a1, 12
	or	a8, a9, a8
	beqz	a8, .LBB5_5
# %bb.1:
	movi.n	a10, 0
	l32r	a8, .LCPI5_1
	s32i.n	a8, a1, 8
	movi.n	a8, 1
	s32i.n	a8, a1, 36
	l32r	a8, .LCPI5_2
	s32i.n	a8, a1, 4
	movi.n	a8, 0
	s32i.n	a8, a1, 0
	mov.n	a11, a10
	j	.LBB5_3
.LBB5_2:                                #   in Loop: Header=BB5_3 Depth=1
	l32i.n	a11, a1, 32
	add.n	a11, a11, a9
	l32i.n	a9, a1, 16
	xor	a9, a11, a9
	l32i.n	a10, a1, 12
	xor	a10, a8, a10
	or	a9, a10, a9
	mov.n	a10, a8
	beqz	a9, .LBB5_5
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	s32i.n	a10, a1, 28
	s32i.n	a11, a1, 32
	l32i.n	a8, a1, 20
	addx4	a8, a10, a8
	l32i.n	a11, a8, 0
	l32i.n	a10, a1, 24
	l32i.n	a12, a1, 8
	l32i.n	a13, a1, 36
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a10, a1, 28
	addi.n	a8, a10, 1
	l32i.n	a9, a1, 36
	bltu	a8, a10, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	l32i.n	a9, a1, 0
	j	.LBB5_2
.LBB5_5:
	retw.n
.Lfunc_end5:
	.size	Array_String_val_Trace, .Lfunc_end5-Array_String_val_Trace
                                        # -- End function
	.literal_position               # -- Begin function Stdin_Dispatch
	.literal .LCPI6_0, pony_gc_recv
	.literal .LCPI6_1, .L__unnamed_6
	.literal .LCPI6_2, pony_traceknown
	.literal .LCPI6_3, pony_recv_done
	.literal .LCPI6_4, pony_asio_event_destroy
	.literal .LCPI6_5, .L__unnamed_7
	.global	Stdin_Dispatch
	.p2align	2
	.type	Stdin_Dispatch,@function
Stdin_Dispatch:                         # @Stdin_Dispatch
# %bb.0:
	entry	a1, 48
	l32i.n	a8, a4, 4
	beqz	a8, .LBB6_5
# %bb.1:
	beqi	a8, 1, .LBB6_4
# %bb.2:
	bnei	a8, 4, .LBB6_11
# %bb.3:
	mov.n	a10, a3
	call8	.L__unnamed_8
	retw.n
.LBB6_4:
	l8ui	a8, a4, 16
	movi.n	a9, 0
	s32i	a9, a3, 136
	movi.n	a9, 32
	s32i	a9, a3, 132
	l32r	a9, .LCPI6_5
	s32i	a9, a3, 128
	movi.n	a9, 1
	and	a8, a8, a9
	s8i	a8, a3, 140
	retw.n
.LBB6_5:
	s32i.n	a3, a1, 0
	l32i.n	a8, a4, 24
	s32i.n	a8, a1, 4
	l32i.n	a8, a4, 16
	s32i.n	a8, a1, 12
	l32r	a8, .LCPI6_0
	mov.n	a10, a2
	s32i.n	a2, a1, 8
	callx8	a8
	l32r	a12, .LCPI6_1
	movi.n	a13, 2
	l32r	a8, .LCPI6_2
	l32i.n	a10, a1, 8
	l32i.n	a11, a1, 12
	callx8	a8
	l32r	a8, .LCPI6_3
	l32i.n	a10, a1, 8
	callx8	a8
	l32i.n	a10, a1, 4
	beqz	a10, .LBB6_10
# %bb.6:
	l32i.n	a9, a1, 12
	movi.n	a8, 1
	and	a8, a10, a8
	l32i.n	a10, a1, 0
	beqz	a8, .LBB6_9
# %bb.7:
	l32i	a8, a10, 136
	bne	a8, a9, .LBB6_9
# %bb.8:
	call8	.L__unnamed_8
.LBB6_9:
	retw.n
.LBB6_10:
	l32r	a8, .LCPI6_4
	l32i.n	a10, a1, 12
	callx8	a8
	retw.n
.LBB6_11:
	#APP
	#NO_APP
.Lfunc_end6:
	.size	Stdin_Dispatch, .Lfunc_end6-Stdin_Dispatch
                                        # -- End function
	.literal_position               # -- Begin function Stdin_Trace
	.literal .LCPI7_0, pony_traceunknown
	.literal .LCPI7_1, .L__unnamed_6
	.literal .LCPI7_2, pony_traceknown
	.global	Stdin_Trace
	.p2align	2
	.type	Stdin_Trace,@function
Stdin_Trace:                            # @Stdin_Trace
# %bb.0:
	entry	a1, 40
	s32i.n	a3, a1, 0
	s32i.n	a2, a1, 4
	l32i	a11, a3, 128
	movi.n	a12, 0
	l32r	a8, .LCPI7_0
	mov.n	a10, a2
	callx8	a8
	l32i.n	a8, a1, 0
	l32i	a11, a8, 136
	l32r	a12, .LCPI7_1
	movi.n	a13, 2
	l32r	a8, .LCPI7_2
	l32i.n	a10, a1, 4
	callx8	a8
	retw.n
.Lfunc_end7:
	.size	Stdin_Trace, .Lfunc_end7-Stdin_Trace
                                        # -- End function
	.literal_position               # -- Begin function Array_U8_val_Trace
	.literal .LCPI8_0, pony_trace
	.global	Array_U8_val_Trace
	.p2align	2
	.type	Array_U8_val_Trace,@function
Array_U8_val_Trace:                     # @Array_U8_val_Trace
# %bb.0:
	entry	a1, 32
	l32i.n	a11, a3, 12
	l32r	a8, .LCPI8_0
	mov.n	a10, a2
	callx8	a8
	retw.n
.Lfunc_end8:
	.size	Array_U8_val_Trace, .Lfunc_end8-Array_U8_val_Trace
                                        # -- End function
	.literal_position               # -- Begin function Env_Trace
	.literal .LCPI9_0, pony_traceunknown
	.literal .LCPI9_1, .L__unnamed_9
	.literal .LCPI9_2, pony_traceknown
	.global	Env_Trace
	.p2align	2
	.type	Env_Trace,@function
Env_Trace:                              # @Env_Trace
# %bb.0:
	entry	a1, 56
	s32i.n	a3, a1, 20
	s32i.n	a2, a1, 16
	l32i.n	a11, a3, 8
	movi.n	a12, 2
	s32i.n	a12, a1, 8
	l32r	a8, .LCPI9_0
	s32i.n	a8, a1, 12
	mov.n	a10, a2
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 20
	l32i.n	a11, a8, 12
	l32i.n	a10, a1, 16
	l32i.n	a12, a1, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 20
	l32i.n	a11, a8, 16
	l32i.n	a10, a1, 16
	l32i.n	a12, a1, 8
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 20
	l32i.n	a11, a8, 20
	l32r	a12, .LCPI9_1
	s32i.n	a12, a1, 0
	movi.n	a13, 1
	s32i.n	a13, a1, 8
	l32r	a8, .LCPI9_2
	s32i.n	a8, a1, 4
	l32i.n	a10, a1, 16
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i.n	a11, a8, 24
	l32i.n	a10, a1, 16
	l32i.n	a12, a1, 0
	l32i.n	a13, a1, 8
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a8, a1, 20
	l32i.n	a11, a8, 28
	l32i.n	a10, a1, 16
	l32i.n	a12, a1, 8
	l32i.n	a8, a1, 12
	callx8	a8
	retw.n
.Lfunc_end9:
	.size	Env_Trace, .Lfunc_end9-Env_Trace
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_10,@function
.L__unnamed_10:                         # @33
# %bb.0:
	entry	a1, 32
	movi.n	a2, 0
	retw.n
.Lfunc_end10:
	.size	.L__unnamed_10, .Lfunc_end10-.L__unnamed_10
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_11,@function
.L__unnamed_11:                         # @34
# %bb.0:
	entry	a1, 32
	mov.n	a8, a2
	movi.n	a2, 0
	bne	a8, a2, .LBB11_2
# %bb.1:
	movi.n	a2, 1
.LBB11_2:
	retw.n
.Lfunc_end11:
	.size	.L__unnamed_11, .Lfunc_end11-.L__unnamed_11
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI12_0, gpio_pad_select_gpio
	.literal .LCPI12_1, gpio_set_direction
	.p2align	2
	.type	.L__unnamed_12,@function
.L__unnamed_12:                         # @35
# %bb.0:
	entry	a1, 40
	s32i.n	a2, a1, 0
	s32i.n	a4, a2, 4
	s32i.n	a3, a2, 8
	l32r	a8, .LCPI12_0
	mov.n	a10, a3
	callx8	a8
	l32i.n	a8, a1, 0
	l32i.n	a10, a8, 8
	movi.n	a11, 2
	l32r	a8, .LCPI12_1
	callx8	a8
	retw.n
.Lfunc_end12:
	.size	.L__unnamed_12, .Lfunc_end12-.L__unnamed_12
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI13_0, gpio_set_level
	.literal .LCPI13_1, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_13,@function
.L__unnamed_13:                         # @36
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 4
	movi.n	a11, 1
	bne	a8, a11, .LBB13_2
# %bb.1:
	movi.n	a11, 0
.LBB13_2:
	s32i.n	a11, a2, 4
	l32i.n	a10, a2, 8
	l32r	a8, .LCPI13_0
	callx8	a8
	l32r	a2, .LCPI13_1
	retw.n
.Lfunc_end13:
	.size	.L__unnamed_13, .Lfunc_end13-.L__unnamed_13
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI14_0, pony_ctx
	.literal .LCPI14_1, pony_alloc_msg
	.literal .LCPI14_2, pony_sendv_single
	.p2align	2
	.type	.L__unnamed_14,@function
.L__unnamed_14:                         # @37
# %bb.0:
	entry	a1, 40
	s32i.n	a2, a1, 4
	l32r	a8, .LCPI14_0
	callx8	a8
	s32i.n	a10, a1, 0
	movi.n	a10, 0
	l32r	a8, .LCPI14_1
	mov.n	a11, a10
	callx8	a8
	mov.n	a12, a10
	movi.n	a14, 1
	l32r	a8, .LCPI14_2
	l32i.n	a10, a1, 0
	l32i.n	a11, a1, 4
	mov.n	a13, a12
	callx8	a8
	l32i.n	a2, a1, 4
	retw.n
.Lfunc_end14:
	.size	.L__unnamed_14, .Lfunc_end14-.L__unnamed_14
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI15_0, pony_ctx
	.literal .LCPI15_1, pony_alloc_msg
	.literal .LCPI15_2, pony_sendv_single
	.p2align	2
	.type	.L__unnamed_15,@function
.L__unnamed_15:                         # @38
# %bb.0:
	entry	a1, 48
	s32i.n	a2, a1, 8
	l32r	a8, .LCPI15_0
	callx8	a8
	s32i.n	a10, a1, 4
	movi.n	a10, 0
	movi.n	a11, 1
	s32i.n	a11, a1, 0
	l32r	a8, .LCPI15_1
	callx8	a8
	mov.n	a12, a10
	l32r	a8, .LCPI15_2
	l32i.n	a10, a1, 4
	l32i.n	a11, a1, 8
	mov.n	a13, a12
	l32i.n	a14, a1, 0
	callx8	a8
	l32i.n	a2, a1, 8
	retw.n
.Lfunc_end15:
	.size	.L__unnamed_15, .Lfunc_end15-.L__unnamed_15
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI16_0, pony_ctx
	.literal .LCPI16_1, pony_alloc_msg
	.literal .LCPI16_2, pony_gc_send
	.literal .LCPI16_3, .L__unnamed_2
	.literal .LCPI16_4, pony_traceknown
	.literal .LCPI16_5, pony_send_done
	.literal .LCPI16_6, pony_sendv_single
	.p2align	2
	.type	.L__unnamed_16,@function
.L__unnamed_16:                         # @39
# %bb.0:
	entry	a1, 56
	s32i.n	a3, a1, 4
	s32i.n	a2, a1, 12
	l32r	a8, .LCPI16_0
	callx8	a8
	s32i.n	a10, a1, 16
	movi.n	a10, 0
	movi.n	a11, 1
	s32i.n	a11, a1, 8
	l32r	a8, .LCPI16_1
	callx8	a8
	s32i.n	a10, a1, 0
	l32i.n	a8, a1, 4
	s32i.n	a8, a10, 16
	l32r	a8, .LCPI16_2
	l32i.n	a10, a1, 16
	callx8	a8
	l32r	a12, .LCPI16_3
	l32r	a8, .LCPI16_4
	l32i.n	a10, a1, 16
	l32i.n	a11, a1, 4
	l32i.n	a13, a1, 8
	callx8	a8
	l32r	a8, .LCPI16_5
	l32i.n	a10, a1, 16
	callx8	a8
	l32r	a8, .LCPI16_6
	l32i.n	a10, a1, 16
	l32i.n	a11, a1, 12
	l32i.n	a12, a1, 0
	mov.n	a13, a12
	l32i.n	a14, a1, 8
	callx8	a8
	l32i.n	a2, a1, 12
	retw.n
.Lfunc_end16:
	.size	.L__unnamed_16, .Lfunc_end16-.L__unnamed_16
                                        # -- End function
	.global	Main_runtime_override_defaults_oo # -- Begin function Main_runtime_override_defaults_oo
	.p2align	2
	.type	Main_runtime_override_defaults_oo,@function
Main_runtime_override_defaults_oo:      # @Main_runtime_override_defaults_oo
# %bb.0:
	entry	a1, 32
	retw.n
.Lfunc_end17:
	.size	Main_runtime_override_defaults_oo, .Lfunc_end17-Main_runtime_override_defaults_oo
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_17,@function
.L__unnamed_17:                         # @40
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 24
	add.n	a8, a8, a4
	l8ui	a2, a8, 0
	s8i	a6, a8, 0
	retw.n
.Lfunc_end18:
	.size	.L__unnamed_17, .Lfunc_end18-.L__unnamed_17
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI19_0, pony_ctx
	.literal .LCPI19_1, pony_alloc
	.literal .LCPI19_2, memcpy
	.literal .LCPI19_3, pony_alloc_small
	.p2align	2
	.type	.L__unnamed_18,@function
.L__unnamed_18:                         # @41
# %bb.0:
	entry	a1, 48
	s32i.n	a2, a1, 12
	beqz	a3, .LBB19_6
# %bb.1:
	l8ui	a9, a3, 0
	movi.n	a8, 0
	beqz	a9, .LBB19_7
# %bb.2:
	movi.n	a11, 0
	movi.n	a12, 1
	mov.n	a13, a8
	mov.n	a9, a8
	j	.LBB19_4
.LBB19_3:                               #   in Loop: Header=BB19_4 Depth=1
	add.n	a9, a9, a14
	add.n	a13, a3, a10
	l8ui	a14, a13, 0
	mov.n	a13, a10
	beqz	a14, .LBB19_8
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	addi.n	a10, a13, 1
	mov.n	a14, a12
	bltu	a10, a13, .LBB19_3
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	mov.n	a14, a11
	j	.LBB19_3
.LBB19_6:
	movi.n	a9, 0
	s32i.n	a9, a1, 8
	s32i.n	a9, a2, 20
	movi.n	a8, 1
	s32i.n	a8, a2, 16
	s32i.n	a9, a2, 12
	s32i.n	a9, a2, 8
	l32r	a8, .LCPI19_0
	callx8	a8
	l32r	a8, .LCPI19_3
	l32i.n	a11, a1, 8
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 24
	l32i.n	a8, a1, 8
	s8i	a8, a10, 0
	retw.n
.LBB19_7:
	mov.n	a10, a8
	mov.n	a9, a8
.LBB19_8:
	s32i.n	a10, a2, 8
	addi.n	a11, a10, 1
	s32i.n	a11, a2, 16
	s32i.n	a9, a2, 12
	s32i.n	a3, a1, 8
	s32i.n	a11, a1, 4
	bgeu	a11, a10, .LBB19_10
# %bb.9:
	movi.n	a8, 1
.LBB19_10:
	add.n	a8, a9, a8
	s32i.n	a8, a1, 0
	s32i.n	a8, a2, 20
	l32r	a8, .LCPI19_0
	callx8	a8
	l32r	a8, .LCPI19_1
	l32i.n	a12, a1, 4
	l32i.n	a13, a1, 0
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 24
	l32i.n	a12, a8, 16
	l32r	a8, .LCPI19_2
	l32i.n	a11, a1, 8
	callx8	a8
	retw.n
.Lfunc_end19:
	.size	.L__unnamed_18, .Lfunc_end19-.L__unnamed_18
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI20_0, 1431655765
	.literal .LCPI20_1, 858993459
	.literal .LCPI20_2, 252645135
	.literal .LCPI20_3, 16843009
	.literal .LCPI20_4, pony_ctx
	.literal .LCPI20_5, pony_realloc
	.literal .LCPI20_6, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_19,@function
.L__unnamed_19:                         # @42
# %bb.0:
	entry	a1, 56
	l32i.n	a9, a2, 16
	l32i.n	a11, a2, 8
	addi.n	a8, a11, 1
	movi.n	a14, 0
	movi.n	a13, 1
	mov.n	a10, a13
	bltu	a9, a8, .LBB20_2
# %bb.1:
	mov.n	a10, a14
.LBB20_2:
	mov.n	a9, a13
	bltu	a8, a11, .LBB20_4
# %bb.3:
	mov.n	a9, a14
.LBB20_4:
	l32i.n	a12, a2, 12
	add.n	a9, a12, a9
	l32i.n	a15, a2, 20
	bltu	a15, a9, .LBB20_5
	j	.LBB20_12
.LBB20_5:
	beq	a15, a9, .LBB20_6
	j	.LBB20_13
.LBB20_6:
	beqz	a10, .LBB20_14
.LBB20_7:
	s32i.n	a3, a1, 12
	s32i.n	a2, a1, 16
	srli	a10, a12, 1
	or	a10, a12, a10
	srli	a13, a10, 2
	or	a10, a10, a13
	srli	a13, a10, 4
	or	a10, a10, a13
	srli	a13, a10, 8
	or	a10, a10, a13
	movi.n	a14, 16
	ssr	a14
	srl	a13, a10
	or	a10, a10, a13
	movi.n	a15, -1
	xor	a10, a10, a15
	srli	a13, a10, 1
	l32r	a6, .LCPI20_0
	and	a13, a13, a6
	sub	a10, a10, a13
	l32r	a5, .LCPI20_1
	and	a13, a10, a5
	srli	a10, a10, 2
	and	a10, a10, a5
	add.n	a10, a13, a10
	srli	a13, a10, 4
	add.n	a10, a10, a13
	l32r	a4, .LCPI20_2
	and	a10, a10, a4
	l32r	a3, .LCPI20_3
	mull	a10, a10, a3
	movi.n	a2, 24
	ssr	a2
	srl	a13, a10
	srli	a10, a11, 1
	or	a10, a11, a10
	srli	a11, a10, 2
	or	a10, a10, a11
	srli	a11, a10, 4
	or	a10, a10, a11
	srli	a11, a10, 8
	or	a10, a10, a11
	ssr	a14
	srl	a11, a10
	or	a10, a10, a11
	xor	a10, a10, a15
	srli	a11, a10, 1
	and	a11, a11, a6
	sub	a10, a10, a11
	and	a11, a10, a5
	srli	a10, a10, 2
	and	a10, a10, a5
	add.n	a10, a11, a10
	srli	a11, a10, 4
	add.n	a10, a10, a11
	and	a10, a10, a4
	mull	a10, a10, a3
	ssr	a2
	srl	a11, a10
	movi.n	a10, 0
	bne	a12, a10, .LBB20_9
# %bb.8:
	addi	a13, a11, 32
.LBB20_9:
	l32i.n	a5, a1, 16
	beqz	a13, .LBB20_15
# %bb.10:
	movi.n	a12, 1
	movi.n	a11, 64
	xor	a12, a13, a12
	bnez	a12, .LBB20_16
# %bb.11:
	movi.n	a11, 63
	j	.LBB20_17
.LBB20_12:
	mov.n	a13, a14
	bne	a15, a9, .LBB20_13
	j	.LBB20_6
.LBB20_13:
	mov.n	a10, a13
	bnez	a10, .LBB20_7
.LBB20_14:
	l32i.n	a10, a2, 24
	j	.LBB20_32
.LBB20_15:
	mov.n	a11, a10
	j	.LBB20_17
.LBB20_16:
	sub	a11, a11, a13
.LBB20_17:
	movi.n	a13, 1
	ssl	a11
	src	a12, a10, a13
	sll	a15, a13
	movi.n	a14, 32
	and	a6, a11, a14
	mov.n	a11, a15
	bne	a6, a10, .LBB20_18
	j	.LBB20_36
.LBB20_18:
	mov.n	a14, a13
	bltu	a9, a11, .LBB20_19
	j	.LBB20_37
.LBB20_19:
	mov.n	a12, a10
	bne	a6, a10, .LBB20_20
	j	.LBB20_38
.LBB20_20:
	mov.n	a15, a13
	bltu	a8, a12, .LBB20_21
	j	.LBB20_39
.LBB20_21:
	beq	a11, a9, .LBB20_22
	j	.LBB20_40
.LBB20_22:
	bne	a15, a10, .LBB20_24
.LBB20_23:
	mov.n	a12, a8
.LBB20_24:
	movi.n	a8, 8
	mov.n	a14, a13
	bltu	a8, a12, .LBB20_25
	j	.LBB20_41
.LBB20_25:
	bne	a15, a10, .LBB20_26
	j	.LBB20_42
.LBB20_26:
	bne	a11, a10, .LBB20_27
	j	.LBB20_43
.LBB20_27:
	beq	a11, a10, .LBB20_28
	j	.LBB20_44
.LBB20_28:
	bne	a14, a10, .LBB20_29
	j	.LBB20_45
.LBB20_29:
	s32i.n	a11, a5, 20
	bne	a14, a10, .LBB20_31
.LBB20_30:
	mov.n	a12, a8
.LBB20_31:
	s32i.n	a12, a5, 16
	movi.n	a8, 29
	ssr	a8
	srl	a8, a12
	slli	a9, a11, 3
	or	a8, a9, a8
	s32i.n	a8, a1, 8
	slli	a8, a12, 3
	s32i.n	a8, a1, 4
	l32i.n	a8, a5, 24
	s32i.n	a8, a1, 0
	l32r	a8, .LCPI20_4
	callx8	a8
	l32r	a8, .LCPI20_5
	l32i.n	a11, a1, 0
	l32i.n	a12, a1, 4
	l32i.n	a13, a1, 8
	callx8	a8
	l32i.n	a2, a1, 16
	s32i.n	a10, a2, 24
	l32i.n	a11, a2, 8
	l32i.n	a3, a1, 12
.LBB20_32:
	addx4	a8, a11, a10
	s32i.n	a3, a8, 0
	l32i.n	a8, a2, 8
	addi.n	a9, a8, 1
	s32i.n	a9, a2, 8
	bltu	a9, a8, .LBB20_34
# %bb.33:
	movi.n	a8, 0
	j	.LBB20_35
.LBB20_34:
	movi.n	a8, 1
.LBB20_35:
	l32i.n	a9, a2, 12
	add.n	a8, a9, a8
	s32i.n	a8, a2, 12
	l32r	a2, .LCPI20_6
	retw.n
.LBB20_36:
	mov.n	a11, a12
	mov.n	a14, a13
	bgeu	a9, a11, .LBB20_37
	j	.LBB20_19
.LBB20_37:
	mov.n	a14, a10
	mov.n	a12, a10
	beq	a6, a10, .LBB20_38
	j	.LBB20_20
.LBB20_38:
	mov.n	a12, a15
	mov.n	a15, a13
	bgeu	a8, a12, .LBB20_39
	j	.LBB20_21
.LBB20_39:
	mov.n	a15, a10
	bne	a11, a9, .LBB20_40
	j	.LBB20_22
.LBB20_40:
	mov.n	a15, a14
	bne	a15, a10, .LBB20_46
	j	.LBB20_23
.LBB20_46:
	j	.LBB20_24
.LBB20_41:
	mov.n	a14, a10
	beq	a15, a10, .LBB20_42
	j	.LBB20_26
.LBB20_42:
	mov.n	a11, a9
	beq	a11, a10, .LBB20_43
	j	.LBB20_27
.LBB20_43:
	mov.n	a13, a10
	bne	a11, a10, .LBB20_44
	j	.LBB20_28
.LBB20_44:
	mov.n	a14, a13
	beq	a14, a10, .LBB20_45
	j	.LBB20_29
.LBB20_45:
	mov.n	a11, a10
	s32i.n	a11, a5, 20
	bne	a14, a10, .LBB20_47
	j	.LBB20_30
.LBB20_47:
	j	.LBB20_31
.Lfunc_end20:
	.size	.L__unnamed_19, .Lfunc_end20-.L__unnamed_19
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI21_0, 1431655765
	.literal .LCPI21_1, 858993459
	.literal .LCPI21_2, 252645135
	.literal .LCPI21_3, 16843009
	.literal .LCPI21_4, pony_ctx
	.literal .LCPI21_5, pony_realloc
	.literal .LCPI21_6, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_20,@function
.L__unnamed_20:                         # @43
# %bb.0:
	entry	a1, 48
	l32i.n	a9, a2, 20
	movi.n	a11, 0
	movi.n	a8, 1
	mov.n	a10, a8
	bltu	a9, a5, .LBB21_5
# %bb.1:
	l32i.n	a12, a2, 16
	bltu	a12, a4, .LBB21_6
.LBB21_2:
	bne	a9, a5, .LBB21_7
.LBB21_3:
	beqz	a8, .LBB21_8
.LBB21_4:
	l32r	a2, .LCPI21_6
	retw.n
.LBB21_5:
	mov.n	a10, a11
	l32i.n	a12, a2, 16
	bgeu	a12, a4, .LBB21_2
.LBB21_6:
	mov.n	a8, a11
	beq	a9, a5, .LBB21_3
.LBB21_7:
	mov.n	a8, a10
	bnez	a8, .LBB21_4
.LBB21_8:
	addi.n	a10, a4, -1
	movi.n	a8, 0
	s32i.n	a2, a1, 12
	s32i.n	a4, a1, 8
	bltu	a10, a4, .LBB21_10
# %bb.9:
	mov.n	a9, a8
	j	.LBB21_11
.LBB21_10:
	movi.n	a9, 1
.LBB21_11:
	mov.n	a4, a8
	add.n	a9, a5, a9
	addi.n	a9, a9, -1
	srli	a11, a9, 1
	or	a11, a9, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI21_0
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI21_1
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI21_2
	and	a11, a11, a6
	l32r	a3, .LCPI21_3
	mull	a11, a11, a3
	movi.n	a2, 24
	ssr	a2
	srl	a11, a11
	srli	a8, a10, 1
	or	a8, a10, a8
	srli	a10, a8, 2
	or	a8, a8, a10
	srli	a10, a8, 4
	or	a8, a8, a10
	srli	a10, a8, 8
	or	a8, a8, a10
	ssr	a12
	srl	a10, a8
	or	a8, a8, a10
	xor	a8, a8, a13
	srli	a10, a8, 1
	and	a10, a10, a15
	sub	a8, a8, a10
	and	a10, a8, a14
	srli	a8, a8, 2
	and	a8, a8, a14
	add.n	a8, a10, a8
	srli	a10, a8, 4
	add.n	a8, a8, a10
	and	a8, a8, a6
	mull	a8, a8, a3
	ssr	a2
	srl	a10, a8
	bne	a9, a4, .LBB21_13
# %bb.12:
	addi	a11, a10, 32
.LBB21_13:
	l32i.n	a15, a1, 12
	beqz	a11, .LBB21_17
# %bb.14:
	movi.n	a9, 1
	movi.n	a8, 64
	xor	a9, a11, a9
	bnez	a9, .LBB21_16
# %bb.15:
	movi.n	a4, 63
	j	.LBB21_17
.LBB21_16:
	sub	a4, a8, a11
.LBB21_17:
	movi.n	a11, 1
	movi.n	a9, 0
	ssl	a4
	src	a10, a9, a11
	sll	a13, a11
	movi.n	a8, 32
	and	a14, a4, a8
	mov.n	a8, a13
	beq	a14, a9, .LBB21_33
# %bb.18:
	mov.n	a12, a11
	bgeu	a5, a8, .LBB21_34
.LBB21_19:
	mov.n	a10, a9
	bne	a14, a9, .LBB21_21
.LBB21_20:
	mov.n	a10, a13
.LBB21_21:
	mov.n	a14, a11
	l32i.n	a4, a1, 8
	bgeu	a4, a10, .LBB21_35
# %bb.22:
	bne	a8, a5, .LBB21_36
.LBB21_23:
	bne	a14, a9, .LBB21_25
.LBB21_24:
	mov.n	a10, a4
.LBB21_25:
	movi.n	a12, 8
	mov.n	a13, a11
	bgeu	a12, a10, .LBB21_37
# %bb.26:
	beq	a14, a9, .LBB21_38
.LBB21_27:
	beq	a8, a9, .LBB21_39
.LBB21_28:
	bne	a8, a9, .LBB21_40
.LBB21_29:
	beq	a13, a9, .LBB21_41
.LBB21_30:
	s32i.n	a8, a15, 20
	bne	a13, a9, .LBB21_32
.LBB21_31:
	mov.n	a10, a12
.LBB21_32:
	s32i.n	a10, a15, 16
	movi.n	a9, 29
	ssr	a9
	srl	a9, a10
	slli	a8, a8, 3
	or	a8, a8, a9
	s32i.n	a8, a1, 8
	slli	a8, a10, 3
	s32i.n	a8, a1, 4
	l32i.n	a8, a15, 24
	s32i.n	a8, a1, 0
	l32r	a8, .LCPI21_4
	callx8	a8
	l32r	a8, .LCPI21_5
	l32i.n	a11, a1, 0
	l32i.n	a12, a1, 4
	l32i.n	a13, a1, 8
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 24
	l32r	a2, .LCPI21_6
	retw.n
.LBB21_33:
	mov.n	a8, a10
	mov.n	a12, a11
	bltu	a5, a8, .LBB21_19
.LBB21_34:
	mov.n	a12, a9
	mov.n	a10, a9
	beq	a14, a9, .LBB21_20
	j	.LBB21_21
.LBB21_35:
	mov.n	a14, a9
	beq	a8, a5, .LBB21_23
.LBB21_36:
	mov.n	a14, a12
	beq	a14, a9, .LBB21_24
	j	.LBB21_25
.LBB21_37:
	mov.n	a13, a9
	bne	a14, a9, .LBB21_27
.LBB21_38:
	mov.n	a8, a5
	bne	a8, a9, .LBB21_28
.LBB21_39:
	mov.n	a11, a9
	beq	a8, a9, .LBB21_29
.LBB21_40:
	mov.n	a13, a11
	bne	a13, a9, .LBB21_30
.LBB21_41:
	mov.n	a8, a9
	s32i.n	a8, a15, 20
	beq	a13, a9, .LBB21_31
	j	.LBB21_32
.Lfunc_end21:
	.size	.L__unnamed_20, .Lfunc_end21-.L__unnamed_20
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI22_0, 1431655765
	.literal .LCPI22_1, 858993459
	.literal .LCPI22_2, 252645135
	.literal .LCPI22_3, 16843009
	.literal .LCPI22_4, pony_ctx
	.literal .LCPI22_5, pony_alloc
	.p2align	2
	.type	.L__unnamed_21,@function
.L__unnamed_21:                         # @44
# %bb.0:
	entry	a1, 48
	movi.n	a8, 0
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 8
	or	a9, a4, a5
	beqz	a9, .LBB22_3
# %bb.1:
	addi.n	a10, a4, -1
	s32i.n	a2, a1, 8
	bltu	a10, a4, .LBB22_4
# %bb.2:
	mov.n	a9, a8
	j	.LBB22_5
.LBB22_3:
	movi.n	a8, 0
	s32i.n	a8, a2, 28
	s32i.n	a8, a2, 24
	s32i.n	a8, a2, 20
	s32i.n	a8, a2, 16
	retw.n
.LBB22_4:
	movi.n	a9, 1
.LBB22_5:
	s32i.n	a5, a1, 4
	add.n	a9, a5, a9
	addi.n	a5, a9, -1
	srli	a11, a5, 1
	or	a11, a5, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI22_0
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI22_1
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI22_2
	and	a11, a11, a6
	l32r	a3, .LCPI22_3
	mull	a11, a11, a3
	movi.n	a2, 24
	ssr	a2
	srl	a11, a11
	srli	a9, a10, 1
	or	a9, a10, a9
	srli	a10, a9, 2
	or	a9, a9, a10
	srli	a10, a9, 4
	or	a9, a9, a10
	srli	a10, a9, 8
	or	a9, a9, a10
	ssr	a12
	srl	a10, a9
	or	a9, a9, a10
	xor	a9, a9, a13
	srli	a10, a9, 1
	and	a10, a10, a15
	sub	a9, a9, a10
	and	a10, a9, a14
	srli	a9, a9, 2
	and	a9, a9, a14
	add.n	a9, a10, a9
	srli	a10, a9, 4
	add.n	a9, a9, a10
	and	a9, a9, a6
	mull	a9, a9, a3
	ssr	a2
	srl	a10, a9
	bne	a5, a8, .LBB22_7
# %bb.6:
	addi	a11, a10, 32
.LBB22_7:
	l32i.n	a15, a1, 8
	beqz	a11, .LBB22_10
# %bb.8:
	movi.n	a9, 1
	movi.n	a8, 64
	l32i.n	a6, a1, 4
	xor	a9, a11, a9
	bnez	a9, .LBB22_11
# %bb.9:
	movi.n	a8, 63
	j	.LBB22_12
.LBB22_10:
	l32i.n	a6, a1, 4
	j	.LBB22_12
.LBB22_11:
	sub	a8, a8, a11
.LBB22_12:
	movi.n	a11, 1
	movi.n	a9, 0
	ssl	a8
	src	a10, a9, a11
	sll	a13, a11
	movi.n	a12, 32
	and	a14, a8, a12
	mov.n	a8, a13
	beq	a14, a9, .LBB22_27
# %bb.13:
	mov.n	a12, a11
	bgeu	a6, a8, .LBB22_28
.LBB22_14:
	mov.n	a10, a9
	beq	a14, a9, .LBB22_29
.LBB22_15:
	mov.n	a14, a11
	bgeu	a4, a10, .LBB22_30
.LBB22_16:
	bne	a8, a6, .LBB22_31
.LBB22_17:
	bne	a14, a9, .LBB22_19
.LBB22_18:
	mov.n	a10, a4
.LBB22_19:
	movi.n	a12, 8
	mov.n	a13, a11
	bgeu	a12, a10, .LBB22_32
# %bb.20:
	beq	a14, a9, .LBB22_33
.LBB22_21:
	beq	a8, a9, .LBB22_34
.LBB22_22:
	bne	a8, a9, .LBB22_35
.LBB22_23:
	beq	a13, a9, .LBB22_36
.LBB22_24:
	s32i.n	a8, a15, 20
	bne	a13, a9, .LBB22_26
.LBB22_25:
	mov.n	a10, a12
.LBB22_26:
	s32i.n	a10, a15, 16
	movi.n	a9, 29
	ssr	a9
	srl	a9, a10
	slli	a8, a8, 3
	or	a8, a8, a9
	s32i.n	a8, a1, 4
	slli	a8, a10, 3
	s32i.n	a8, a1, 0
	l32r	a8, .LCPI22_4
	callx8	a8
	l32r	a8, .LCPI22_5
	l32i.n	a12, a1, 0
	l32i.n	a13, a1, 4
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a10, a8, 24
	retw.n
.LBB22_27:
	mov.n	a8, a10
	mov.n	a12, a11
	bltu	a6, a8, .LBB22_14
.LBB22_28:
	mov.n	a12, a9
	mov.n	a10, a9
	bne	a14, a9, .LBB22_15
.LBB22_29:
	mov.n	a10, a13
	mov.n	a14, a11
	bltu	a4, a10, .LBB22_16
.LBB22_30:
	mov.n	a14, a9
	beq	a8, a6, .LBB22_17
.LBB22_31:
	mov.n	a14, a12
	beq	a14, a9, .LBB22_18
	j	.LBB22_19
.LBB22_32:
	mov.n	a13, a9
	bne	a14, a9, .LBB22_21
.LBB22_33:
	mov.n	a8, a6
	bne	a8, a9, .LBB22_22
.LBB22_34:
	mov.n	a11, a9
	beq	a8, a9, .LBB22_23
.LBB22_35:
	mov.n	a13, a11
	bne	a13, a9, .LBB22_24
.LBB22_36:
	mov.n	a8, a9
	s32i.n	a8, a15, 20
	beq	a13, a9, .LBB22_25
	j	.LBB22_26
.Lfunc_end22:
	.size	.L__unnamed_21, .Lfunc_end22-.L__unnamed_21
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_22,@function
.L__unnamed_22:                         # @45
# %bb.0:
	entry	a1, 32
	l8ui	a8, a2, 4
	movi.n	a9, 1
	and	a2, a8, a9
	movi.n	a3, 0
	retw.n
.Lfunc_end23:
	.size	.L__unnamed_22, .Lfunc_end23-.L__unnamed_22
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_23,@function
.L__unnamed_23:                         # @46
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 8
	l32i.n	a3, a2, 12
	mov.n	a2, a8
	retw.n
.Lfunc_end24:
	.size	.L__unnamed_23, .Lfunc_end24-.L__unnamed_23
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI25_0, pony_ctx
	.literal .LCPI25_1, pony_alloc_msg
	.literal .LCPI25_2, pony_sendv_single
	.p2align	2
	.type	.L__unnamed_24,@function
.L__unnamed_24:                         # @47
# %bb.0:
	entry	a1, 48
	s32i.n	a3, a1, 8
	s32i.n	a2, a1, 12
	l32r	a8, .LCPI25_0
	callx8	a8
	s32i.n	a10, a1, 4
	movi.n	a10, 0
	movi.n	a11, 1
	s32i.n	a11, a1, 0
	l32r	a8, .LCPI25_1
	callx8	a8
	mov.n	a12, a10
	l32i.n	a8, a1, 8
	l32i.n	a14, a1, 0
	and	a8, a8, a14
	s8i	a8, a12, 16
	l32r	a8, .LCPI25_2
	l32i.n	a10, a1, 4
	l32i.n	a11, a1, 12
	mov.n	a13, a12
	callx8	a8
	l32i.n	a2, a1, 12
	retw.n
.Lfunc_end25:
	.size	.L__unnamed_24, .Lfunc_end25-.L__unnamed_24
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI26_0, pony_ctx
	.literal .LCPI26_1, pony_alloc_small
	.literal .LCPI26_2, .L__unnamed_25
	.literal .LCPI26_3, 1431655765
	.literal .LCPI26_4, 858993459
	.literal .LCPI26_5, 252645135
	.literal .LCPI26_6, 16843009
	.literal .LCPI26_7, pony_alloc
	.literal .LCPI26_8, pony_os_stdin_read
	.literal .LCPI26_9, pony_asio_event_unsubscribe
	.literal .LCPI26_10, .L__unnamed_7
	.literal .LCPI26_11, 4097
	.literal .LCPI26_12, pony_alloc_msg
	.literal .LCPI26_13, pony_sendv
	.literal .LCPI26_14, pony_error
	.p2align	2
	.type	.L__unnamed_8,@function
.L__unnamed_8:                          # @48
.Lfunc_begin0:
# %bb.0:
	entry	a1, 96
	s32i.n	a2, a1, 24
	l32r	a8, .LCPI26_0
	callx8	a8
	s32i.n	a10, a1, 28
	l32i.n	a8, a1, 24
	l32i	a8, a8, 252
	s32i.n	a8, a1, 8
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 56
	l8ui	a8, a8, 0
	movi.n	a9, 32
	s32i.n	a9, a1, 4
	and	a8, a8, a9
	beqz	a8, .LBB26_65
# %bb.1:
	movi.n	a8, 0
	l32r	a9, .LCPI26_1
	s32i.n	a9, a1, 20
	l32r	a9, .LCPI26_2
	s32i.n	a9, a1, 16
	l32r	a9, .LCPI26_8
	s32i.n	a9, a1, 12
	movi.n	a9, 1
	s32i.n	a9, a1, 0
	s32i.n	a8, a1, 40
	s32i.n	a8, a1, 48
	s32i.n	a8, a1, 36
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	l32i.n	a8, a1, 24
	l32i	a9, a8, 260
	s32i.n	a9, a1, 56
	l32i	a8, a8, 256
	s32i.n	a8, a1, 52
	l32i.n	a10, a1, 28
	l32i.n	a11, a1, 48
	l32i.n	a8, a1, 20
	callx8	a8
	l32i.n	a12, a1, 52
	l32i.n	a13, a1, 56
	mov.n	a2, a10
	l32i.n	a10, a1, 48
	s32i.n	a10, a2, 8
	l32i.n	a8, a1, 16
	s32i.n	a8, a2, 0
	s32i.n	a10, a2, 12
	s32i.n	a10, a2, 16
	s32i.n	a10, a2, 20
	s32i.n	a10, a2, 24
	s32i.n	a10, a2, 28
	addi.n	a9, a2, 8
	or	a8, a12, a13
	s32i.n	a2, a1, 44
	beqz	a8, .LBB26_28
# %bb.3:                                #   in Loop: Header=BB26_2 Depth=1
	addi.n	a10, a12, -1
	movi.n	a8, 0
	s32i.n	a9, a1, 32
	bltu	a10, a12, .LBB26_5
# %bb.4:                                #   in Loop: Header=BB26_2 Depth=1
	mov.n	a9, a8
	j	.LBB26_6
.LBB26_5:                               #   in Loop: Header=BB26_2 Depth=1
	movi.n	a9, 1
.LBB26_6:                               #   in Loop: Header=BB26_2 Depth=1
	add.n	a9, a13, a9
	addi.n	a9, a9, -1
	srli	a11, a9, 1
	or	a11, a9, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI26_3
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI26_4
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI26_5
	and	a11, a11, a6
	l32r	a5, .LCPI26_6
	mull	a11, a11, a5
	movi.n	a4, 24
	ssr	a4
	srl	a11, a11
	srli	a3, a10, 1
	or	a10, a10, a3
	srli	a3, a10, 2
	or	a10, a10, a3
	srli	a3, a10, 4
	or	a10, a10, a3
	srli	a3, a10, 8
	or	a10, a10, a3
	ssr	a12
	srl	a12, a10
	or	a10, a10, a12
	xor	a10, a10, a13
	srli	a12, a10, 1
	and	a12, a12, a15
	sub	a10, a10, a12
	and	a12, a10, a14
	srli	a10, a10, 2
	and	a10, a10, a14
	add.n	a10, a12, a10
	srli	a12, a10, 4
	add.n	a10, a10, a12
	and	a10, a10, a6
	mull	a10, a10, a5
	ssr	a4
	srl	a10, a10
	bne	a9, a8, .LBB26_8
# %bb.7:                                #   in Loop: Header=BB26_2 Depth=1
	addi	a11, a10, 32
.LBB26_8:                               #   in Loop: Header=BB26_2 Depth=1
	l32i.n	a15, a1, 56
	beqz	a11, .LBB26_12
# %bb.9:                                #   in Loop: Header=BB26_2 Depth=1
	movi.n	a9, 1
	movi.n	a8, 64
	xor	a9, a11, a9
	bnez	a9, .LBB26_11
# %bb.10:                               #   in Loop: Header=BB26_2 Depth=1
	movi.n	a8, 63
	j	.LBB26_12
.LBB26_11:                              #   in Loop: Header=BB26_2 Depth=1
	sub	a8, a8, a11
.LBB26_12:                              #   in Loop: Header=BB26_2 Depth=1
	movi.n	a10, 1
	movi.n	a9, 0
	ssl	a8
	src	a12, a9, a10
	sll	a11, a10
	l32i.n	a13, a1, 4
	and	a14, a8, a13
	mov.n	a13, a11
	bne	a14, a9, .LBB26_13
	j	.LBB26_49
.LBB26_13:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a8, a10
	bltu	a15, a13, .LBB26_14
	j	.LBB26_50
.LBB26_14:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a12, a9
	bne	a14, a9, .LBB26_16
.LBB26_15:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a12, a11
.LBB26_16:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a14, a10
	l32i.n	a11, a1, 52
	bltu	a11, a12, .LBB26_17
	j	.LBB26_51
.LBB26_17:                              #   in Loop: Header=BB26_2 Depth=1
	beq	a13, a15, .LBB26_18
	j	.LBB26_52
.LBB26_18:                              #   in Loop: Header=BB26_2 Depth=1
	bne	a14, a9, .LBB26_20
.LBB26_19:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a12, a11
.LBB26_20:                              #   in Loop: Header=BB26_2 Depth=1
	movi.n	a8, 8
	mov.n	a11, a10
	bltu	a8, a12, .LBB26_21
	j	.LBB26_53
.LBB26_21:                              #   in Loop: Header=BB26_2 Depth=1
	bne	a14, a9, .LBB26_22
	j	.LBB26_54
.LBB26_22:                              #   in Loop: Header=BB26_2 Depth=1
	bne	a13, a9, .LBB26_23
	j	.LBB26_55
.LBB26_23:                              #   in Loop: Header=BB26_2 Depth=1
	beq	a13, a9, .LBB26_24
	j	.LBB26_56
.LBB26_24:                              #   in Loop: Header=BB26_2 Depth=1
	bne	a11, a9, .LBB26_25
	j	.LBB26_57
.LBB26_25:                              #   in Loop: Header=BB26_2 Depth=1
	s32i.n	a13, a2, 20
	bne	a11, a9, .LBB26_27
.LBB26_26:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a12, a8
.LBB26_27:                              #   in Loop: Header=BB26_2 Depth=1
	s32i.n	a12, a2, 16
	l32r	a8, .LCPI26_7
	l32i.n	a10, a1, 28
	callx8	a8
	l32i.n	a8, a1, 44
	s32i.n	a10, a8, 24
	l32i.n	a13, a1, 56
	l32i.n	a12, a1, 52
	l32i.n	a9, a1, 32
.LBB26_28:                              #   in Loop: Header=BB26_2 Depth=1
	s32i.n	a12, a9, 0
	s32i.n	a13, a9, 4
	l32i.n	a8, a1, 48
	s8i	a8, a1, 60
	addi	a14, a1, 60
	l32i.n	a8, a1, 12
	callx8	a8
	mov.n	a15, a11
	or	a8, a10, a15
	beqz	a8, .LBB26_62
# %bb.29:                               #   in Loop: Header=BB26_2 Depth=1
	and	a8, a10, a15
	bnei	a8, -1, .LBB26_30
	j	.LBB26_60
.LBB26_30:                              #   in Loop: Header=BB26_2 Depth=1
	l32i.n	a11, a1, 44
	l32i.n	a8, a11, 12
	movi.n	a9, 0
	movi.n	a14, 1
	mov.n	a12, a14
	bltu	a8, a15, .LBB26_32
# %bb.31:                               #   in Loop: Header=BB26_2 Depth=1
	mov.n	a12, a9
.LBB26_32:                              #   in Loop: Header=BB26_2 Depth=1
	l32i.n	a6, a11, 8
	mov.n	a13, a14
	bgeu	a6, a10, .LBB26_44
# %bb.33:                               #   in Loop: Header=BB26_2 Depth=1
	bne	a8, a15, .LBB26_45
.LBB26_34:                              #   in Loop: Header=BB26_2 Depth=1
	bne	a13, a9, .LBB26_36
.LBB26_35:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a6, a10
.LBB26_36:                              #   in Loop: Header=BB26_2 Depth=1
	s32i.n	a10, a1, 32
	s32i.n	a14, a1, 56
	s32i.n	a6, a11, 8
	bne	a13, a9, .LBB26_38
# %bb.37:                               #   in Loop: Header=BB26_2 Depth=1
	mov.n	a8, a15
.LBB26_38:                              #   in Loop: Header=BB26_2 Depth=1
	s32i.n	a15, a1, 52
	s32i.n	a8, a11, 12
	l32i.n	a10, a1, 8
	l32i.n	a8, a10, 0
	l32i	a8, a8, 64
	callx8	a8
	l8ui	a8, a1, 60
	l32i.n	a2, a1, 56
	and	a8, a8, a2
	beqz	a8, .LBB26_61
# %bb.39:                               #   in Loop: Header=BB26_2 Depth=1
	l32i.n	a12, a1, 40
	l32i.n	a11, a1, 32
	add.n	a12, a11, a12
	movi.n	a8, 0
	movi.n	a9, 1
	mov.n	a10, a9
	bltu	a12, a11, .LBB26_41
# %bb.40:                               #   in Loop: Header=BB26_2 Depth=1
	mov.n	a10, a8
.LBB26_41:                              #   in Loop: Header=BB26_2 Depth=1
	l32i.n	a11, a1, 36
	l32i.n	a13, a1, 52
	add.n	a11, a13, a11
	add.n	a11, a11, a10
	l32r	a10, .LCPI26_11
	bgeu	a12, a10, .LBB26_46
# %bb.42:                               #   in Loop: Header=BB26_2 Depth=1
	bne	a11, a8, .LBB26_47
.LBB26_43:                              #   in Loop: Header=BB26_2 Depth=1
	bnez	a9, .LBB26_48
	j	.LBB26_58
.LBB26_44:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a13, a9
	beq	a8, a15, .LBB26_34
.LBB26_45:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a13, a12
	beq	a13, a9, .LBB26_35
	j	.LBB26_36
.LBB26_46:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a9, a8
	beq	a11, a8, .LBB26_43
.LBB26_47:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a9, a8
	beqz	a9, .LBB26_58
.LBB26_48:                              #   in Loop: Header=BB26_2 Depth=1
	s32i.n	a11, a1, 36
	s32i.n	a12, a1, 40
	j	.LBB26_2
.LBB26_49:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a13, a12
	mov.n	a8, a10
	bgeu	a15, a13, .LBB26_50
	j	.LBB26_14
.LBB26_50:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a8, a9
	mov.n	a12, a9
	bne	a14, a9, .LBB26_70
	j	.LBB26_15
.LBB26_70:                              #   in Loop: Header=BB26_2 Depth=1
	j	.LBB26_16
.LBB26_51:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a14, a9
	bne	a13, a15, .LBB26_52
	j	.LBB26_18
.LBB26_52:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a14, a8
	bne	a14, a9, .LBB26_71
	j	.LBB26_19
.LBB26_71:                              #   in Loop: Header=BB26_2 Depth=1
	j	.LBB26_20
.LBB26_53:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a11, a9
	beq	a14, a9, .LBB26_54
	j	.LBB26_22
.LBB26_54:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a13, a15
	beq	a13, a9, .LBB26_55
	j	.LBB26_23
.LBB26_55:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a10, a9
	bne	a13, a9, .LBB26_56
	j	.LBB26_24
.LBB26_56:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a11, a10
	beq	a11, a9, .LBB26_57
	j	.LBB26_25
.LBB26_57:                              #   in Loop: Header=BB26_2 Depth=1
	mov.n	a13, a9
	s32i.n	a13, a2, 20
	bne	a11, a9, .LBB26_72
	j	.LBB26_26
.LBB26_72:                              #   in Loop: Header=BB26_2 Depth=1
	j	.LBB26_27
.LBB26_58:
	movi	a8, 268
	l32i.n	a9, a1, 24
	add.n	a8, a9, a8
	l8ui	a8, a8, 0
	movi.n	a2, 1
	and	a8, a8, a2
	beqz	a8, .LBB26_61
# %bb.59:
	movi.n	a10, 0
	movi.n	a11, 4
	l32r	a8, .LCPI26_12
	callx8	a8
	mov.n	a12, a10
	movi.n	a14, 1
	s32i.n	a14, a1, 56
	l32r	a8, .LCPI26_13
	l32i.n	a10, a1, 28
	l32i.n	a11, a1, 24
	mov.n	a13, a12
	callx8	a8
	l32i.n	a2, a1, 56
	retw.n
.LBB26_60:
	l32i.n	a2, a1, 0
.LBB26_61:
	retw.n
.LBB26_62:
	l32i.n	a8, a1, 24
	l32i	a10, a8, 264
	beqz	a10, .LBB26_64
# %bb.63:
	l32r	a8, .LCPI26_9
	callx8	a8
	movi.n	a8, 0
	l32i.n	a9, a1, 24
	s32i	a8, a9, 264
.LBB26_64:
	l32i.n	a10, a1, 8
	l32i.n	a8, a10, 0
	l32i	a8, a8, 68
	callx8	a8
	l32r	a8, .LCPI26_10
	l32i.n	a9, a1, 24
	s32i	a8, a9, 252
	movi.n	a2, 0
	retw.n
.LBB26_65:
.Ltmp0:
	l32r	a8, .LCPI26_14
	callx8	a8
.Ltmp1:
# %bb.66:
.LBB26_67:
.Ltmp2:
	l32i.n	a8, a1, 24
	l32i	a10, a8, 264
	beqz	a10, .LBB26_69
# %bb.68:
	l32r	a8, .LCPI26_9
	callx8	a8
	movi.n	a2, 0
	l32i.n	a8, a1, 24
	s32i	a2, a8, 264
	retw.n
.LBB26_69:
	movi.n	a2, 0
	retw.n
.Lfunc_end26:
	.size	.L__unnamed_8, .Lfunc_end26-.L__unnamed_8
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table26:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0          #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   #     jumps to .Ltmp2
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp1-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp1    #   Call between .Ltmp1 and .Lfunc_end26
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.text
	.literal_position               # -- Begin function 
	.literal .LCPI27_0, pony_ctx
	.literal .LCPI27_1, pony_alloc_msg
	.literal .LCPI27_2, pony_sendv
	.literal .LCPI27_3, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_26,@function
.L__unnamed_26:                         # @49
# %bb.0:
	entry	a1, 40
	s32i.n	a2, a1, 4
	l32r	a8, .LCPI27_0
	callx8	a8
	s32i.n	a10, a1, 0
	movi.n	a10, 0
	movi.n	a11, 4
	l32r	a8, .LCPI27_1
	callx8	a8
	mov.n	a12, a10
	movi.n	a14, 1
	l32r	a8, .LCPI27_2
	l32i.n	a10, a1, 0
	l32i.n	a11, a1, 4
	mov.n	a13, a12
	callx8	a8
	l32r	a2, .LCPI27_3
	retw.n
.Lfunc_end27:
	.size	.L__unnamed_26, .Lfunc_end27-.L__unnamed_26
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI28_0, pony_asio_event_unsubscribe
	.literal .LCPI28_1, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_27,@function
.L__unnamed_27:                         # @50
# %bb.0:
	entry	a1, 40
	l32i	a10, a2, 264
	beqz	a10, .LBB28_2
# %bb.1:
	l32r	a8, .LCPI28_0
	s32i.n	a2, a1, 0
	callx8	a8
	movi.n	a8, 0
	l32i.n	a9, a1, 0
	s32i	a8, a9, 264
.LBB28_2:
	l32r	a2, .LCPI28_1
	retw.n
.Lfunc_end28:
	.size	.L__unnamed_27, .Lfunc_end28-.L__unnamed_27
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI29_0, pony_ctx
	.literal .LCPI29_1, pony_alloc_msg
	.literal .LCPI29_2, pony_gc_send
	.literal .LCPI29_3, .L__unnamed_6
	.literal .LCPI29_4, pony_traceknown
	.literal .LCPI29_5, pony_send_done
	.literal .LCPI29_6, pony_sendv
	.literal .LCPI29_7, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_28,@function
.L__unnamed_28:                         # @51
# %bb.0:
	entry	a1, 56
	s32i.n	a5, a1, 0
	s32i.n	a4, a1, 4
	s32i.n	a3, a1, 16
	s32i.n	a2, a1, 12
	l32r	a8, .LCPI29_0
	callx8	a8
	s32i.n	a10, a1, 20
	movi.n	a10, 0
	l32r	a8, .LCPI29_1
	mov.n	a11, a10
	callx8	a8
	s32i.n	a10, a1, 8
	l32i.n	a8, a1, 0
	s32i.n	a8, a10, 28
	l32i.n	a8, a1, 4
	s32i.n	a8, a10, 24
	l32i.n	a8, a1, 16
	s32i.n	a8, a10, 16
	l32r	a8, .LCPI29_2
	l32i.n	a10, a1, 20
	callx8	a8
	l32r	a12, .LCPI29_3
	movi.n	a13, 2
	l32r	a8, .LCPI29_4
	l32i.n	a10, a1, 20
	l32i.n	a11, a1, 16
	callx8	a8
	l32r	a8, .LCPI29_5
	l32i.n	a10, a1, 20
	callx8	a8
	movi.n	a14, 1
	l32r	a8, .LCPI29_6
	l32i.n	a10, a1, 20
	l32i.n	a11, a1, 12
	l32i.n	a12, a1, 8
	mov.n	a13, a12
	callx8	a8
	l32r	a2, .LCPI29_7
	retw.n
.Lfunc_end29:
	.size	.L__unnamed_28, .Lfunc_end29-.L__unnamed_28
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_29,@function
.L__unnamed_29:                         # @52
# %bb.0:
	entry	a1, 32
	l32i.n	a2, a2, 4
	movi.n	a3, 0
	retw.n
.Lfunc_end30:
	.size	.L__unnamed_29, .Lfunc_end30-.L__unnamed_29
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_30,@function
.L__unnamed_30:                         # @53
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 8
	l32i.n	a3, a2, 12
	mov.n	a2, a8
	retw.n
.Lfunc_end31:
	.size	.L__unnamed_30, .Lfunc_end31-.L__unnamed_30
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_31,@function
.L__unnamed_31:                         # @54
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 8
	l32i.n	a3, a2, 12
	mov.n	a2, a8
	retw.n
.Lfunc_end32:
	.size	.L__unnamed_31, .Lfunc_end32-.L__unnamed_31
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI33_0, 1431655765
	.literal .LCPI33_1, 858993459
	.literal .LCPI33_2, 252645135
	.literal .LCPI33_3, 16843009
	.literal .LCPI33_4, pony_ctx
	.literal .LCPI33_5, pony_realloc
	.literal .LCPI33_6, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_32,@function
.L__unnamed_32:                         # @55
# %bb.0:
	entry	a1, 48
	l32i.n	a9, a2, 20
	movi.n	a11, 0
	movi.n	a8, 1
	mov.n	a10, a8
	bltu	a9, a5, .LBB33_5
# %bb.1:
	l32i.n	a12, a2, 16
	bltu	a12, a4, .LBB33_6
.LBB33_2:
	bne	a9, a5, .LBB33_7
.LBB33_3:
	beqz	a8, .LBB33_8
.LBB33_4:
	l32r	a2, .LCPI33_6
	retw.n
.LBB33_5:
	mov.n	a10, a11
	l32i.n	a12, a2, 16
	bgeu	a12, a4, .LBB33_2
.LBB33_6:
	mov.n	a8, a11
	beq	a9, a5, .LBB33_3
.LBB33_7:
	mov.n	a8, a10
	bnez	a8, .LBB33_4
.LBB33_8:
	addi.n	a10, a4, -1
	movi.n	a8, 0
	s32i.n	a2, a1, 12
	s32i.n	a4, a1, 8
	bltu	a10, a4, .LBB33_10
# %bb.9:
	mov.n	a9, a8
	j	.LBB33_11
.LBB33_10:
	movi.n	a9, 1
.LBB33_11:
	mov.n	a4, a8
	add.n	a9, a5, a9
	addi.n	a9, a9, -1
	srli	a11, a9, 1
	or	a11, a9, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI33_0
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI33_1
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI33_2
	and	a11, a11, a6
	l32r	a3, .LCPI33_3
	mull	a11, a11, a3
	movi.n	a2, 24
	ssr	a2
	srl	a11, a11
	srli	a8, a10, 1
	or	a8, a10, a8
	srli	a10, a8, 2
	or	a8, a8, a10
	srli	a10, a8, 4
	or	a8, a8, a10
	srli	a10, a8, 8
	or	a8, a8, a10
	ssr	a12
	srl	a10, a8
	or	a8, a8, a10
	xor	a8, a8, a13
	srli	a10, a8, 1
	and	a10, a10, a15
	sub	a8, a8, a10
	and	a10, a8, a14
	srli	a8, a8, 2
	and	a8, a8, a14
	add.n	a8, a10, a8
	srli	a10, a8, 4
	add.n	a8, a8, a10
	and	a8, a8, a6
	mull	a8, a8, a3
	ssr	a2
	srl	a10, a8
	bne	a9, a4, .LBB33_13
# %bb.12:
	addi	a11, a10, 32
.LBB33_13:
	l32i.n	a14, a1, 12
	beqz	a11, .LBB33_17
# %bb.14:
	movi.n	a9, 1
	movi.n	a8, 64
	xor	a9, a11, a9
	bnez	a9, .LBB33_16
# %bb.15:
	movi.n	a4, 63
	j	.LBB33_17
.LBB33_16:
	sub	a4, a8, a11
.LBB33_17:
	movi.n	a10, 1
	movi.n	a9, 0
	ssl	a4
	src	a13, a9, a10
	sll	a11, a10
	movi.n	a8, 32
	and	a12, a4, a8
	mov.n	a15, a11
	bne	a12, a9, .LBB33_19
# %bb.18:
	mov.n	a15, a13
.LBB33_19:
	mov.n	a8, a10
	bltu	a5, a15, .LBB33_21
# %bb.20:
	mov.n	a8, a9
.LBB33_21:
	mov.n	a13, a9
	l32i.n	a4, a1, 8
	beq	a12, a9, .LBB33_35
# %bb.22:
	mov.n	a12, a10
	bgeu	a4, a13, .LBB33_36
.LBB33_23:
	bne	a15, a5, .LBB33_37
.LBB33_24:
	bne	a12, a9, .LBB33_26
.LBB33_25:
	mov.n	a13, a4
.LBB33_26:
	movi.n	a8, 8
	mov.n	a11, a10
	bgeu	a8, a13, .LBB33_38
# %bb.27:
	beq	a12, a9, .LBB33_39
.LBB33_28:
	beq	a15, a9, .LBB33_40
.LBB33_29:
	bne	a15, a9, .LBB33_41
.LBB33_30:
	bne	a11, a9, .LBB33_32
.LBB33_31:
	mov.n	a15, a9
.LBB33_32:
	s32i.n	a15, a1, 8
	s32i.n	a15, a14, 20
	bne	a11, a9, .LBB33_34
# %bb.33:
	mov.n	a13, a8
.LBB33_34:
	s32i.n	a13, a1, 0
	s32i.n	a13, a14, 16
	l32i.n	a8, a14, 24
	s32i.n	a8, a1, 4
	l32r	a8, .LCPI33_4
	callx8	a8
	l32r	a8, .LCPI33_5
	l32i.n	a11, a1, 4
	l32i.n	a12, a1, 0
	l32i.n	a13, a1, 8
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 24
	l32r	a2, .LCPI33_6
	retw.n
.LBB33_35:
	mov.n	a13, a11
	mov.n	a12, a10
	bltu	a4, a13, .LBB33_23
.LBB33_36:
	mov.n	a12, a9
	beq	a15, a5, .LBB33_24
.LBB33_37:
	mov.n	a12, a8
	beq	a12, a9, .LBB33_25
	j	.LBB33_26
.LBB33_38:
	mov.n	a11, a9
	bne	a12, a9, .LBB33_28
.LBB33_39:
	mov.n	a15, a5
	bne	a15, a9, .LBB33_29
.LBB33_40:
	mov.n	a10, a9
	beq	a15, a9, .LBB33_30
.LBB33_41:
	mov.n	a11, a10
	beq	a11, a9, .LBB33_31
	j	.LBB33_32
.Lfunc_end33:
	.size	.L__unnamed_32, .Lfunc_end33-.L__unnamed_32
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_33,@function
.L__unnamed_33:                         # @56
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 24
	add.n	a2, a8, a4
	retw.n
.Lfunc_end34:
	.size	.L__unnamed_33, .Lfunc_end34-.L__unnamed_33
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI35_0, 1431655765
	.literal .LCPI35_1, 858993459
	.literal .LCPI35_2, 252645135
	.literal .LCPI35_3, 16843009
	.literal .LCPI35_4, pony_ctx
	.literal .LCPI35_5, pony_realloc
	.literal .LCPI35_6, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_34,@function
.L__unnamed_34:                         # @57
# %bb.0:
	entry	a1, 56
	l32i.n	a9, a2, 20
	movi.n	a11, 0
	movi.n	a8, 1
	mov.n	a10, a8
	bltu	a9, a5, .LBB35_4
# %bb.1:
	l32i.n	a12, a2, 16
	bltu	a12, a4, .LBB35_5
.LBB35_2:
	bne	a9, a5, .LBB35_6
.LBB35_3:
	beqz	a8, .LBB35_7
	j	.LBB35_32
.LBB35_4:
	mov.n	a10, a11
	l32i.n	a12, a2, 16
	bgeu	a12, a4, .LBB35_2
.LBB35_5:
	mov.n	a8, a11
	beq	a9, a5, .LBB35_3
.LBB35_6:
	mov.n	a8, a10
	bnez	a8, .LBB35_32
.LBB35_7:
	addi.n	a10, a4, -1
	movi.n	a8, 0
	s32i.n	a4, a1, 16
	bltu	a10, a4, .LBB35_9
# %bb.8:
	mov.n	a9, a8
	j	.LBB35_10
.LBB35_9:
	movi.n	a9, 1
.LBB35_10:
	s32i.n	a5, a1, 20
	add.n	a9, a5, a9
	addi.n	a9, a9, -1
	srli	a11, a9, 1
	or	a11, a9, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI35_0
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI35_1
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI35_2
	and	a11, a11, a6
	l32r	a5, .LCPI35_3
	mull	a11, a11, a5
	movi.n	a4, 24
	ssr	a4
	srl	a11, a11
	srli	a3, a10, 1
	or	a10, a10, a3
	srli	a3, a10, 2
	or	a10, a10, a3
	srli	a3, a10, 4
	or	a10, a10, a3
	srli	a3, a10, 8
	or	a10, a10, a3
	ssr	a12
	srl	a12, a10
	or	a10, a10, a12
	xor	a10, a10, a13
	srli	a12, a10, 1
	and	a12, a12, a15
	sub	a10, a10, a12
	and	a12, a10, a14
	srli	a10, a10, 2
	and	a10, a10, a14
	add.n	a10, a12, a10
	srli	a12, a10, 4
	add.n	a10, a10, a12
	and	a10, a10, a6
	mull	a10, a10, a5
	ssr	a4
	srl	a10, a10
	bne	a9, a8, .LBB35_12
# %bb.11:
	addi	a11, a10, 32
.LBB35_12:
	l32i.n	a14, a1, 20
	l32i.n	a15, a1, 16
	beqz	a11, .LBB35_16
# %bb.13:
	movi.n	a9, 1
	movi.n	a8, 64
	xor	a9, a11, a9
	bnez	a9, .LBB35_15
# %bb.14:
	movi.n	a8, 63
	j	.LBB35_16
.LBB35_15:
	sub	a8, a8, a11
.LBB35_16:
	movi.n	a10, 1
	movi.n	a9, 0
	ssl	a8
	src	a13, a9, a10
	sll	a11, a10
	movi.n	a12, 32
	and	a12, a8, a12
	mov.n	a6, a11
	beq	a12, a9, .LBB35_33
# %bb.17:
	mov.n	a8, a10
	bgeu	a14, a6, .LBB35_34
.LBB35_18:
	mov.n	a13, a9
	beq	a12, a9, .LBB35_35
.LBB35_19:
	mov.n	a12, a10
	bgeu	a15, a13, .LBB35_36
.LBB35_20:
	bne	a6, a14, .LBB35_37
.LBB35_21:
	bne	a12, a9, .LBB35_23
.LBB35_22:
	mov.n	a13, a15
.LBB35_23:
	movi.n	a8, 8
	mov.n	a11, a10
	bgeu	a8, a13, .LBB35_38
# %bb.24:
	beq	a12, a9, .LBB35_39
.LBB35_25:
	beq	a6, a9, .LBB35_40
.LBB35_26:
	bne	a6, a9, .LBB35_41
.LBB35_27:
	bne	a11, a9, .LBB35_29
.LBB35_28:
	mov.n	a6, a9
.LBB35_29:
	s32i.n	a6, a1, 8
	s32i.n	a6, a2, 20
	bne	a11, a9, .LBB35_31
# %bb.30:
	mov.n	a13, a8
.LBB35_31:
	s32i.n	a13, a1, 0
	s32i.n	a13, a2, 16
	l32i.n	a8, a2, 24
	s32i.n	a8, a1, 4
	l32r	a8, .LCPI35_4
	s32i.n	a2, a1, 12
	callx8	a8
	l32r	a8, .LCPI35_5
	l32i.n	a11, a1, 4
	l32i.n	a12, a1, 0
	l32i.n	a13, a1, 8
	callx8	a8
	l32i.n	a2, a1, 12
	s32i.n	a10, a2, 24
	l32i.n	a5, a1, 20
	l32i.n	a4, a1, 16
.LBB35_32:
	s32i.n	a4, a2, 8
	s32i.n	a5, a2, 12
	l32r	a2, .LCPI35_6
	retw.n
.LBB35_33:
	mov.n	a6, a13
	mov.n	a8, a10
	bltu	a14, a6, .LBB35_18
.LBB35_34:
	mov.n	a8, a9
	mov.n	a13, a9
	bne	a12, a9, .LBB35_19
.LBB35_35:
	mov.n	a13, a11
	mov.n	a12, a10
	bltu	a15, a13, .LBB35_20
.LBB35_36:
	mov.n	a12, a9
	beq	a6, a14, .LBB35_21
.LBB35_37:
	mov.n	a12, a8
	beq	a12, a9, .LBB35_22
	j	.LBB35_23
.LBB35_38:
	mov.n	a11, a9
	bne	a12, a9, .LBB35_25
.LBB35_39:
	mov.n	a6, a14
	bne	a6, a9, .LBB35_26
.LBB35_40:
	mov.n	a10, a9
	beq	a6, a9, .LBB35_27
.LBB35_41:
	mov.n	a11, a10
	beq	a11, a9, .LBB35_28
	j	.LBB35_29
.Lfunc_end35:
	.size	.L__unnamed_34, .Lfunc_end35-.L__unnamed_34
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI36_0, 1431655765
	.literal .LCPI36_1, 858993459
	.literal .LCPI36_2, 252645135
	.literal .LCPI36_3, 16843009
	.literal .LCPI36_4, pony_ctx
	.literal .LCPI36_5, pony_alloc
	.p2align	2
	.type	.L__unnamed_35,@function
.L__unnamed_35:                         # @58
# %bb.0:
	entry	a1, 48
	movi.n	a8, 0
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 8
	or	a9, a4, a5
	beqz	a9, .LBB36_3
# %bb.1:
	addi.n	a10, a4, -1
	s32i.n	a2, a1, 8
	bltu	a10, a4, .LBB36_4
# %bb.2:
	mov.n	a9, a8
	j	.LBB36_5
.LBB36_3:
	movi.n	a8, 0
	s32i.n	a8, a2, 28
	s32i.n	a8, a2, 24
	s32i.n	a8, a2, 20
	s32i.n	a8, a2, 16
	retw.n
.LBB36_4:
	movi.n	a9, 1
.LBB36_5:
	s32i.n	a5, a1, 4
	add.n	a9, a5, a9
	addi.n	a5, a9, -1
	srli	a11, a5, 1
	or	a11, a5, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI36_0
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI36_1
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI36_2
	and	a11, a11, a6
	l32r	a3, .LCPI36_3
	mull	a11, a11, a3
	movi.n	a2, 24
	ssr	a2
	srl	a11, a11
	srli	a9, a10, 1
	or	a9, a10, a9
	srli	a10, a9, 2
	or	a9, a9, a10
	srli	a10, a9, 4
	or	a9, a9, a10
	srli	a10, a9, 8
	or	a9, a9, a10
	ssr	a12
	srl	a10, a9
	or	a9, a9, a10
	xor	a9, a9, a13
	srli	a10, a9, 1
	and	a10, a10, a15
	sub	a9, a9, a10
	and	a10, a9, a14
	srli	a9, a9, 2
	and	a9, a9, a14
	add.n	a9, a10, a9
	srli	a10, a9, 4
	add.n	a9, a9, a10
	and	a9, a9, a6
	mull	a9, a9, a3
	ssr	a2
	srl	a10, a9
	bne	a5, a8, .LBB36_7
# %bb.6:
	addi	a11, a10, 32
.LBB36_7:
	l32i.n	a14, a1, 8
	beqz	a11, .LBB36_10
# %bb.8:
	movi.n	a9, 1
	movi.n	a8, 64
	l32i.n	a15, a1, 4
	xor	a9, a11, a9
	bnez	a9, .LBB36_11
# %bb.9:
	movi.n	a8, 63
	j	.LBB36_12
.LBB36_10:
	l32i.n	a15, a1, 4
	j	.LBB36_12
.LBB36_11:
	sub	a8, a8, a11
.LBB36_12:
	movi.n	a10, 1
	movi.n	a9, 0
	ssl	a8
	src	a13, a9, a10
	sll	a11, a10
	movi.n	a12, 32
	and	a12, a8, a12
	mov.n	a6, a11
	beq	a12, a9, .LBB36_28
# %bb.13:
	mov.n	a8, a10
	bgeu	a15, a6, .LBB36_29
.LBB36_14:
	mov.n	a13, a9
	beq	a12, a9, .LBB36_30
.LBB36_15:
	mov.n	a12, a10
	bgeu	a4, a13, .LBB36_31
.LBB36_16:
	bne	a6, a15, .LBB36_32
.LBB36_17:
	bne	a12, a9, .LBB36_19
.LBB36_18:
	mov.n	a13, a4
.LBB36_19:
	movi.n	a8, 8
	mov.n	a11, a10
	bgeu	a8, a13, .LBB36_33
# %bb.20:
	beq	a12, a9, .LBB36_34
.LBB36_21:
	beq	a6, a9, .LBB36_35
.LBB36_22:
	bne	a6, a9, .LBB36_36
.LBB36_23:
	bne	a11, a9, .LBB36_25
.LBB36_24:
	mov.n	a6, a9
.LBB36_25:
	s32i.n	a6, a1, 4
	s32i.n	a6, a14, 20
	bne	a11, a9, .LBB36_27
# %bb.26:
	mov.n	a13, a8
.LBB36_27:
	s32i.n	a13, a1, 0
	s32i.n	a13, a14, 16
	l32r	a8, .LCPI36_4
	callx8	a8
	l32r	a8, .LCPI36_5
	l32i.n	a12, a1, 0
	l32i.n	a13, a1, 4
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a10, a8, 24
	retw.n
.LBB36_28:
	mov.n	a6, a13
	mov.n	a8, a10
	bltu	a15, a6, .LBB36_14
.LBB36_29:
	mov.n	a8, a9
	mov.n	a13, a9
	bne	a12, a9, .LBB36_15
.LBB36_30:
	mov.n	a13, a11
	mov.n	a12, a10
	bltu	a4, a13, .LBB36_16
.LBB36_31:
	mov.n	a12, a9
	beq	a6, a15, .LBB36_17
.LBB36_32:
	mov.n	a12, a8
	beq	a12, a9, .LBB36_18
	j	.LBB36_19
.LBB36_33:
	mov.n	a11, a9
	bne	a12, a9, .LBB36_21
.LBB36_34:
	mov.n	a6, a15
	bne	a6, a9, .LBB36_22
.LBB36_35:
	mov.n	a10, a9
	beq	a6, a9, .LBB36_23
.LBB36_36:
	mov.n	a11, a10
	beq	a11, a9, .LBB36_24
	j	.LBB36_25
.Lfunc_end36:
	.size	.L__unnamed_35, .Lfunc_end36-.L__unnamed_35
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI37_0, .L__unnamed_7
	.p2align	2
	.type	.L__unnamed_36,@function
.L__unnamed_36:                         # @59
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 12
	movi.n	a9, 0
	movi.n	a10, 1
	mov.n	a12, a10
	bgeu	a8, a5, .LBB37_7
# %bb.1:
	l32i.n	a11, a2, 8
	bgeu	a11, a4, .LBB37_8
.LBB37_2:
	bne	a8, a5, .LBB37_9
.LBB37_3:
	beq	a10, a9, .LBB37_10
.LBB37_4:
	s32i.n	a11, a2, 8
	bne	a10, a9, .LBB37_6
.LBB37_5:
	mov.n	a8, a5
.LBB37_6:
	s32i.n	a8, a2, 12
	l32r	a2, .LCPI37_0
	retw.n
.LBB37_7:
	mov.n	a12, a9
	l32i.n	a11, a2, 8
	bltu	a11, a4, .LBB37_2
.LBB37_8:
	mov.n	a10, a9
	beq	a8, a5, .LBB37_3
.LBB37_9:
	mov.n	a10, a12
	bne	a10, a9, .LBB37_4
.LBB37_10:
	mov.n	a11, a4
	s32i.n	a11, a2, 8
	beq	a10, a9, .LBB37_5
	j	.LBB37_6
.Lfunc_end37:
	.size	.L__unnamed_36, .Lfunc_end37-.L__unnamed_36
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI38_0, pony_ctx
	.literal .LCPI38_1, .L__unnamed_38
	.literal .LCPI38_2, pony_os_stdout_setup
	.literal .LCPI38_3, pony_os_stdin_setup
	.literal .LCPI38_4, .L__unnamed_39
	.literal .LCPI38_5, pony_create
	.literal .LCPI38_6, pony_alloc_msg
	.literal .LCPI38_7, pony_sendv_single
	.literal .LCPI38_8, .L__unnamed_40
	.literal .LCPI38_9, .L__unnamed_41
	.p2align	2
	.type	.L__unnamed_37,@function
.L__unnamed_37:                         # @60
# %bb.0:
	entry	a1, 80
	s32i.n	a5, a1, 12
	s32i.n	a4, a1, 4
	s32i.n	a3, a1, 8
	s32i.n	a2, a1, 44
	l32r	a8, .LCPI38_0
	callx8	a8
	s32i.n	a10, a1, 40
	l32r	a8, .LCPI38_1
	l32i.n	a9, a1, 44
	s32i.n	a8, a9, 4
	l32r	a8, .LCPI38_2
	callx8	a8
	l32r	a8, .LCPI38_3
	callx8	a8
	s32i.n	a10, a1, 20
	l32r	a11, .LCPI38_4
	l32r	a8, .LCPI38_5
	s32i.n	a8, a1, 28
	l32i.n	a10, a1, 40
	l32i.n	a8, a1, 28
	callx8	a8
	s32i.n	a10, a1, 16
	movi.n	a10, 0
	s32i.n	a10, a1, 32
	movi.n	a11, 1
	s32i.n	a11, a1, 36
	l32r	a8, .LCPI38_6
	s32i.n	a8, a1, 24
	l32i.n	a8, a1, 24
	callx8	a8
	mov.n	a12, a10
	l32i.n	a14, a1, 36
	l32i.n	a8, a1, 20
	and	a8, a8, a14
	s8i	a8, a12, 16
	l32r	a8, .LCPI38_7
	s32i.n	a8, a1, 20
	l32i.n	a10, a1, 40
	l32i.n	a11, a1, 16
	mov.n	a13, a12
	l32i.n	a8, a1, 20
	callx8	a8
	l32i.n	a8, a1, 44
	l32i.n	a9, a1, 16
	s32i.n	a9, a8, 8
	l32r	a11, .LCPI38_8
	s32i.n	a11, a1, 0
	l32i.n	a10, a1, 40
	l32i.n	a8, a1, 28
	callx8	a8
	s32i.n	a10, a1, 16
	l32i.n	a10, a1, 32
	l32i.n	a11, a1, 36
	l32i.n	a8, a1, 24
	callx8	a8
	mov.n	a12, a10
	l32i.n	a10, a1, 40
	l32i.n	a11, a1, 16
	mov.n	a13, a12
	l32i.n	a14, a1, 36
	l32i.n	a8, a1, 20
	callx8	a8
	l32i.n	a8, a1, 44
	l32i.n	a9, a1, 16
	s32i.n	a9, a8, 12
	l32i.n	a10, a1, 40
	l32i.n	a11, a1, 0
	l32i.n	a8, a1, 28
	callx8	a8
	s32i.n	a10, a1, 28
	l32i.n	a10, a1, 32
	mov.n	a11, a10
	l32i.n	a8, a1, 24
	callx8	a8
	mov.n	a12, a10
	l32i.n	a10, a1, 40
	l32i.n	a11, a1, 28
	mov.n	a13, a12
	l32i.n	a14, a1, 36
	l32i.n	a8, a1, 20
	callx8	a8
	l32i.n	a10, a1, 44
	l32i.n	a8, a1, 28
	s32i.n	a8, a10, 16
	l32i.n	a11, a1, 4
	l32i.n	a12, a1, 8
	l32i.n	a13, a1, 32
	call8	.L__unnamed_42
	l32i.n	a11, a1, 12
	l32i.n	a8, a1, 44
	mov.n	a14, a8
	s32i.n	a10, a8, 20
	beqz	a11, .LBB38_6
# %bb.1:
	l32i.n	a8, a11, 0
	movi.n	a9, 0
	beqz	a8, .LBB38_7
# %bb.2:
	movi.n	a8, 0
	mov.n	a13, a9
	l32i.n	a15, a1, 36
	j	.LBB38_4
.LBB38_3:                               #   in Loop: Header=BB38_4 Depth=1
	add.n	a13, a13, a10
	addx4	a9, a12, a11
	l32i.n	a10, a9, 0
	mov.n	a9, a12
	beqz	a10, .LBB38_8
.LBB38_4:                               # =>This Inner Loop Header: Depth=1
	addi.n	a12, a9, 1
	mov.n	a10, a15
	bltu	a12, a9, .LBB38_3
# %bb.5:                                #   in Loop: Header=BB38_4 Depth=1
	mov.n	a10, a8
	j	.LBB38_3
.LBB38_6:
	l32i.n	a12, a1, 32
	mov.n	a13, a12
	j	.LBB38_8
.LBB38_7:
	mov.n	a12, a9
	mov.n	a13, a9
.LBB38_8:
	mov.n	a10, a14
	call8	.L__unnamed_42
	l32r	a8, .LCPI38_9
	l32i.n	a9, a1, 44
	s32i.n	a8, a9, 28
	s32i.n	a10, a9, 24
	retw.n
.Lfunc_end38:
	.size	.L__unnamed_37, .Lfunc_end38-.L__unnamed_37
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_43,@function
.L__unnamed_43:                         # @61
# %bb.0:
	entry	a1, 32
	beqz	a3, .LBB39_6
# %bb.1:
	l32i.n	a8, a3, 0
	movi.n	a11, 0
	beqz	a8, .LBB39_8
# %bb.2:
	movi.n	a9, 0
	movi.n	a10, 1
	mov.n	a8, a11
	j	.LBB39_4
.LBB39_3:                               #   in Loop: Header=BB39_4 Depth=1
	add.n	a8, a8, a12
	addx4	a11, a2, a3
	l32i.n	a12, a11, 0
	mov.n	a11, a2
	beqz	a12, .LBB39_7
.LBB39_4:                               # =>This Inner Loop Header: Depth=1
	addi.n	a2, a11, 1
	mov.n	a12, a10
	bltu	a2, a11, .LBB39_3
# %bb.5:                                #   in Loop: Header=BB39_4 Depth=1
	mov.n	a12, a9
	j	.LBB39_3
.LBB39_6:
	movi.n	a2, 0
	mov.n	a8, a2
.LBB39_7:
	mov.n	a3, a8
	retw.n
.LBB39_8:
	mov.n	a2, a11
	mov.n	a8, a11
	mov.n	a3, a8
	retw.n
.Lfunc_end39:
	.size	.L__unnamed_43, .Lfunc_end39-.L__unnamed_43
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI40_0, pony_ctx
	.literal .LCPI40_1, pony_alloc_small
	.literal .LCPI40_2, .L__unnamed_9
	.literal .LCPI40_3, 1431655765
	.literal .LCPI40_4, 858993459
	.literal .LCPI40_5, 252645135
	.literal .LCPI40_6, 16843009
	.literal .LCPI40_7, pony_alloc
	.literal .LCPI40_8, .L__unnamed_5
	.literal .LCPI40_9, memcpy
	.literal .LCPI40_10, pony_realloc
	.p2align	2
	.type	.L__unnamed_42,@function
.L__unnamed_42:                         # @62
# %bb.0:
	entry	a1, 152
	s32i	a5, a1, 76              # 4-byte Folded Spill
	s32i.n	a4, a1, 56
	s32i.n	a3, a1, 52
	l32r	a8, .LCPI40_0
	callx8	a8
	movi.n	a11, 0
	s32i	a11, a1, 112            # 4-byte Folded Spill
	l32r	a8, .LCPI40_1
	s32i	a10, a1, 100            # 4-byte Folded Spill
	s32i.n	a8, a1, 60
	callx8	a8
	l32i	a11, a1, 112            # 4-byte Folded Reload
	l32i	a12, a1, 76             # 4-byte Folded Reload
	mov.n	a2, a10
	l32i.n	a10, a1, 56
	s32i.n	a11, a2, 12
	s32i.n	a11, a2, 8
	l32r	a8, .LCPI40_2
	s32i.n	a8, a2, 0
	or	a8, a10, a12
	beqz	a8, .LBB40_3
# %bb.1:
	addi.n	a9, a10, -1
	s32i	a2, a1, 72              # 4-byte Folded Spill
	bltu	a9, a10, .LBB40_4
# %bb.2:
	mov.n	a8, a11
	j	.LBB40_5
.LBB40_3:
	movi.n	a8, 0
	s32i.n	a8, a2, 28
	s32i.n	a8, a2, 24
	s32i.n	a8, a2, 20
	s32i.n	a8, a2, 16
	j	.LBB40_88
.LBB40_4:
	movi.n	a8, 1
.LBB40_5:
	mov.n	a2, a11
	add.n	a8, a12, a8
	addi.n	a8, a8, -1
	srli	a10, a8, 1
	or	a10, a8, a10
	srli	a11, a10, 2
	or	a10, a10, a11
	srli	a11, a10, 4
	or	a10, a10, a11
	srli	a11, a10, 8
	or	a10, a10, a11
	movi.n	a13, 16
	ssr	a13
	srl	a11, a10
	or	a10, a10, a11
	movi.n	a14, -1
	xor	a10, a10, a14
	srli	a11, a10, 1
	l32r	a15, .LCPI40_3
	and	a11, a11, a15
	sub	a10, a10, a11
	l32r	a6, .LCPI40_4
	and	a11, a10, a6
	srli	a10, a10, 2
	and	a10, a10, a6
	add.n	a10, a11, a10
	srli	a11, a10, 4
	add.n	a10, a10, a11
	l32r	a5, .LCPI40_5
	and	a10, a10, a5
	l32r	a4, .LCPI40_6
	mull	a10, a10, a4
	movi.n	a3, 24
	ssr	a3
	srl	a10, a10
	srli	a11, a9, 1
	or	a9, a9, a11
	srli	a11, a9, 2
	or	a9, a9, a11
	srli	a11, a9, 4
	or	a9, a9, a11
	srli	a11, a9, 8
	or	a9, a9, a11
	s32i.n	a13, a1, 36
	ssr	a13
	srl	a11, a9
	or	a9, a9, a11
	s32i.n	a14, a1, 32
	xor	a9, a9, a14
	srli	a11, a9, 1
	s32i.n	a15, a1, 28
	and	a11, a11, a15
	sub	a9, a9, a11
	and	a11, a9, a6
	srli	a9, a9, 2
	s32i.n	a6, a1, 24
	and	a9, a9, a6
	add.n	a9, a11, a9
	srli	a11, a9, 4
	add.n	a9, a9, a11
	s32i.n	a5, a1, 20
	and	a9, a9, a5
	s32i.n	a4, a1, 16
	mull	a9, a9, a4
	s32i.n	a3, a1, 12
	ssr	a3
	srl	a9, a9
	bne	a8, a2, .LBB40_7
# %bb.6:
	addi	a10, a9, 32
.LBB40_7:
	movi.n	a9, 64
	l32i	a6, a1, 72              # 4-byte Folded Reload
	s32i.n	a9, a1, 0
	beqz	a10, .LBB40_11
# %bb.8:
	movi.n	a8, 1
	xor	a8, a10, a8
	bnez	a8, .LBB40_10
# %bb.9:
	movi.n	a2, 63
	j	.LBB40_11
.LBB40_10:
	sub	a2, a9, a10
.LBB40_11:
	movi.n	a8, 1
	movi.n	a13, 0
	ssl	a2
	src	a9, a13, a8
	sll	a10, a8
	movi.n	a11, 32
	s32i.n	a11, a1, 8
	and	a11, a2, a11
	mov.n	a14, a10
	s32i	a13, a1, 80             # 4-byte Folded Spill
	bne	a11, a13, .LBB40_13
# %bb.12:
	mov.n	a14, a9
.LBB40_13:
	mov.n	a9, a8
	bltu	a12, a14, .LBB40_15
# %bb.14:
	l32i	a9, a1, 80              # 4-byte Folded Reload
.LBB40_15:
	l32i	a13, a1, 80             # 4-byte Folded Reload
	mov.n	a15, a13
	bne	a11, a13, .LBB40_17
# %bb.16:
	mov.n	a15, a10
.LBB40_17:
	mov.n	a11, a8
	l32i.n	a10, a1, 56
	bltu	a10, a15, .LBB40_18
	j	.LBB40_89
.LBB40_18:
	beq	a14, a12, .LBB40_19
	j	.LBB40_90
.LBB40_19:
	l32i	a9, a1, 80              # 4-byte Folded Reload
	bne	a11, a9, .LBB40_21
.LBB40_20:
	mov.n	a15, a10
.LBB40_21:
	movi.n	a9, 8
	mov.n	a10, a8
	bltu	a9, a15, .LBB40_22
	j	.LBB40_91
.LBB40_22:
	l32i	a13, a1, 80             # 4-byte Folded Reload
	bne	a11, a13, .LBB40_23
	j	.LBB40_92
.LBB40_23:
	mov.n	a11, a13
	bne	a14, a11, .LBB40_24
	j	.LBB40_93
.LBB40_24:
	beq	a14, a11, .LBB40_25
	j	.LBB40_94
.LBB40_25:
	bne	a10, a11, .LBB40_26
	j	.LBB40_95
.LBB40_26:
	s32i.n	a14, a6, 20
	bne	a10, a11, .LBB40_28
.LBB40_27:
	mov.n	a15, a9
.LBB40_28:
	s32i.n	a15, a6, 16
	movi.n	a8, 29
	s32i.n	a8, a1, 4
	ssr	a8
	srl	a8, a15
	s32i	a14, a1, 68             # 4-byte Folded Spill
	slli	a9, a14, 3
	or	a13, a9, a8
	s32i	a15, a1, 64             # 4-byte Folded Spill
	slli	a12, a15, 3
	l32r	a8, .LCPI40_7
	l32i	a10, a1, 100            # 4-byte Folded Reload
	s32i.n	a8, a1, 40
	callx8	a8
	l32i	a8, a1, 72              # 4-byte Folded Reload
	s32i.n	a10, a8, 24
	l32r	a8, .LCPI40_8
	s32i.n	a8, a1, 48
	movi.n	a8, 1
	s32i.n	a8, a1, 44
	l32i	a11, a1, 80             # 4-byte Folded Reload
	mov.n	a13, a11
	mov.n	a14, a11
	j	.LBB40_30
.LBB40_29:                              #   in Loop: Header=BB40_30 Depth=1
	l32i	a11, a1, 80             # 4-byte Folded Reload
	beqz	a8, .LBB40_88
.LBB40_30:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_36 Depth 2
	s32i	a14, a1, 84             # 4-byte Folded Spill
	s32i	a13, a1, 112            # 4-byte Folded Spill
	s32i	a10, a1, 92             # 4-byte Folded Spill
	l32i.n	a8, a1, 52
	addx4	a8, a13, a8
	l32i.n	a8, a8, 0
	s32i	a8, a1, 104             # 4-byte Folded Spill
	l32i	a10, a1, 100            # 4-byte Folded Reload
	l32i.n	a8, a1, 60
	callx8	a8
	l32i	a9, a1, 112             # 4-byte Folded Reload
	mov.n	a14, a10
	l32i.n	a8, a1, 48
	s32i.n	a8, a14, 0
	addi.n	a8, a9, 1
	l32i.n	a13, a1, 44
	bltu	a8, a9, .LBB40_32
# %bb.31:                               #   in Loop: Header=BB40_30 Depth=1
	l32i	a13, a1, 80             # 4-byte Folded Reload
.LBB40_32:                              #   in Loop: Header=BB40_30 Depth=1
	s32i	a8, a1, 96              # 4-byte Folded Spill
	l32i	a15, a1, 104            # 4-byte Folded Reload
	s32i	a14, a1, 108            # 4-byte Folded Spill
	s32i	a13, a1, 88             # 4-byte Folded Spill
	beqz	a15, .LBB40_41
# %bb.33:                               #   in Loop: Header=BB40_30 Depth=1
	l8ui	a11, a15, 0
	movi.n	a8, 0
	mov.n	a10, a8
	mov.n	a9, a8
	bnez	a11, .LBB40_36
	j	.LBB40_38
.LBB40_34:                              #   in Loop: Header=BB40_36 Depth=2
	mov.n	a10, a8
.LBB40_35:                              #   in Loop: Header=BB40_36 Depth=2
	add.n	a9, a9, a10
	add.n	a10, a15, a11
	l8ui	a12, a10, 0
	mov.n	a10, a11
	beqz	a12, .LBB40_38
.LBB40_36:                              #   Parent Loop BB40_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.n	a11, a10, 1
	bgeu	a11, a10, .LBB40_34
# %bb.37:                               #   in Loop: Header=BB40_36 Depth=2
	movi.n	a10, 1
	j	.LBB40_35
.LBB40_38:                              #   in Loop: Header=BB40_30 Depth=1
	s32i.n	a10, a14, 8
	addi.n	a12, a10, 1
	s32i.n	a12, a14, 16
	s32i.n	a9, a14, 12
	bgeu	a12, a10, .LBB40_40
# %bb.39:                               #   in Loop: Header=BB40_30 Depth=1
	movi.n	a8, 1
.LBB40_40:                              #   in Loop: Header=BB40_30 Depth=1
	add.n	a13, a9, a8
	s32i.n	a13, a14, 20
	l32i	a10, a1, 100            # 4-byte Folded Reload
	l32i.n	a8, a1, 40
	callx8	a8
	l32i	a8, a1, 108             # 4-byte Folded Reload
	s32i.n	a10, a8, 24
	l32i.n	a12, a8, 16
	l32r	a8, .LCPI40_9
	l32i	a11, a1, 104            # 4-byte Folded Reload
	callx8	a8
	l32i	a11, a1, 76             # 4-byte Folded Reload
	l32i	a2, a1, 72              # 4-byte Folded Reload
	l32i	a10, a1, 92             # 4-byte Folded Reload
	l32i	a12, a1, 68             # 4-byte Folded Reload
	l32i	a13, a1, 64             # 4-byte Folded Reload
	l32i	a3, a1, 112             # 4-byte Folded Reload
	j	.LBB40_42
.LBB40_41:                              #   in Loop: Header=BB40_30 Depth=1
	movi.n	a11, 0
	s32i	a11, a1, 104            # 4-byte Folded Spill
	s32i.n	a11, a14, 20
	movi.n	a8, 1
	s32i.n	a8, a14, 16
	s32i.n	a11, a14, 12
	s32i.n	a11, a14, 8
	l32i	a10, a1, 100            # 4-byte Folded Reload
	l32i.n	a8, a1, 60
	callx8	a8
	l32i	a3, a1, 112             # 4-byte Folded Reload
	l32i	a8, a1, 108             # 4-byte Folded Reload
	s32i.n	a10, a8, 24
	l32i	a8, a1, 104             # 4-byte Folded Reload
	s8i	a8, a10, 0
	l32i	a11, a1, 76             # 4-byte Folded Reload
	l32i	a2, a1, 72              # 4-byte Folded Reload
	l32i	a10, a1, 92             # 4-byte Folded Reload
	l32i	a12, a1, 68             # 4-byte Folded Reload
	l32i	a13, a1, 64             # 4-byte Folded Reload
.LBB40_42:                              #   in Loop: Header=BB40_30 Depth=1
	l32i	a4, a1, 84              # 4-byte Folded Reload
	movi.n	a14, 0
	movi.n	a9, 1
	mov.n	a8, a9
	bgeu	a3, a13, .LBB40_47
# %bb.43:                               #   in Loop: Header=BB40_30 Depth=1
	bgeu	a4, a12, .LBB40_48
.LBB40_44:                              #   in Loop: Header=BB40_30 Depth=1
	l32i	a13, a1, 88             # 4-byte Folded Reload
	bne	a12, a4, .LBB40_49
.LBB40_45:                              #   in Loop: Header=BB40_30 Depth=1
	add.n	a14, a4, a13
	beqz	a8, .LBB40_50
.LBB40_46:                              #   in Loop: Header=BB40_30 Depth=1
	l32i	a13, a1, 96             # 4-byte Folded Reload
	j	.LBB40_74
.LBB40_47:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a8, a14
	bltu	a4, a12, .LBB40_44
.LBB40_48:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a9, a14
	l32i	a13, a1, 88             # 4-byte Folded Reload
	beq	a12, a4, .LBB40_45
.LBB40_49:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a8, a9
	add.n	a14, a4, a13
	bnez	a8, .LBB40_46
.LBB40_50:                              #   in Loop: Header=BB40_30 Depth=1
	s32i	a14, a1, 104            # 4-byte Folded Spill
	srli	a8, a4, 1
	or	a8, a4, a8
	srli	a9, a8, 2
	or	a8, a8, a9
	srli	a9, a8, 4
	or	a8, a8, a9
	srli	a9, a8, 8
	or	a8, a8, a9
	l32i.n	a11, a1, 36
	ssr	a11
	srl	a9, a8
	or	a8, a8, a9
	l32i.n	a12, a1, 32
	xor	a8, a8, a12
	srli	a9, a8, 1
	l32i.n	a13, a1, 28
	and	a9, a9, a13
	sub	a8, a8, a9
	l32i.n	a14, a1, 24
	and	a9, a8, a14
	srli	a8, a8, 2
	and	a8, a8, a14
	add.n	a8, a9, a8
	srli	a9, a8, 4
	add.n	a8, a8, a9
	l32i.n	a15, a1, 20
	and	a8, a8, a15
	l32i.n	a6, a1, 16
	mull	a8, a8, a6
	l32i.n	a5, a1, 12
	ssr	a5
	srl	a9, a8
	srli	a8, a3, 1
	or	a8, a3, a8
	srli	a10, a8, 2
	or	a8, a8, a10
	srli	a10, a8, 4
	or	a8, a8, a10
	srli	a10, a8, 8
	or	a8, a8, a10
	ssr	a11
	srl	a10, a8
	or	a8, a8, a10
	xor	a8, a8, a12
	srli	a10, a8, 1
	and	a10, a10, a13
	sub	a8, a8, a10
	and	a10, a8, a14
	srli	a8, a8, 2
	and	a8, a8, a14
	add.n	a8, a10, a8
	srli	a10, a8, 4
	add.n	a8, a8, a10
	and	a8, a8, a15
	mull	a8, a8, a6
	ssr	a5
	srl	a10, a8
	movi.n	a8, 0
	bne	a4, a8, .LBB40_52
# %bb.51:                               #   in Loop: Header=BB40_30 Depth=1
	addi	a9, a10, 32
.LBB40_52:                              #   in Loop: Header=BB40_30 Depth=1
	l32i	a6, a1, 104             # 4-byte Folded Reload
	beqz	a9, .LBB40_55
# %bb.53:                               #   in Loop: Header=BB40_30 Depth=1
	movi.n	a10, 1
	l32i.n	a11, a1, 0
	xor	a10, a9, a10
	mov.n	a5, a2
	l32i	a11, a1, 92             # 4-byte Folded Reload
	bnez	a10, .LBB40_56
# %bb.54:                               #   in Loop: Header=BB40_30 Depth=1
	movi.n	a10, 63
	j	.LBB40_57
.LBB40_55:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a10, a8
	mov.n	a5, a2
	l32i	a11, a1, 92             # 4-byte Folded Reload
	j	.LBB40_57
.LBB40_56:                              #   in Loop: Header=BB40_30 Depth=1
	l32i.n	a10, a1, 0
	sub	a10, a10, a9
.LBB40_57:                              #   in Loop: Header=BB40_30 Depth=1
	movi.n	a9, 1
	ssl	a10
	src	a13, a8, a9
	sll	a4, a9
	l32i.n	a12, a1, 8
	and	a12, a10, a12
	mov.n	a14, a4
	bne	a12, a8, .LBB40_59
# %bb.58:                               #   in Loop: Header=BB40_30 Depth=1
	mov.n	a14, a13
.LBB40_59:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a10, a9
	bltu	a6, a14, .LBB40_61
# %bb.60:                               #   in Loop: Header=BB40_30 Depth=1
	mov.n	a10, a8
.LBB40_61:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a15, a8
	l32i	a13, a1, 96             # 4-byte Folded Reload
	bne	a12, a8, .LBB40_62
	j	.LBB40_80
.LBB40_62:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a12, a9
	bltu	a13, a15, .LBB40_63
	j	.LBB40_81
.LBB40_63:                              #   in Loop: Header=BB40_30 Depth=1
	beq	a14, a6, .LBB40_64
	j	.LBB40_82
.LBB40_64:                              #   in Loop: Header=BB40_30 Depth=1
	bne	a12, a8, .LBB40_66
.LBB40_65:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a15, a13
.LBB40_66:                              #   in Loop: Header=BB40_30 Depth=1
	movi.n	a10, 8
	mov.n	a13, a9
	bltu	a10, a15, .LBB40_67
	j	.LBB40_83
.LBB40_67:                              #   in Loop: Header=BB40_30 Depth=1
	bne	a12, a8, .LBB40_68
	j	.LBB40_84
.LBB40_68:                              #   in Loop: Header=BB40_30 Depth=1
	bne	a14, a8, .LBB40_69
	j	.LBB40_85
.LBB40_69:                              #   in Loop: Header=BB40_30 Depth=1
	beq	a14, a8, .LBB40_70
	j	.LBB40_86
.LBB40_70:                              #   in Loop: Header=BB40_30 Depth=1
	bne	a13, a8, .LBB40_71
	j	.LBB40_87
.LBB40_71:                              #   in Loop: Header=BB40_30 Depth=1
	s32i.n	a14, a5, 20
	bne	a13, a8, .LBB40_73
.LBB40_72:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a15, a10
.LBB40_73:                              #   in Loop: Header=BB40_30 Depth=1
	s32i.n	a15, a5, 16
	l32i.n	a8, a1, 4
	ssr	a8
	srl	a8, a15
	s32i	a14, a1, 68             # 4-byte Folded Spill
	slli	a9, a14, 3
	or	a13, a9, a8
	s32i	a15, a1, 64             # 4-byte Folded Spill
	slli	a12, a15, 3
	l32r	a8, .LCPI40_10
	l32i	a10, a1, 100            # 4-byte Folded Reload
	callx8	a8
	l32i	a2, a1, 72              # 4-byte Folded Reload
	s32i.n	a10, a2, 24
	l32i	a11, a1, 76             # 4-byte Folded Reload
	l32i	a13, a1, 96             # 4-byte Folded Reload
	l32i	a3, a1, 112             # 4-byte Folded Reload
	l32i	a14, a1, 104            # 4-byte Folded Reload
.LBB40_74:                              #   in Loop: Header=BB40_30 Depth=1
	addx4	a8, a3, a10
	l32i	a9, a1, 108             # 4-byte Folded Reload
	s32i.n	a9, a8, 0
	s32i.n	a14, a2, 12
	s32i.n	a13, a2, 8
	movi.n	a15, 0
	movi.n	a9, 1
	mov.n	a8, a9
	l32i.n	a12, a1, 56
	bgeu	a13, a12, .LBB40_77
# %bb.75:                               #   in Loop: Header=BB40_30 Depth=1
	bgeu	a14, a11, .LBB40_78
.LBB40_76:                              #   in Loop: Header=BB40_30 Depth=1
	bne	a14, a11, .LBB40_79
	j	.LBB40_29
.LBB40_77:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a8, a15
	bltu	a14, a11, .LBB40_76
.LBB40_78:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a9, a15
	bne	a14, a11, .LBB40_79
	j	.LBB40_29
.LBB40_79:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a8, a9
	j	.LBB40_29
.LBB40_80:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a15, a4
	mov.n	a12, a9
	bgeu	a13, a15, .LBB40_81
	j	.LBB40_63
.LBB40_81:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a12, a8
	bne	a14, a6, .LBB40_82
	j	.LBB40_64
.LBB40_82:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a12, a10
	bne	a12, a8, .LBB40_96
	j	.LBB40_65
.LBB40_96:                              #   in Loop: Header=BB40_30 Depth=1
	j	.LBB40_66
.LBB40_83:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a13, a8
	beq	a12, a8, .LBB40_84
	j	.LBB40_68
.LBB40_84:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a14, a6
	beq	a14, a8, .LBB40_85
	j	.LBB40_69
.LBB40_85:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a9, a8
	bne	a14, a8, .LBB40_86
	j	.LBB40_70
.LBB40_86:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a13, a9
	beq	a13, a8, .LBB40_87
	j	.LBB40_71
.LBB40_87:                              #   in Loop: Header=BB40_30 Depth=1
	mov.n	a14, a8
	s32i.n	a14, a5, 20
	bne	a13, a8, .LBB40_97
	j	.LBB40_72
.LBB40_97:                              #   in Loop: Header=BB40_30 Depth=1
	j	.LBB40_73
.LBB40_88:
	retw.n
.LBB40_89:
	l32i	a11, a1, 80             # 4-byte Folded Reload
	bne	a14, a12, .LBB40_90
	j	.LBB40_19
.LBB40_90:
	mov.n	a11, a9
	l32i	a9, a1, 80              # 4-byte Folded Reload
	bne	a11, a9, .LBB40_98
	j	.LBB40_20
.LBB40_98:
	j	.LBB40_21
.LBB40_91:
	l32i	a10, a1, 80             # 4-byte Folded Reload
	l32i	a13, a1, 80             # 4-byte Folded Reload
	beq	a11, a13, .LBB40_92
	j	.LBB40_23
.LBB40_92:
	mov.n	a14, a12
	mov.n	a11, a13
	beq	a14, a11, .LBB40_93
	j	.LBB40_24
.LBB40_93:
	mov.n	a8, a11
	bne	a14, a11, .LBB40_94
	j	.LBB40_25
.LBB40_94:
	mov.n	a10, a8
	beq	a10, a11, .LBB40_95
	j	.LBB40_26
.LBB40_95:
	mov.n	a14, a11
	s32i.n	a14, a6, 20
	bne	a10, a11, .LBB40_99
	j	.LBB40_27
.LBB40_99:
	j	.LBB40_28
.Lfunc_end40:
	.size	.L__unnamed_42, .Lfunc_end40-.L__unnamed_42
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_44,@function
.L__unnamed_44:                         # @63
# %bb.0:
	entry	a1, 32
	movi.n	a2, 0
	retw.n
.Lfunc_end41:
	.size	.L__unnamed_44, .Lfunc_end41-.L__unnamed_44
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_45,@function
.L__unnamed_45:                         # @64
# %bb.0:
	entry	a1, 32
	mov.n	a2, a3
	retw.n
.Lfunc_end42:
	.size	.L__unnamed_45, .Lfunc_end42-.L__unnamed_45
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_46,@function
.L__unnamed_46:                         # @65
# %bb.0:
	entry	a1, 32
	movi.n	a2, 0
	bne	a3, a2, .LBB43_2
# %bb.1:
	movi.n	a2, 1
.LBB43_2:
	retw.n
.Lfunc_end43:
	.size	.L__unnamed_46, .Lfunc_end43-.L__unnamed_46
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_47,@function
.L__unnamed_47:                         # @66
# %bb.0:
	entry	a1, 32
	retw.n
.Lfunc_end44:
	.size	.L__unnamed_47, .Lfunc_end44-.L__unnamed_47
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_48,@function
.L__unnamed_48:                         # @67
# %bb.0:
	entry	a1, 32
	l8ui	a2, a2, 4
	movi.n	a3, 0
	retw.n
.Lfunc_end45:
	.size	.L__unnamed_48, .Lfunc_end45-.L__unnamed_48
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI46_0, pony_ctx
	.literal .LCPI46_1, pony_alloc
	.p2align	2
	.type	.L__unnamed_49,@function
.L__unnamed_49:                         # @68
# %bb.0:
	entry	a1, 40
	s32i.n	a5, a1, 4
	s32i.n	a4, a1, 0
	l32r	a8, .LCPI46_0
	callx8	a8
	l32r	a8, .LCPI46_1
	l32i.n	a12, a1, 0
	l32i.n	a13, a1, 4
	callx8	a8
	mov.n	a2, a10
	retw.n
.Lfunc_end46:
	.size	.L__unnamed_49, .Lfunc_end46-.L__unnamed_49
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI47_0, pony_ctx
	.literal .LCPI47_1, pony_realloc
	.p2align	2
	.type	.L__unnamed_50,@function
.L__unnamed_50:                         # @69
# %bb.0:
	entry	a1, 48
	s32i.n	a5, a1, 8
	s32i.n	a4, a1, 4
	s32i.n	a2, a1, 0
	l32r	a8, .LCPI47_0
	callx8	a8
	l32r	a8, .LCPI47_1
	l32i.n	a11, a1, 0
	l32i.n	a12, a1, 4
	l32i.n	a13, a1, 8
	callx8	a8
	mov.n	a2, a10
	retw.n
.Lfunc_end47:
	.size	.L__unnamed_50, .Lfunc_end47-.L__unnamed_50
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_51,@function
.L__unnamed_51:                         # @70
# %bb.0:
	entry	a1, 32
	add.n	a8, a2, a4
	l8ui	a2, a8, 0
	retw.n
.Lfunc_end48:
	.size	.L__unnamed_51, .Lfunc_end48-.L__unnamed_51
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_52,@function
.L__unnamed_52:                         # @71
# %bb.0:
	entry	a1, 32
	add.n	a8, a2, a4
	l8ui	a2, a8, 0
	s8i	a6, a8, 0
	retw.n
.Lfunc_end49:
	.size	.L__unnamed_52, .Lfunc_end49-.L__unnamed_52
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_53,@function
.L__unnamed_53:                         # @72
# %bb.0:
	entry	a1, 32
	add.n	a2, a2, a4
	retw.n
.Lfunc_end50:
	.size	.L__unnamed_53, .Lfunc_end50-.L__unnamed_53
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_54,@function
.L__unnamed_54:                         # @73
# %bb.0:
	entry	a1, 32
	add.n	a2, a2, a4
	retw.n
.Lfunc_end51:
	.size	.L__unnamed_54, .Lfunc_end51-.L__unnamed_54
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI52_0, memcpy
	.p2align	2
	.type	.L__unnamed_55,@function
.L__unnamed_55:                         # @74
# %bb.0:
	entry	a1, 40
	s32i.n	a2, a1, 0
	l32r	a8, .LCPI52_0
	mov.n	a10, a3
	mov.n	a11, a2
	mov.n	a12, a4
	callx8	a8
	l32i.n	a2, a1, 0
	retw.n
.Lfunc_end52:
	.size	.L__unnamed_55, .Lfunc_end52-.L__unnamed_55
                                        # -- End function
	.global	U32_Serialise           # -- Begin function U32_Serialise
	.p2align	2
	.type	U32_Serialise,@function
U32_Serialise:                          # @U32_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	s32i.n	a9, a8, 0
	l32i.n	a9, a3, 4
	s32i.n	a9, a8, 8
	retw.n
.Lfunc_end53:
	.size	U32_Serialise, .Lfunc_end53-U32_Serialise
                                        # -- End function
	.literal_position               # -- Begin function U32_Deserialise
	.literal .LCPI54_0, .L__unnamed_56
	.global	U32_Deserialise
	.p2align	2
	.type	U32_Deserialise,@function
U32_Deserialise:                        # @U32_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI54_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end54:
	.size	U32_Deserialise, .Lfunc_end54-U32_Deserialise
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_57,@function
.L__unnamed_57:                         # @75
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 4
	and	a2, a8, a3
	retw.n
.Lfunc_end55:
	.size	.L__unnamed_57, .Lfunc_end55-.L__unnamed_57
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_58,@function
.L__unnamed_58:                         # @76
# %bb.0:
	entry	a1, 32
	movi.n	a8, 31
	bltu	a3, a8, .LBB56_2
# %bb.1:
	mov.n	a3, a8
.LBB56_2:
	l32i.n	a8, a2, 4
	ssl	a3
	sll	a2, a8
	retw.n
.Lfunc_end56:
	.size	.L__unnamed_58, .Lfunc_end56-.L__unnamed_58
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_59,@function
.L__unnamed_59:                         # @77
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 4
	bne	a8, a3, .LBB57_2
# %bb.1:
	movi.n	a2, 0
	retw.n
.LBB57_2:
	movi.n	a2, 1
	retw.n
.Lfunc_end57:
	.size	.L__unnamed_59, .Lfunc_end57-.L__unnamed_59
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_60,@function
.L__unnamed_60:                         # @78
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 4
	add.n	a2, a8, a3
	retw.n
.Lfunc_end58:
	.size	.L__unnamed_60, .Lfunc_end58-.L__unnamed_60
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_61,@function
.L__unnamed_61:                         # @79
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 4
	beq	a8, a3, .LBB59_2
# %bb.1:
	movi.n	a2, 0
	retw.n
.LBB59_2:
	movi.n	a2, 1
	retw.n
.Lfunc_end59:
	.size	.L__unnamed_61, .Lfunc_end59-.L__unnamed_61
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_62,@function
.L__unnamed_62:                         # @80
# %bb.0:
	entry	a1, 32
	mov.n	a2, a4
	retw.n
.Lfunc_end60:
	.size	.L__unnamed_62, .Lfunc_end60-.L__unnamed_62
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_63,@function
.L__unnamed_63:                         # @81
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 4
	bltu	a3, a8, .LBB61_2
# %bb.1:
	movi.n	a2, 0
	retw.n
.LBB61_2:
	movi.n	a2, 1
	retw.n
.Lfunc_end61:
	.size	.L__unnamed_63, .Lfunc_end61-.L__unnamed_63
                                        # -- End function
	.global	LED_Serialise           # -- Begin function LED_Serialise
	.p2align	2
	.type	LED_Serialise,@function
LED_Serialise:                          # @LED_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 1
	s32i.n	a9, a8, 0
	l32i.n	a9, a3, 4
	s32i.n	a9, a8, 8
	l32i.n	a9, a3, 8
	s32i.n	a9, a8, 12
	retw.n
.Lfunc_end62:
	.size	LED_Serialise, .Lfunc_end62-LED_Serialise
                                        # -- End function
	.literal_position               # -- Begin function LED_Deserialise
	.literal .LCPI63_0, .L__unnamed_3
	.global	LED_Deserialise
	.p2align	2
	.type	LED_Deserialise,@function
LED_Deserialise:                        # @LED_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI63_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end63:
	.size	LED_Deserialise, .Lfunc_end63-LED_Deserialise
                                        # -- End function
	.global	AmbientAuth_Serialise   # -- Begin function AmbientAuth_Serialise
	.p2align	2
	.type	AmbientAuth_Serialise,@function
AmbientAuth_Serialise:                  # @AmbientAuth_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 5
	s32i.n	a9, a8, 0
	retw.n
.Lfunc_end64:
	.size	AmbientAuth_Serialise, .Lfunc_end64-AmbientAuth_Serialise
                                        # -- End function
	.literal_position               # -- Begin function String_SerialiseTrace
	.literal .LCPI65_0, pony_serialise_reserve
	.global	String_SerialiseTrace
	.p2align	2
	.type	String_SerialiseTrace,@function
String_SerialiseTrace:                  # @String_SerialiseTrace
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a3, 4
	addi.n	a12, a8, 1
	bltu	a12, a8, .LBB65_2
# %bb.1:
	movi.n	a8, 0
	j	.LBB65_3
.LBB65_2:
	movi.n	a8, 1
.LBB65_3:
	l32i.n	a9, a3, 8
	add.n	a13, a9, a8
	l32i.n	a11, a3, 12
	l32r	a8, .LCPI65_0
	mov.n	a10, a2
	callx8	a8
	retw.n
.Lfunc_end65:
	.size	String_SerialiseTrace, .Lfunc_end65-String_SerialiseTrace
                                        # -- End function
	.literal_position               # -- Begin function String_Serialise
	.literal .LCPI66_0, pony_serialise_offset
	.literal .LCPI66_1, memcpy
	.global	String_Serialise
	.p2align	2
	.type	String_Serialise,@function
String_Serialise:                       # @String_Serialise
# %bb.0:
	entry	a1, 48
	add.n	a11, a4, a6
	movi.n	a8, 0
	s32i.n	a8, a11, 4
	movi.n	a9, 9
	s32i.n	a9, a11, 0
	l32i.n	a9, a1, 48
	beqi	a9, 2, .LBB66_4
# %bb.1:
	l32i.n	a10, a3, 4
	l32i.n	a9, a3, 8
	s32i.n	a9, a11, 12
	s32i.n	a10, a11, 8
	addi.n	a12, a10, 1
	s32i.n	a12, a11, 16
	s32i.n	a12, a1, 8
	s32i.n	a4, a1, 12
	bgeu	a12, a10, .LBB66_3
# %bb.2:
	movi.n	a8, 1
.LBB66_3:
	add.n	a8, a9, a8
	s32i.n	a8, a11, 20
	s32i.n	a11, a1, 4
	l32i.n	a11, a3, 12
	l32r	a8, .LCPI66_0
	mov.n	a10, a2
	s32i.n	a3, a1, 0
	callx8	a8
	l32i.n	a8, a1, 4
	s32i.n	a11, a8, 28
	s32i.n	a10, a8, 24
	l32i.n	a8, a1, 12
	add.n	a10, a8, a10
	l32i.n	a8, a1, 0
	l32i.n	a11, a8, 12
	l32r	a8, .LCPI66_1
	l32i.n	a12, a1, 8
	callx8	a8
.LBB66_4:
	retw.n
.Lfunc_end66:
	.size	String_Serialise, .Lfunc_end66-String_Serialise
                                        # -- End function
	.literal_position               # -- Begin function String_Deserialise
	.literal .LCPI67_0, .L__unnamed_5
	.literal .LCPI67_1, pony_deserialise_block
	.global	String_Deserialise
	.p2align	2
	.type	String_Deserialise,@function
String_Deserialise:                     # @String_Deserialise
# %bb.0:
	entry	a1, 40
	s32i.n	a3, a1, 0
	l32r	a8, .LCPI67_0
	s32i.n	a8, a3, 0
	l32i.n	a14, a3, 8
	l32i.n	a13, a3, 16
	l32i.n	a12, a3, 12
	l32r	a8, .LCPI67_1
	mov.n	a10, a2
	mov.n	a15, a12
	callx8	a8
	l32i.n	a8, a1, 0
	s32i.n	a10, a8, 12
	retw.n
.Lfunc_end67:
	.size	String_Deserialise, .Lfunc_end67-String_Deserialise
                                        # -- End function
	.literal_position               # -- Begin function Array_String_val_SerialiseTrace
	.literal .LCPI68_0, pony_serialise_reserve
	.literal .LCPI68_1, .L__unnamed_5
	.literal .LCPI68_2, pony_traceknown
	.global	Array_String_val_SerialiseTrace
	.p2align	2
	.type	Array_String_val_SerialiseTrace,@function
Array_String_val_SerialiseTrace:        # @Array_String_val_SerialiseTrace
# %bb.0:
	entry	a1, 72
	s32i.n	a2, a1, 24
	l32i.n	a9, a3, 8
	l32i.n	a8, a3, 4
	or	a10, a8, a9
	beqz	a10, .LBB68_6
# %bb.1:
	movi.n	a10, 29
	ssr	a10
	srl	a10, a8
	slli	a9, a9, 3
	or	a13, a9, a10
	l32i.n	a11, a3, 12
	slli	a12, a8, 3
	l32r	a8, .LCPI68_0
	l32i.n	a10, a1, 24
	s32i.n	a11, a1, 20
	s32i.n	a3, a1, 36
	callx8	a8
	l32i.n	a9, a1, 36
	l32i.n	a8, a9, 8
	l32i.n	a9, a9, 4
	s32i.n	a8, a1, 16
	s32i.n	a9, a1, 12
	or	a8, a9, a8
	beqz	a8, .LBB68_6
# %bb.2:
	movi.n	a10, 0
	l32r	a8, .LCPI68_1
	s32i.n	a8, a1, 8
	movi.n	a8, 1
	s32i.n	a8, a1, 36
	l32r	a8, .LCPI68_2
	s32i.n	a8, a1, 4
	movi.n	a8, 0
	s32i.n	a8, a1, 0
	mov.n	a11, a10
	j	.LBB68_4
.LBB68_3:                               #   in Loop: Header=BB68_4 Depth=1
	l32i.n	a11, a1, 32
	add.n	a11, a11, a9
	l32i.n	a9, a1, 16
	xor	a9, a11, a9
	l32i.n	a10, a1, 12
	xor	a10, a8, a10
	or	a9, a10, a9
	mov.n	a10, a8
	beqz	a9, .LBB68_6
.LBB68_4:                               # =>This Inner Loop Header: Depth=1
	s32i.n	a10, a1, 28
	s32i.n	a11, a1, 32
	l32i.n	a8, a1, 20
	addx4	a8, a10, a8
	l32i.n	a11, a8, 0
	l32i.n	a10, a1, 24
	l32i.n	a12, a1, 8
	l32i.n	a13, a1, 36
	l32i.n	a8, a1, 4
	callx8	a8
	l32i.n	a10, a1, 28
	addi.n	a8, a10, 1
	l32i.n	a9, a1, 36
	bltu	a8, a10, .LBB68_3
# %bb.5:                                #   in Loop: Header=BB68_4 Depth=1
	l32i.n	a9, a1, 0
	j	.LBB68_3
.LBB68_6:
	retw.n
.Lfunc_end68:
	.size	Array_String_val_SerialiseTrace, .Lfunc_end68-Array_String_val_SerialiseTrace
                                        # -- End function
	.literal_position               # -- Begin function Array_String_val_Serialise
	.literal .LCPI69_0, pony_serialise_offset
	.global	Array_String_val_Serialise
	.p2align	2
	.type	Array_String_val_Serialise,@function
Array_String_val_Serialise:             # @Array_String_val_Serialise
# %bb.0:
	entry	a1, 72
	s32i.n	a2, a1, 24
	add.n	a9, a4, a6
	movi.n	a8, 0
	s32i.n	a8, a1, 0
	s32i.n	a8, a9, 4
	movi.n	a8, 11
	s32i.n	a8, a9, 0
	l32i	a8, a1, 72
	bnei	a8, 2, .LBB69_1
	j	.LBB69_6
.LBB69_1:
	l32i.n	a8, a3, 4
	s32i.n	a8, a1, 20
	l32i.n	a10, a3, 8
	s32i.n	a10, a1, 16
	s32i.n	a10, a9, 20
	s32i.n	a8, a9, 16
	s32i.n	a10, a9, 12
	s32i.n	a8, a9, 8
	l32i.n	a11, a3, 12
	l32r	a8, .LCPI69_0
	l32i.n	a10, a1, 24
	s32i.n	a11, a1, 12
	s32i.n	a8, a1, 8
	s32i.n	a4, a1, 36
	s32i.n	a9, a1, 32
	callx8	a8
	l32i.n	a9, a1, 36
	l32i.n	a8, a1, 32
	s32i.n	a11, a8, 28
	s32i.n	a10, a8, 24
	l32i.n	a11, a1, 20
	l32i.n	a8, a1, 16
	or	a8, a11, a8
	beqz	a8, .LBB69_6
# %bb.2:
	add.n	a11, a9, a10
	movi.n	a8, 1
	s32i.n	a8, a1, 4
	l32i.n	a8, a1, 0
	mov.n	a10, a8
	mov.n	a12, a8
	j	.LBB69_4
.LBB69_3:                               #   in Loop: Header=BB69_4 Depth=1
	l32i.n	a12, a1, 32
	add.n	a12, a12, a9
	l32i.n	a9, a1, 16
	xor	a9, a12, a9
	l32i.n	a10, a1, 20
	xor	a10, a8, a10
	or	a9, a10, a9
	addi.n	a11, a11, 8
	mov.n	a10, a8
	beqz	a9, .LBB69_6
.LBB69_4:                               # =>This Inner Loop Header: Depth=1
	s32i.n	a10, a1, 28
	s32i.n	a12, a1, 32
	s32i.n	a11, a1, 36
	l32i.n	a8, a1, 12
	addx4	a8, a10, a8
	l32i.n	a11, a8, 0
	l32i.n	a10, a1, 24
	l32i.n	a8, a1, 8
	callx8	a8
	l32i.n	a8, a1, 36
	s32i.n	a11, a8, 4
	l32i.n	a11, a1, 36
	s32i.n	a10, a11, 0
	l32i.n	a10, a1, 28
	addi.n	a8, a10, 1
	l32i.n	a9, a1, 4
	bltu	a8, a10, .LBB69_3
# %bb.5:                                #   in Loop: Header=BB69_4 Depth=1
	l32i.n	a9, a1, 0
	j	.LBB69_3
.LBB69_6:
	retw.n
.Lfunc_end69:
	.size	Array_String_val_Serialise, .Lfunc_end69-Array_String_val_Serialise
                                        # -- End function
	.literal_position               # -- Begin function Array_String_val_Deserialise
	.literal .LCPI70_0, .L__unnamed_9
	.literal .LCPI70_1, pony_deserialise_block
	.literal .LCPI70_2, .L__unnamed_5
	.literal .LCPI70_3, pony_deserialise_offset
	.global	Array_String_val_Deserialise
	.p2align	2
	.type	Array_String_val_Deserialise,@function
Array_String_val_Deserialise:           # @Array_String_val_Deserialise
# %bb.0:
	entry	a1, 80
	s32i.n	a3, a1, 40
	l32r	a8, .LCPI70_0
	s32i.n	a8, a3, 0
	l32i.n	a8, a3, 8
	movi.n	a9, 29
	ssr	a9
	srl	a9, a8
	l32i.n	a12, a3, 12
	slli	a10, a12, 3
	or	a15, a10, a9
	l32i.n	a13, a3, 16
	slli	a14, a8, 3
	l32r	a8, .LCPI70_1
	s32i.n	a2, a1, 28
	mov.n	a10, a2
	callx8	a8
	s32i.n	a10, a1, 24
	l32i.n	a9, a1, 40
	s32i.n	a10, a9, 12
	l32i.n	a8, a9, 8
	l32i.n	a9, a9, 4
	s32i.n	a8, a1, 20
	s32i.n	a9, a1, 16
	or	a8, a9, a8
	beqz	a8, .LBB70_5
# %bb.1:
	movi.n	a10, 0
	l32r	a8, .LCPI70_2
	s32i.n	a8, a1, 12
	l32r	a8, .LCPI70_3
	s32i.n	a8, a1, 8
	movi.n	a8, 0
	s32i.n	a8, a1, 0
	movi.n	a8, 1
	s32i.n	a8, a1, 4
	mov.n	a11, a10
	j	.LBB70_3
.LBB70_2:                               #   in Loop: Header=BB70_3 Depth=1
	l32i.n	a11, a1, 40
	add.n	a11, a11, a9
	l32i.n	a9, a1, 20
	xor	a9, a11, a9
	l32i.n	a10, a1, 16
	xor	a10, a8, a10
	or	a9, a10, a9
	mov.n	a10, a8
	beqz	a9, .LBB70_5
.LBB70_3:                               # =>This Inner Loop Header: Depth=1
	s32i.n	a10, a1, 32
	s32i.n	a11, a1, 40
	l32i.n	a8, a1, 24
	addx4	a8, a10, a8
	s32i.n	a8, a1, 36
	l32i.n	a13, a8, 4
	l32i.n	a12, a8, 0
	l32i.n	a10, a1, 28
	l32i.n	a11, a1, 12
	l32i.n	a8, a1, 8
	callx8	a8
	l32i.n	a8, a1, 36
	s32i.n	a10, a8, 0
	l32i.n	a10, a1, 32
	addi.n	a8, a10, 1
	l32i.n	a9, a1, 4
	bltu	a8, a10, .LBB70_2
# %bb.4:                                #   in Loop: Header=BB70_3 Depth=1
	l32i.n	a9, a1, 0
	j	.LBB70_2
.LBB70_5:
	retw.n
.Lfunc_end70:
	.size	Array_String_val_Deserialise, .Lfunc_end70-Array_String_val_Deserialise
                                        # -- End function
	.global	Bool_Serialise          # -- Begin function Bool_Serialise
	.p2align	2
	.type	Bool_Serialise,@function
Bool_Serialise:                         # @Bool_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 12
	s32i.n	a9, a8, 0
	l8ui	a9, a3, 4
	s8i	a9, a8, 8
	retw.n
.Lfunc_end71:
	.size	Bool_Serialise, .Lfunc_end71-Bool_Serialise
                                        # -- End function
	.literal_position               # -- Begin function Bool_Deserialise
	.literal .LCPI72_0, .L__unnamed_64
	.global	Bool_Deserialise
	.p2align	2
	.type	Bool_Deserialise,@function
Bool_Deserialise:                       # @Bool_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI72_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end72:
	.size	Bool_Deserialise, .Lfunc_end72-Bool_Deserialise
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_65,@function
.L__unnamed_65:                         # @82
# %bb.0:
	entry	a1, 32
	l8ui	a8, a2, 4
	movi.n	a9, 1
	xor	a2, a8, a9
	retw.n
.Lfunc_end73:
	.size	.L__unnamed_65, .Lfunc_end73-.L__unnamed_65
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_66,@function
.L__unnamed_66:                         # @83
# %bb.0:
	entry	a1, 32
	mov.n	a2, a4
	retw.n
.Lfunc_end74:
	.size	.L__unnamed_66, .Lfunc_end74-.L__unnamed_66
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_67,@function
.L__unnamed_67:                         # @84
# %bb.0:
	entry	a1, 32
	l8ui	a8, a2, 4
	and	a2, a8, a3
	retw.n
.Lfunc_end75:
	.size	.L__unnamed_67, .Lfunc_end75-.L__unnamed_67
                                        # -- End function
	.global	F64_Serialise           # -- Begin function F64_Serialise
	.p2align	2
	.type	F64_Serialise,@function
F64_Serialise:                          # @F64_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 20
	s32i.n	a9, a8, 0
	l32i.n	a9, a3, 4
	l32i.n	a10, a3, 8
	s32i.n	a10, a8, 12
	s32i.n	a9, a8, 8
	retw.n
.Lfunc_end76:
	.size	F64_Serialise, .Lfunc_end76-F64_Serialise
                                        # -- End function
	.literal_position               # -- Begin function F64_Deserialise
	.literal .LCPI77_0, .L__unnamed_68
	.global	F64_Deserialise
	.p2align	2
	.type	F64_Deserialise,@function
F64_Deserialise:                        # @F64_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI77_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end77:
	.size	F64_Deserialise, .Lfunc_end77-F64_Deserialise
                                        # -- End function
	.global	I32_Serialise           # -- Begin function I32_Serialise
	.p2align	2
	.type	I32_Serialise,@function
I32_Serialise:                          # @I32_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 16
	s32i.n	a9, a8, 0
	l32i.n	a9, a3, 4
	s32i.n	a9, a8, 8
	retw.n
.Lfunc_end78:
	.size	I32_Serialise, .Lfunc_end78-I32_Serialise
                                        # -- End function
	.literal_position               # -- Begin function I32_Deserialise
	.literal .LCPI79_0, .L__unnamed_69
	.global	I32_Deserialise
	.p2align	2
	.type	I32_Deserialise,@function
I32_Deserialise:                        # @I32_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI79_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end79:
	.size	I32_Deserialise, .Lfunc_end79-I32_Deserialise
                                        # -- End function
	.global	USize_Serialise         # -- Begin function USize_Serialise
	.p2align	2
	.type	USize_Serialise,@function
USize_Serialise:                        # @USize_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 4
	s32i.n	a9, a8, 0
	l32i.n	a9, a3, 4
	l32i.n	a10, a3, 8
	s32i.n	a10, a8, 12
	s32i.n	a9, a8, 8
	retw.n
.Lfunc_end80:
	.size	USize_Serialise, .Lfunc_end80-USize_Serialise
                                        # -- End function
	.literal_position               # -- Begin function USize_Deserialise
	.literal .LCPI81_0, .L__unnamed_70
	.global	USize_Deserialise
	.p2align	2
	.type	USize_Deserialise,@function
USize_Deserialise:                      # @USize_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI81_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end81:
	.size	USize_Deserialise, .Lfunc_end81-USize_Deserialise
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_71,@function
.L__unnamed_71:                         # @85
# %bb.0:
	entry	a1, 32
	movi.n	a2, 64
	movi.n	a3, 0
	retw.n
.Lfunc_end82:
	.size	.L__unnamed_71, .Lfunc_end82-.L__unnamed_71
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_72,@function
.L__unnamed_72:                         # @86
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 8
	bltu	a8, a4, .LBB83_2
# %bb.1:
	movi.n	a9, 0
	j	.LBB83_3
.LBB83_2:
	movi.n	a9, 1
.LBB83_3:
	l32i.n	a10, a2, 12
	sub	a10, a10, a5
	sub	a3, a10, a9
	sub	a2, a8, a4
	retw.n
.Lfunc_end83:
	.size	.L__unnamed_72, .Lfunc_end83-.L__unnamed_72
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_73,@function
.L__unnamed_73:                         # @87
# %bb.0:
	entry	a1, 32
	mov.n	a8, a2
	movi.n	a2, 0
	movi.n	a9, 63
	bltu	a4, a9, .LBB84_2
# %bb.1:
	mov.n	a10, a2
	bne	a5, a2, .LBB84_3
	j	.LBB84_4
.LBB84_2:
	movi.n	a10, 1
	beq	a5, a2, .LBB84_4
.LBB84_3:
	mov.n	a10, a2
.LBB84_4:
	bne	a10, a2, .LBB84_6
# %bb.5:
	mov.n	a4, a9
.LBB84_6:
	l32i.n	a9, a8, 8
	l32i.n	a8, a8, 12
	ssl	a4
	src	a10, a8, a9
	sll	a8, a9
	movi.n	a9, 32
	and	a9, a4, a9
	mov.n	a3, a8
	beq	a9, a2, .LBB84_9
# %bb.7:
	beq	a9, a2, .LBB84_10
.LBB84_8:
	retw.n
.LBB84_9:
	mov.n	a3, a10
	bne	a9, a2, .LBB84_8
.LBB84_10:
	mov.n	a2, a8
	retw.n
.Lfunc_end84:
	.size	.L__unnamed_73, .Lfunc_end84-.L__unnamed_73
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_74,@function
.L__unnamed_74:                         # @88
# %bb.0:
	entry	a1, 32
	mov.n	a8, a2
	l32i.n	a9, a8, 8
	add.n	a2, a9, a4
	bltu	a2, a9, .LBB85_2
# %bb.1:
	movi.n	a9, 0
	j	.LBB85_3
.LBB85_2:
	movi.n	a9, 1
.LBB85_3:
	l32i.n	a8, a8, 12
	add.n	a8, a8, a5
	add.n	a3, a8, a9
	retw.n
.Lfunc_end85:
	.size	.L__unnamed_74, .Lfunc_end85-.L__unnamed_74
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI86_0, 1431655765
	.literal .LCPI86_1, 858993459
	.literal .LCPI86_2, 252645135
	.literal .LCPI86_3, 16843009
	.p2align	2
	.type	.L__unnamed_75,@function
.L__unnamed_75:                         # @89
# %bb.0:
	entry	a1, 32
	l32i.n	a9, a2, 8
	addi.n	a10, a9, -1
	movi.n	a8, 0
	bltu	a10, a9, .LBB86_2
# %bb.1:
	mov.n	a9, a8
	j	.LBB86_3
.LBB86_2:
	movi.n	a9, 1
.LBB86_3:
	l32i.n	a11, a2, 12
	add.n	a9, a11, a9
	addi.n	a9, a9, -1
	srli	a11, a9, 1
	or	a11, a9, a11
	srli	a12, a11, 2
	or	a11, a11, a12
	srli	a12, a11, 4
	or	a11, a11, a12
	srli	a12, a11, 8
	or	a11, a11, a12
	movi.n	a12, 16
	ssr	a12
	srl	a13, a11
	or	a11, a11, a13
	movi.n	a13, -1
	xor	a11, a11, a13
	srli	a14, a11, 1
	l32r	a15, .LCPI86_0
	and	a14, a14, a15
	sub	a11, a11, a14
	l32r	a14, .LCPI86_1
	and	a6, a11, a14
	srli	a11, a11, 2
	and	a11, a11, a14
	add.n	a11, a6, a11
	srli	a6, a11, 4
	add.n	a11, a11, a6
	l32r	a6, .LCPI86_2
	and	a11, a11, a6
	l32r	a5, .LCPI86_3
	mull	a11, a11, a5
	movi.n	a4, 24
	ssr	a4
	srl	a11, a11
	srli	a3, a10, 1
	or	a10, a10, a3
	srli	a3, a10, 2
	or	a10, a10, a3
	srli	a3, a10, 4
	or	a10, a10, a3
	srli	a3, a10, 8
	or	a10, a10, a3
	ssr	a12
	srl	a12, a10
	or	a10, a10, a12
	xor	a10, a10, a13
	srli	a12, a10, 1
	and	a12, a12, a15
	sub	a10, a10, a12
	and	a12, a10, a14
	srli	a10, a10, 2
	and	a10, a10, a14
	add.n	a10, a12, a10
	srli	a12, a10, 4
	add.n	a10, a10, a12
	and	a10, a10, a6
	mull	a10, a10, a5
	ssr	a4
	srl	a10, a10
	bne	a9, a8, .LBB86_5
# %bb.4:
	addi	a11, a10, 32
.LBB86_5:
	beqz	a11, .LBB86_9
# %bb.6:
	movi.n	a9, 1
	movi.n	a8, 64
	xor	a9, a11, a9
	bnez	a9, .LBB86_8
# %bb.7:
	movi.n	a8, 63
	j	.LBB86_9
.LBB86_8:
	sub	a8, a8, a11
.LBB86_9:
	movi.n	a9, 1
	movi.n	a2, 0
	ssl	a8
	src	a10, a2, a9
	sll	a9, a9
	movi.n	a11, 32
	and	a8, a8, a11
	mov.n	a3, a9
	beq	a8, a2, .LBB86_12
# %bb.10:
	beq	a8, a2, .LBB86_13
.LBB86_11:
	retw.n
.LBB86_12:
	mov.n	a3, a10
	bne	a8, a2, .LBB86_11
.LBB86_13:
	mov.n	a2, a9
	retw.n
.Lfunc_end86:
	.size	.L__unnamed_75, .Lfunc_end86-.L__unnamed_75
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_76,@function
.L__unnamed_76:                         # @90
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 12
	xor	a8, a8, a5
	l32i.n	a9, a2, 8
	xor	a9, a9, a4
	or	a8, a9, a8
	movi.n	a2, 0
	bne	a8, a2, .LBB87_2
# %bb.1:
	movi.n	a2, 1
.LBB87_2:
	retw.n
.Lfunc_end87:
	.size	.L__unnamed_76, .Lfunc_end87-.L__unnamed_76
                                        # -- End function
	.literal_position               # -- Begin function 
	.literal .LCPI88_0, 1431655765
	.literal .LCPI88_1, 858993459
	.literal .LCPI88_2, 252645135
	.literal .LCPI88_3, 16843009
	.p2align	2
	.type	.L__unnamed_77,@function
.L__unnamed_77:                         # @91
# %bb.0:
	entry	a1, 32
	l32i.n	a9, a2, 12
	srli	a8, a9, 1
	or	a8, a9, a8
	srli	a10, a8, 2
	or	a8, a8, a10
	srli	a10, a8, 4
	or	a8, a8, a10
	srli	a10, a8, 8
	or	a8, a8, a10
	movi.n	a10, 16
	ssr	a10
	srl	a11, a8
	or	a8, a8, a11
	movi.n	a11, -1
	xor	a8, a8, a11
	srli	a12, a8, 1
	l32r	a13, .LCPI88_0
	and	a12, a12, a13
	sub	a8, a8, a12
	l32r	a12, .LCPI88_1
	and	a14, a8, a12
	srli	a8, a8, 2
	and	a8, a8, a12
	add.n	a8, a14, a8
	srli	a14, a8, 4
	add.n	a8, a8, a14
	l32r	a14, .LCPI88_2
	and	a8, a8, a14
	l32r	a15, .LCPI88_3
	mull	a8, a8, a15
	movi.n	a6, 24
	ssr	a6
	srl	a8, a8
	l32i.n	a5, a2, 8
	srli	a4, a5, 1
	or	a5, a5, a4
	srli	a4, a5, 2
	or	a5, a5, a4
	srli	a4, a5, 4
	or	a5, a5, a4
	srli	a4, a5, 8
	or	a5, a5, a4
	ssr	a10
	srl	a10, a5
	or	a10, a5, a10
	xor	a10, a10, a11
	srli	a11, a10, 1
	and	a11, a11, a13
	sub	a10, a10, a11
	and	a11, a10, a12
	srli	a10, a10, 2
	and	a10, a10, a12
	add.n	a10, a11, a10
	srli	a11, a10, 4
	add.n	a10, a10, a11
	and	a10, a10, a14
	mull	a10, a10, a15
	ssr	a6
	srl	a10, a10
	movi.n	a3, 0
	bne	a9, a3, .LBB88_2
# %bb.1:
	addi	a8, a10, 32
.LBB88_2:
	mov.n	a2, a8
	retw.n
.Lfunc_end88:
	.size	.L__unnamed_77, .Lfunc_end88-.L__unnamed_77
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_78,@function
.L__unnamed_78:                         # @92
# %bb.0:
	entry	a1, 32
	l32i.n	a3, a2, 12
	movi.n	a8, 0
	movi.n	a9, 1
	mov.n	a10, a9
	bgeu	a5, a3, .LBB89_6
# %bb.1:
	l32i.n	a2, a2, 8
	bgeu	a4, a2, .LBB89_7
.LBB89_2:
	bne	a3, a5, .LBB89_8
.LBB89_3:
	beq	a9, a8, .LBB89_9
.LBB89_4:
	beq	a9, a8, .LBB89_10
.LBB89_5:
	retw.n
.LBB89_6:
	mov.n	a10, a8
	l32i.n	a2, a2, 8
	bltu	a4, a2, .LBB89_2
.LBB89_7:
	mov.n	a9, a8
	beq	a3, a5, .LBB89_3
.LBB89_8:
	mov.n	a9, a10
	bne	a9, a8, .LBB89_4
.LBB89_9:
	mov.n	a2, a4
	bne	a9, a8, .LBB89_5
.LBB89_10:
	mov.n	a3, a5
	retw.n
.Lfunc_end89:
	.size	.L__unnamed_78, .Lfunc_end89-.L__unnamed_78
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_79,@function
.L__unnamed_79:                         # @93
# %bb.0:
	entry	a1, 32
	l32i.n	a8, a2, 8
	movi.n	a9, 0
	beq	a8, a9, .LBB90_2
# %bb.1:
	movi.n	a9, 1
.LBB90_2:
	l32i.n	a10, a2, 12
	add.n	a9, a10, a9
	neg	a3, a9
	neg	a2, a8
	retw.n
.Lfunc_end90:
	.size	.L__unnamed_79, .Lfunc_end90-.L__unnamed_79
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_80,@function
.L__unnamed_80:                         # @94
# %bb.0:
	entry	a1, 32
	l32i.n	a3, a2, 12
	movi.n	a8, 0
	movi.n	a9, 1
	mov.n	a10, a9
	bgeu	a3, a5, .LBB91_6
# %bb.1:
	l32i.n	a2, a2, 8
	bgeu	a2, a4, .LBB91_7
.LBB91_2:
	bne	a3, a5, .LBB91_8
.LBB91_3:
	beq	a9, a8, .LBB91_9
.LBB91_4:
	beq	a9, a8, .LBB91_10
.LBB91_5:
	retw.n
.LBB91_6:
	mov.n	a10, a8
	l32i.n	a2, a2, 8
	bltu	a2, a4, .LBB91_2
.LBB91_7:
	mov.n	a9, a8
	beq	a3, a5, .LBB91_3
.LBB91_8:
	mov.n	a9, a10
	bne	a9, a8, .LBB91_4
.LBB91_9:
	mov.n	a2, a4
	bne	a9, a8, .LBB91_5
.LBB91_10:
	mov.n	a3, a5
	retw.n
.Lfunc_end91:
	.size	.L__unnamed_80, .Lfunc_end91-.L__unnamed_80
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_81,@function
.L__unnamed_81:                         # @95
# %bb.0:
	entry	a1, 32
	mov.n	a2, a6
	mov.n	a3, a7
	retw.n
.Lfunc_end92:
	.size	.L__unnamed_81, .Lfunc_end92-.L__unnamed_81
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_82,@function
.L__unnamed_82:                         # @96
# %bb.0:
	entry	a1, 32
	mov.n	a8, a2
	l32i.n	a9, a8, 12
	movi.n	a11, 0
	movi.n	a2, 1
	mov.n	a10, a2
	bgeu	a9, a5, .LBB93_4
# %bb.1:
	l32i.n	a8, a8, 8
	bgeu	a8, a4, .LBB93_5
.LBB93_2:
	bne	a9, a5, .LBB93_6
.LBB93_3:
	retw.n
.LBB93_4:
	mov.n	a10, a11
	l32i.n	a8, a8, 8
	bltu	a8, a4, .LBB93_2
.LBB93_5:
	mov.n	a2, a11
	beq	a9, a5, .LBB93_3
.LBB93_6:
	mov.n	a2, a10
	retw.n
.Lfunc_end93:
	.size	.L__unnamed_82, .Lfunc_end93-.L__unnamed_82
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_83,@function
.L__unnamed_83:                         # @97
# %bb.0:
	entry	a1, 32
	mov.n	a8, a2
	l32i.n	a9, a8, 12
	movi.n	a11, 0
	movi.n	a2, 1
	mov.n	a10, a2
	bgeu	a5, a9, .LBB94_4
# %bb.1:
	l32i.n	a8, a8, 8
	bgeu	a4, a8, .LBB94_5
.LBB94_2:
	bne	a9, a5, .LBB94_6
.LBB94_3:
	retw.n
.LBB94_4:
	mov.n	a10, a11
	l32i.n	a8, a8, 8
	bltu	a4, a8, .LBB94_2
.LBB94_5:
	mov.n	a2, a11
	beq	a9, a5, .LBB94_3
.LBB94_6:
	mov.n	a2, a10
	retw.n
.Lfunc_end94:
	.size	.L__unnamed_83, .Lfunc_end94-.L__unnamed_83
                                        # -- End function
	.global	RuntimeOptions_Serialise # -- Begin function RuntimeOptions_Serialise
	.p2align	2
	.type	RuntimeOptions_Serialise,@function
RuntimeOptions_Serialise:               # @RuntimeOptions_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	l32i.n	a9, a3, 0
	s32i.n	a9, a8, 0
	l32i.n	a9, a3, 4
	s32i.n	a9, a8, 4
	l8ui	a9, a3, 4
	s8i	a9, a8, 8
	l32i.n	a9, a3, 12
	s32i.n	a9, a8, 12
	l32i.n	a9, a3, 8
	s32i.n	a9, a8, 16
	l32i.n	a9, a3, 12
	l32i.n	a10, a3, 16
	s32i.n	a10, a8, 28
	s32i.n	a9, a8, 24
	l32i.n	a9, a3, 16
	l32i.n	a10, a3, 20
	s32i.n	a10, a8, 36
	s32i.n	a9, a8, 32
	l8ui	a9, a3, 20
	s8i	a9, a8, 40
	l8ui	a9, a3, 41
	s8i	a9, a8, 41
	l8ui	a9, a3, 42
	s8i	a9, a8, 42
	l8ui	a9, a3, 43
	s8i	a9, a8, 43
	l8ui	a9, a3, 44
	s8i	a9, a8, 44
	l8ui	a9, a3, 45
	s8i	a9, a8, 45
	retw.n
.Lfunc_end95:
	.size	RuntimeOptions_Serialise, .Lfunc_end95-RuntimeOptions_Serialise
                                        # -- End function
	.global	RuntimeOptions_Deserialise # -- Begin function RuntimeOptions_Deserialise
	.p2align	2
	.type	RuntimeOptions_Deserialise,@function
RuntimeOptions_Deserialise:             # @RuntimeOptions_Deserialise
# %bb.0:
	entry	a1, 32
	retw.n
.Lfunc_end96:
	.size	RuntimeOptions_Deserialise, .Lfunc_end96-RuntimeOptions_Deserialise
                                        # -- End function
	.literal_position               # -- Begin function Array_U8_val_SerialiseTrace
	.literal .LCPI97_0, pony_serialise_reserve
	.global	Array_U8_val_SerialiseTrace
	.p2align	2
	.type	Array_U8_val_SerialiseTrace,@function
Array_U8_val_SerialiseTrace:            # @Array_U8_val_SerialiseTrace
# %bb.0:
	entry	a1, 32
	l32i.n	a13, a3, 8
	l32i.n	a12, a3, 4
	or	a8, a12, a13
	beqz	a8, .LBB97_2
# %bb.1:
	l32i.n	a11, a3, 12
	l32r	a8, .LCPI97_0
	mov.n	a10, a2
	callx8	a8
.LBB97_2:
	retw.n
.Lfunc_end97:
	.size	Array_U8_val_SerialiseTrace, .Lfunc_end97-Array_U8_val_SerialiseTrace
                                        # -- End function
	.literal_position               # -- Begin function Array_U8_val_Serialise
	.literal .LCPI98_0, pony_serialise_offset
	.literal .LCPI98_1, memcpy
	.global	Array_U8_val_Serialise
	.p2align	2
	.type	Array_U8_val_Serialise,@function
Array_U8_val_Serialise:                 # @Array_U8_val_Serialise
# %bb.0:
	entry	a1, 48
	add.n	a9, a4, a6
	movi.n	a8, 0
	s32i.n	a8, a9, 4
	movi.n	a8, 23
	s32i.n	a8, a9, 0
	l32i.n	a8, a1, 48
	beqi	a8, 2, .LBB98_2
# %bb.1:
	l32i.n	a10, a3, 4
	s32i.n	a10, a1, 12
	l32i.n	a8, a3, 8
	s32i.n	a8, a9, 20
	s32i.n	a10, a9, 16
	s32i.n	a8, a9, 12
	s32i.n	a10, a9, 8
	l32i.n	a11, a3, 12
	s32i.n	a11, a1, 8
	l32r	a8, .LCPI98_0
	mov.n	a10, a2
	s32i.n	a4, a1, 4
	s32i.n	a9, a1, 0
	callx8	a8
	l32i.n	a8, a1, 0
	s32i.n	a11, a8, 28
	s32i.n	a10, a8, 24
	l32i.n	a8, a1, 4
	add.n	a10, a8, a10
	l32r	a8, .LCPI98_1
	l32i.n	a11, a1, 8
	l32i.n	a12, a1, 12
	callx8	a8
.LBB98_2:
	retw.n
.Lfunc_end98:
	.size	Array_U8_val_Serialise, .Lfunc_end98-Array_U8_val_Serialise
                                        # -- End function
	.literal_position               # -- Begin function Array_U8_val_Deserialise
	.literal .LCPI99_0, .L__unnamed_25
	.literal .LCPI99_1, pony_deserialise_block
	.global	Array_U8_val_Deserialise
	.p2align	2
	.type	Array_U8_val_Deserialise,@function
Array_U8_val_Deserialise:               # @Array_U8_val_Deserialise
# %bb.0:
	entry	a1, 40
	s32i.n	a3, a1, 0
	l32r	a8, .LCPI99_0
	s32i.n	a8, a3, 0
	l32i.n	a14, a3, 8
	l32i.n	a13, a3, 16
	l32i.n	a12, a3, 12
	l32r	a8, .LCPI99_1
	mov.n	a10, a2
	mov.n	a15, a12
	callx8	a8
	l32i.n	a8, a1, 0
	s32i.n	a10, a8, 12
	retw.n
.Lfunc_end99:
	.size	Array_U8_val_Deserialise, .Lfunc_end99-Array_U8_val_Deserialise
                                        # -- End function
	.literal_position               # -- Begin function Env_Serialise
	.literal .LCPI100_0, pony_serialise_offset
	.global	Env_Serialise
	.p2align	2
	.type	Env_Serialise,@function
Env_Serialise:                          # @Env_Serialise
# %bb.0:
	entry	a1, 48
	s32i.n	a3, a1, 4
	s32i.n	a2, a1, 0
	add.n	a9, a4, a6
	s32i.n	a9, a1, 8
	movi.n	a8, 0
	s32i.n	a8, a9, 4
	movi.n	a8, 13
	s32i.n	a8, a9, 0
	l32i.n	a11, a3, 4
	l32r	a8, .LCPI100_0
	s32i.n	a8, a1, 12
	mov.n	a10, a2
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 12
	s32i.n	a10, a8, 8
	l32i.n	a8, a1, 4
	l32i.n	a11, a8, 8
	l32i.n	a10, a1, 0
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 20
	s32i.n	a10, a8, 16
	l32i.n	a8, a1, 4
	l32i.n	a11, a8, 12
	l32i.n	a10, a1, 0
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 28
	s32i.n	a10, a8, 24
	l32i.n	a8, a1, 4
	l32i.n	a11, a8, 16
	l32i.n	a10, a1, 0
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 36
	s32i.n	a10, a8, 32
	l32i.n	a8, a1, 4
	l32i.n	a11, a8, 20
	l32i.n	a10, a1, 0
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 44
	s32i.n	a10, a8, 40
	l32i.n	a8, a1, 4
	l32i.n	a11, a8, 24
	l32i.n	a10, a1, 0
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 52
	s32i.n	a10, a8, 48
	l32i.n	a8, a1, 4
	l32i.n	a11, a8, 28
	l32i.n	a10, a1, 0
	l32i.n	a8, a1, 12
	callx8	a8
	l32i.n	a8, a1, 8
	s32i.n	a11, a8, 60
	s32i.n	a10, a8, 56
	retw.n
.Lfunc_end100:
	.size	Env_Serialise, .Lfunc_end100-Env_Serialise
                                        # -- End function
	.literal_position               # -- Begin function Env_Deserialise
	.literal .LCPI101_0, .L__unnamed_2
	.literal .LCPI101_1, pony_deserialise_offset
	.literal .LCPI101_2, .L__unnamed_9
	.global	Env_Deserialise
	.p2align	2
	.type	Env_Deserialise,@function
Env_Deserialise:                        # @Env_Deserialise
# %bb.0:
	entry	a1, 56
	s32i.n	a3, a1, 12
	s32i.n	a2, a1, 8
	l32r	a8, .LCPI101_0
	s32i.n	a8, a3, 0
	l32i.n	a13, a3, 8
	l32i.n	a12, a3, 4
	movi.n	a11, 0
	s32i.n	a11, a1, 4
	l32r	a8, .LCPI101_1
	s32i.n	a8, a1, 16
	mov.n	a10, a2
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 4
	l32i.n	a13, a8, 12
	l32i.n	a12, a8, 8
	l32i.n	a10, a1, 8
	l32i.n	a11, a1, 4
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 8
	l32i.n	a13, a8, 16
	l32i.n	a12, a8, 12
	l32i.n	a10, a1, 8
	l32i.n	a11, a1, 4
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 12
	l32i.n	a13, a8, 20
	l32i.n	a12, a8, 16
	l32i.n	a10, a1, 8
	l32i.n	a11, a1, 4
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 16
	l32i.n	a13, a8, 24
	l32i.n	a12, a8, 20
	l32r	a11, .LCPI101_2
	s32i.n	a11, a1, 0
	l32i.n	a10, a1, 8
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 20
	l32i.n	a13, a8, 28
	l32i.n	a12, a8, 24
	l32i.n	a10, a1, 8
	l32i.n	a11, a1, 0
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 24
	l32i.n	a13, a8, 32
	l32i.n	a12, a8, 28
	l32i.n	a10, a1, 8
	l32i.n	a11, a1, 4
	l32i.n	a8, a1, 16
	callx8	a8
	l32i.n	a8, a1, 12
	s32i.n	a10, a8, 28
	retw.n
.Lfunc_end101:
	.size	Env_Deserialise, .Lfunc_end101-Env_Deserialise
                                        # -- End function
	.global	None_Serialise          # -- Begin function None_Serialise
	.p2align	2
	.type	None_Serialise,@function
None_Serialise:                         # @None_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 7
	s32i.n	a9, a8, 0
	retw.n
.Lfunc_end102:
	.size	None_Serialise, .Lfunc_end102-None_Serialise
                                        # -- End function
	.global	AsioEvent_Serialise     # -- Begin function AsioEvent_Serialise
	.p2align	2
	.type	AsioEvent_Serialise,@function
AsioEvent_Serialise:                    # @AsioEvent_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 15
	s32i.n	a9, a8, 0
	retw.n
.Lfunc_end103:
	.size	AsioEvent_Serialise, .Lfunc_end103-AsioEvent_Serialise
                                        # -- End function
	.global	$0$15_Serialise         # -- Begin function $0$15_Serialise
	.p2align	2
	.type	$0$15_Serialise,@function
$0$15_Serialise:                        # @"$0$15_Serialise"
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 21
	s32i.n	a9, a8, 0
	retw.n
.Lfunc_end104:
	.size	$0$15_Serialise, .Lfunc_end104-($0$15_Serialise)
                                        # -- End function
	.global	U8_Serialise            # -- Begin function U8_Serialise
	.p2align	2
	.type	U8_Serialise,@function
U8_Serialise:                           # @U8_Serialise
# %bb.0:
	entry	a1, 32
	add.n	a8, a4, a6
	movi.n	a9, 0
	s32i.n	a9, a8, 4
	movi.n	a9, 8
	s32i.n	a9, a8, 0
	l8ui	a9, a3, 4
	s8i	a9, a8, 8
	retw.n
.Lfunc_end105:
	.size	U8_Serialise, .Lfunc_end105-U8_Serialise
                                        # -- End function
	.literal_position               # -- Begin function U8_Deserialise
	.literal .LCPI106_0, .L__unnamed_84
	.global	U8_Deserialise
	.p2align	2
	.type	U8_Deserialise,@function
U8_Deserialise:                         # @U8_Deserialise
# %bb.0:
	entry	a1, 32
	l32r	a8, .LCPI106_0
	s32i.n	a8, a3, 0
	retw.n
.Lfunc_end106:
	.size	U8_Deserialise, .Lfunc_end106-U8_Deserialise
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_85,@function
.L__unnamed_85:                         # @98
# %bb.0:
	entry	a1, 32
	mov.n	a2, a4
	retw.n
.Lfunc_end107:
	.size	.L__unnamed_85, .Lfunc_end107-.L__unnamed_85
                                        # -- End function
	.p2align	2               # -- Begin function 
	.type	.L__unnamed_86,@function
.L__unnamed_86:                         # @99
# %bb.0:
	entry	a1, 32
	movi	a8, 255
	and	a8, a3, a8
	l8ui	a9, a2, 4
	bne	a9, a8, .LBB108_2
# %bb.1:
	movi.n	a2, 0
	retw.n
.LBB108_2:
	movi.n	a2, 1
	retw.n
.Lfunc_end108:
	.size	.L__unnamed_86, .Lfunc_end108-.L__unnamed_86
                                        # -- End function
	.literal_position               # -- Begin function pony_main
	.literal .LCPI109_0, pony_init
	.literal .LCPI109_1, pony_ctx
	.literal .LCPI109_2, .L__unnamed_87
	.literal .LCPI109_3, pony_create
	.literal .LCPI109_4, pony_become
	.literal .LCPI109_5, pony_alloc_small
	.literal .LCPI109_6, .L__unnamed_2
	.literal .LCPI109_7, pony_alloc_msg
	.literal .LCPI109_8, pony_gc_send
	.literal .LCPI109_9, pony_traceknown
	.literal .LCPI109_10, pony_send_done
	.literal .LCPI109_11, pony_sendv_single
	.literal .LCPI109_12, .L__unnamed_88
	.literal .LCPI109_13, pony_start
	.literal .LCPI109_14, .L__unnamed_89
	.literal .LCPI109_15, puts
	.literal .LCPI109_16, pony_get_exitcode
	.global	pony_main
	.p2align	2
	.type	pony_main,@function
pony_main:                                   # @pony_main
# %bb.0:
	entry	a1, 88
	s32i.n	a4, a1, 28
	s32i.n	a3, a1, 12
	l32r	a8, .LCPI109_0
	mov.n	a10, a2
	mov.n	a11, a3
	callx8	a8
	s32i.n	a10, a1, 8
	l32r	a8, .LCPI109_1
	callx8	a8
	s32i.n	a10, a1, 36
	l32r	a11, .LCPI109_2
	l32r	a8, .LCPI109_3
	callx8	a8
	mov.n	a11, a10
	s32i.n	a11, a1, 16
	l32r	a8, .LCPI109_4
	l32i.n	a10, a1, 36
	s32i.n	a8, a1, 20
	callx8	a8
	movi.n	a11, 1
	s32i.n	a11, a1, 32
	l32r	a8, .LCPI109_5
	l32i.n	a10, a1, 36
	callx8	a8
	s32i.n	a10, a1, 24
	l32r	a8, .LCPI109_6
	s32i.n	a8, a1, 4
	s32i.n	a8, a10, 0
	l32i.n	a11, a1, 8
	l32i.n	a12, a1, 12
	l32i.n	a13, a1, 28
	call8	.L__unnamed_37
	movi.n	a10, 0
	s32i.n	a10, a1, 28
	l32r	a8, .LCPI109_7
	l32i.n	a11, a1, 32
	callx8	a8
	s32i.n	a10, a1, 12
	l32i.n	a8, a1, 24
	s32i.n	a8, a10, 16
	l32r	a8, .LCPI109_8
	l32i.n	a10, a1, 36
	callx8	a8
	l32r	a8, .LCPI109_9
	l32i.n	a10, a1, 36
	l32i.n	a11, a1, 24
	l32i.n	a12, a1, 4
	l32i.n	a13, a1, 32
	callx8	a8
	l32r	a8, .LCPI109_10
	l32i.n	a10, a1, 36
	callx8	a8
	l32r	a8, .LCPI109_11
	l32i.n	a10, a1, 36
	l32i.n	a11, a1, 16
	l32i.n	a12, a1, 12
	mov.n	a13, a12
	l32i.n	a14, a1, 32
	callx8	a8
	l32i.n	a10, a1, 28
	s32i.n	a10, a1, 52
	movi.n	a8, 25
	s32i.n	a8, a1, 48
	l32r	a8, .LCPI109_12
	s32i.n	a8, a1, 44
	movi	a8, 257
	s16i	a8, a1, 40
	addi	a12, a1, 40
	l32r	a8, .LCPI109_13
	mov.n	a11, a10
	callx8	a8
	l32i.n	a8, a1, 32
	and	a8, a10, a8
	s32i.n	a8, a1, 32
	bnez	a8, .LBB109_2
# %bb.1:
	l32r	a10, .LCPI109_14
	l32r	a8, .LCPI109_15
	callx8	a8
.LBB109_2:
	l32i.n	a10, a1, 36
	l32i.n	a11, a1, 28
	l32i.n	a8, a1, 20
	callx8	a8
	l32r	a8, .LCPI109_16
	callx8	a8
	mov.n	a2, a10
	l32i.n	a8, a1, 32
	l32i.n	a9, a1, 28
	bne	a8, a9, .LBB109_4
# %bb.3:
	movi.n	a2, -1
.LBB109_4:
	retw.n
.Lfunc_end109:
	.size	pony_main, .Lfunc_end109-pony_main
                                        # -- End function
	.type	.L__unnamed_56,@object  # @0
	.section	.rodata,"a",@progbits
	.p2align	4
.L__unnamed_56:
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	U32_Serialise
	.long	U32_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_29
	.long	.L__unnamed_58
	.long	.L__unnamed_60
	.long	.L__unnamed_29
	.long	.L__unnamed_63
	.long	.L__unnamed_62
	.long	.L__unnamed_63
	.long	.L__unnamed_59
	.long	.L__unnamed_61
	.long	.L__unnamed_57
	.long	.L__unnamed_58
	.long	.L__unnamed_60
	.long	.L__unnamed_61
	.long	.L__unnamed_59
	.long	.L__unnamed_57
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_29
	.size	.L__unnamed_56, 156

	.type	.L__unnamed_6,@object   # @1
	.p2align	4
.L__unnamed_6:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_10
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_11
	.long	0
	.long	.L__unnamed_11
	.long	.L__unnamed_11
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_11
	.size	.L__unnamed_6, 116

	.type	.L__unnamed_3,@object   # @2
	.p2align	4
.L__unnamed_3:
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0
	.long	0
	.long	0
	.long	LED_Serialise
	.long	LED_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_13
	.long	.L__unnamed_12
	.size	.L__unnamed_3, 72

	.type	.L__unnamed_91,@object  # @3
	.p2align	4
.L__unnamed_91:
	.long	5                       # 0x5
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	.L__unnamed_38
	.long	0
	.long	0
	.long	AmbientAuth_Serialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_92
	.long	0
	.long	.L__unnamed_47
	.size	.L__unnamed_91, 68

	.type	.L__unnamed_40,@object  # @4
	.p2align	4
.L__unnamed_40:
	.long	19                      # 0x13
	.long	264                     # 0x108
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0
	.long	StdStream_Trace
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	StdStream_Dispatch
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_93
	.long	0
	.long	.L__unnamed_14
	.long	.L__unnamed_15
	.size	.L__unnamed_40, 72

	.type	.L__unnamed_87,@object  # @5
	.p2align	4
.L__unnamed_87:
	.long	3                       # 0x3
	.long	264                     # 0x108
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0
	.long	Main_Trace
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	Main_Dispatch
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	Main_runtime_override_defaults_oo
	.long	.L__unnamed_16
	.size	.L__unnamed_87, 72

	.type	.L__unnamed_5,@object   # @6
	.p2align	4
.L__unnamed_5:
	.long	9                       # 0x9
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0
	.long	String_Trace
	.long	String_SerialiseTrace
	.long	String_Serialise
	.long	String_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_18
	.long	.L__unnamed_17
	.size	.L__unnamed_5, 72

	.type	.L__unnamed_9,@object   # @7
	.p2align	4
.L__unnamed_9:
	.long	11                      # 0xb
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0
	.long	Array_String_val_Trace
	.long	Array_String_val_SerialiseTrace
	.long	Array_String_val_Serialise
	.long	Array_String_val_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_19
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_21
	.long	.L__unnamed_20
	.size	.L__unnamed_9, 96

	.type	.L__unnamed_64,@object  # @8
	.p2align	4
.L__unnamed_64:
	.long	12                      # 0xc
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	Bool_Serialise
	.long	Bool_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_66
	.long	.L__unnamed_67
	.long	.L__unnamed_65
	.long	.L__unnamed_67
	.long	.L__unnamed_65
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_22
	.size	.L__unnamed_64, 156

	.type	.L__unnamed_68,@object  # @9
	.p2align	4
.L__unnamed_68:
	.long	20                      # 0x14
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	F64_Serialise
	.long	F64_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_23
	.size	.L__unnamed_68, 156

	.type	.L__unnamed_39,@object  # @10
	.p2align	4
.L__unnamed_39:
	.long	17                      # 0x11
	.long	288                     # 0x120
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0
	.long	Stdin_Trace
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	Stdin_Dispatch
	.long	0
	.long	0                       # 0x0
	.long	.L__unnamed_94
	.long	0
	.long	.L__unnamed_28
	.long	.L__unnamed_24
	.long	.L__unnamed_8
	.long	.L__unnamed_27
	.long	.L__unnamed_26
	.size	.L__unnamed_39, 84

	.type	.L__unnamed_69,@object  # @11
	.p2align	4
.L__unnamed_69:
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	I32_Serialise
	.long	I32_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_29
	.size	.L__unnamed_69, 156

	.type	.L__unnamed_1,@object   # @12
	.p2align	4
.L__unnamed_1:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.size	.L__unnamed_1, 64

	.type	.L__unnamed_70,@object  # @13
	.p2align	4
.L__unnamed_70:
	.long	4                       # 0x4
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	USize_Serialise
	.long	USize_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_74
	.long	.L__unnamed_81
	.long	.L__unnamed_79
	.long	.L__unnamed_75
	.long	.L__unnamed_79
	.long	.L__unnamed_80
	.long	.L__unnamed_76
	.long	.L__unnamed_73
	.long	.L__unnamed_83
	.long	.L__unnamed_72
	.long	.L__unnamed_77
	.long	.L__unnamed_74
	.long	.L__unnamed_80
	.long	.L__unnamed_71
	.long	.L__unnamed_75
	.long	.L__unnamed_72
	.long	.L__unnamed_78
	.long	.L__unnamed_78
	.long	.L__unnamed_76
	.long	.L__unnamed_73
	.long	.L__unnamed_82
	.long	.L__unnamed_82
	.long	.L__unnamed_30
	.long	.L__unnamed_77
	.long	.L__unnamed_71
	.long	.L__unnamed_83
	.size	.L__unnamed_70, 168

	.type	.L__unnamed_25,@object  # @14
	.p2align	4
.L__unnamed_25:
	.long	23                      # 0x17
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0
	.long	Array_U8_val_Trace
	.long	Array_U8_val_SerialiseTrace
	.long	Array_U8_val_Serialise
	.long	Array_U8_val_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_33
	.long	.L__unnamed_31
	.long	.L__unnamed_33
	.long	.L__unnamed_36
	.long	.L__unnamed_34
	.long	.L__unnamed_31
	.long	.L__unnamed_35
	.long	.L__unnamed_32
	.long	.L__unnamed_31
	.long	.L__unnamed_33
	.size	.L__unnamed_25, 104

	.type	.L__unnamed_2,@object   # @15
	.p2align	4
.L__unnamed_2:
	.long	13                      # 0xd
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	0
	.long	Env_Trace
	.long	Env_Trace
	.long	Env_Serialise
	.long	Env_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_42
	.long	.L__unnamed_43
	.long	.L__unnamed_43
	.long	.L__unnamed_37
	.long	.L__unnamed_42
	.long	.L__unnamed_43
	.long	.L__unnamed_43
	.long	.L__unnamed_42
	.long	.L__unnamed_42
	.size	.L__unnamed_2, 100

	.type	.L__unnamed_95,@object  # @16
	.p2align	4
.L__unnamed_95:
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	.L__unnamed_7
	.long	0
	.long	0
	.long	None_Serialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_96
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_47
	.size	.L__unnamed_95, 92

	.type	.L__unnamed_97,@object  # @17
	.p2align	4
.L__unnamed_97:
	.long	15                      # 0xf
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	.L__unnamed_98
	.long	0
	.long	0
	.long	AsioEvent_Serialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_46
	.long	.L__unnamed_44
	.long	.L__unnamed_44
	.long	.L__unnamed_46
	.long	.L__unnamed_45
	.long	.L__unnamed_45
	.long	.L__unnamed_47
	.size	.L__unnamed_97, 92

	.type	.L__unnamed_99,@object  # @18
	.p2align	4
.L__unnamed_99:
	.long	21                      # 0x15
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	.L__unnamed_41
	.long	0
	.long	0
	.long	($0$15_Serialise)
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_47
	.size	.L__unnamed_99, 92

	.type	.L__unnamed_84,@object  # @19
	.p2align	4
.L__unnamed_84:
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	U8_Serialise
	.long	U8_Deserialise
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_86
	.long	.L__unnamed_85
	.long	.L__unnamed_86
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	.L__unnamed_48
	.size	.L__unnamed_84, 156

	.type	.L__unnamed_4,@object   # @20
	.p2align	4
.L__unnamed_4:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4294967295              # 0xffffffff
	.long	.L__unnamed_90
	.long	0
	.long	.L__unnamed_10
	.long	.L__unnamed_51
	.long	.L__unnamed_55
	.long	.L__unnamed_51
	.long	.L__unnamed_11
	.long	.L__unnamed_53
	.long	.L__unnamed_11
	.long	.L__unnamed_11
	.long	.L__unnamed_50
	.long	.L__unnamed_55
	.long	.L__unnamed_49
	.long	.L__unnamed_51
	.long	.L__unnamed_11
	.long	.L__unnamed_52
	.long	.L__unnamed_53
	.long	.L__unnamed_54
	.long	.L__unnamed_55
	.size	.L__unnamed_4, 132

	.type	.L__unnamed_88,@object  # @21
	.p2align	4
.L__unnamed_88:
	.long	.L__unnamed_56
	.long	.L__unnamed_3
	.long	0
	.long	.L__unnamed_87
	.long	.L__unnamed_70
	.long	.L__unnamed_91
	.long	0
	.long	.L__unnamed_95
	.long	.L__unnamed_84
	.long	.L__unnamed_5
	.long	0
	.long	.L__unnamed_9
	.long	.L__unnamed_64
	.long	.L__unnamed_2
	.long	0
	.long	.L__unnamed_97
	.long	.L__unnamed_69
	.long	.L__unnamed_39
	.long	0
	.long	.L__unnamed_40
	.long	.L__unnamed_68
	.long	.L__unnamed_99
	.long	0
	.long	.L__unnamed_25
	.long	0
	.size	.L__unnamed_88, 100

	.type	.L__unnamed_38,@object  # @22
	.p2align	3
.L__unnamed_38:
	.long	.L__unnamed_91
	.size	.L__unnamed_38, 4

	.type	.L__unnamed_7,@object   # @23
	.p2align	3
.L__unnamed_7:
	.long	.L__unnamed_95
	.size	.L__unnamed_7, 4

	.type	.L__unnamed_98,@object  # @24
	.p2align	3
.L__unnamed_98:
	.long	.L__unnamed_97
	.size	.L__unnamed_98, 4

	.type	.L__unnamed_41,@object  # @25
	.p2align	3
.L__unnamed_41:
	.long	.L__unnamed_99
	.size	.L__unnamed_41, 4

	.type	.L__unnamed_92,@object  # @26
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.L__unnamed_92:
	.quad	1                       # 0x1
	.size	.L__unnamed_92, 8

	.type	.L__unnamed_93,@object  # @27
	.p2align	3
.L__unnamed_93:
	.quad	4                       # 0x4
	.size	.L__unnamed_93, 8

	.type	.L__unnamed_94,@object  # @28
	.p2align	3
.L__unnamed_94:
	.quad	2                       # 0x2
	.size	.L__unnamed_94, 8

	.type	.L__unnamed_96,@object  # @29
	.p2align	3
.L__unnamed_96:
	.quad	17                      # 0x11
	.size	.L__unnamed_96, 8

	.type	.L__unnamed_100,@object # @30
	.p2align	3
.L__unnamed_100:
	.quad	8                       # 0x8
	.size	.L__unnamed_100, 8

	.type	.L__unnamed_90,@object  # @31
	.p2align	3
.L__unnamed_90:
	.space	8
	.size	.L__unnamed_90, 8

	.type	.L__unnamed_89,@object  # @32
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.L__unnamed_89:
	.asciz	"Error: couldn't start runtime!"
	.size	.L__unnamed_89, 31


	.section	".note.GNU-stack","",@progbits
