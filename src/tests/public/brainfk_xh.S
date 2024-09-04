.section .data
.global    TAPE_LEN
.global    BUFFER_LEN
.global    tape
.global    program
.global    ptr
TAPE_LEN:
        .quad   65536
BUFFER_LEN:
        .quad   32768
tape:
        .zero   524288
program:
        .zero   262144
ptr:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global read_program
.global interpret
.global main
read_program:

        //bb1:

bb1:

        //  %r184 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #0
        //  %r185 = add i32 0, 0

        mov     x8, #0
        mov     x9, x8
        //  %r186 = add i32 0, 0

        mov     x8, #0
        //  %r102 = call i32 @getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r187 = add i32 %r102, 0

        mov     x8, x8
        //  br label %bb_while_3_14_cond


        mov     x9, x9
        b     bb_while_3_14_cond
        //bb_while_3_14_cond:

bb_while_3_14_cond:

        //  %r191 = phi i32 [ %r185, %bb1 ], [ %r190, %bb_while_3_14_whilestms ]

        //  %r105 = icmp slt i32 %r191, %r187

        cmp     x9, x8
        //  br i1 %r105, label %bb_while_3_14_whilestms, label %bb_while_3_14_bre


        mov     x11, x9
        mov     x9, x9
        b.lt     bb_while_3_14_whilestms
        b     bb_while_3_14_bre
        //bb_while_3_14_whilestms:

bb_while_3_14_whilestms:

        //  %r189 = phi i32 [ %r191, %bb_while_3_14_cond ]

        //  %r107 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r189

        mov     x9, #8
        mul     x10, x11, x9
        adrp     x9, program
        add     x9, x9, #:lo12:program
        add     x10, x9, x10
        //  %r108 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  store i32 %r108, i32* %r107

        str     x9, [x10]
        //  %r110 = add i32 %r189, 1

        mov     x9, #1
        add     x9, x11, x9
        //  %r190 = add i32 %r110, 0

        mov     x9, x9
        //  br label %bb_while_3_14_cond


        mov     x9, x9
        b     bb_while_3_14_cond
        //bb_while_3_14_bre:

bb_while_3_14_bre:

        //  %r188 = phi i32 [ %r191, %bb_while_3_14_cond ]

        //  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r188

        mov     x8, #8
        mul     x9, x9, x8
        adrp     x8, program
        add     x8, x8, #:lo12:program
        add     x9, x8, x9
        //  store i32 0, i32* %r112

        mov     x8, #0
        str     x8, [x9]
        //  ret void

        mov     sp, x29
        ret
interpret:

        //bb2:

bb2:

        //  %r195 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        sub     sp, sp, #8
        mov     x16, x0
        str     x16, [sp]
        mov     x8, #0
        mov     x10, x8
        //  %r196 = add i32 0, 0

        mov     x8, #0
        mov     x9, x8
        //  %r197 = add i32 0, 0

        mov     x8, #0
        //  %r198 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_3_26_cond


        mov     x12, x8
        mov     x11, x10
        mov     x10, x9
        b     bb_while_3_26_cond
        //bb_while_3_26_cond:

bb_while_3_26_cond:

        //  %r281 = phi i32 [ %r198, %bb2 ], [ %r280, %bb_if_5_52_end ]

        //  %r282 = phi i32 [ %r195, %bb2 ], [ %r278, %bb_if_5_52_end ]

        //  %r283 = phi i32 [ %r196, %bb2 ], [ %r279, %bb_if_5_52_end ]

        //  %r118 = getelementptr i32, i32* %r113, i32 %r281

        mov     x8, #8
        mul     x8, x12, x8
        ldr     x16, [sp]
        add     x8, x16, x8
        //  %r119 = load i32, i32* %r118

        ldr     x9, [x8]
        //  %r120 = icmp ne i32 %r119, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r120, label %bb_while_3_26_whilestms, label %bb_while_3_26_bre


        mov     x9, x12
        mov     x8, x10
        b.ne     bb_while_3_26_whilestms
        b     bb_while_3_26_bre
        //bb_while_3_26_whilestms:

bb_while_3_26_whilestms:

        //  %r251 = phi i32 [ %r281, %bb_while_3_26_cond ]

        //  %r252 = phi i32 [ %r282, %bb_while_3_26_cond ]

        //  %r253 = phi i32 [ %r283, %bb_while_3_26_cond ]

        //  %r122 = getelementptr i32, i32* %r113, i32 %r251

        mov     x10, #8
        mul     x10, x9, x10
        ldr     x16, [sp]
        add     x10, x16, x10
        //  %r123 = load i32, i32* %r122

        ldr     x10, [x10]
        //  %r254 = add i32 %r123, 0

        mov     x14, x10
        //  %r125 = icmp eq i32 %r254, 62

        mov     x10, #62
        cmp     x14, x10
        //  br i1 %r125, label %bb_if_5_28_true, label %bb_if_5_28_false


        mov     x12, x9
        mov     x11, x14
        mov     x10, x8
        mov     x13, x9
        mov     x9, x14
        mov     x8, x8
        b.eq     bb_if_5_28_true
        b     bb_if_5_28_false
        //bb_if_5_28_true:

bb_if_5_28_true:

        //  %r296 = phi i32 [ %r251, %bb_while_3_26_whilestms ]

        //  %r297 = phi i32 [ %r254, %bb_while_3_26_whilestms ]

        //  %r298 = phi i32 [ %r253, %bb_while_3_26_whilestms ]

        //  %r126 = load i32, i32* @ptr

        adrp     x8, ptr
        add     x8, x8, #:lo12:ptr
        ldr     x9, [x8]
        //  %r127 = add i32 %r126, 1

        mov     x8, #1
        add     x9, x9, x8
        //  store i32 %r127, i32* @ptr

        adrp     x8, ptr
        add     x8, x8, #:lo12:ptr
        str     x9, [x8]
        //  br label %bb_if_5_28_end


        mov     x13, x12
        mov     x12, x11
        mov     x11, x10
        b     bb_if_5_28_end
        //bb_if_5_28_false:

bb_if_5_28_false:

        //  %r290 = phi i32 [ %r251, %bb_while_3_26_whilestms ]

        //  %r291 = phi i32 [ %r254, %bb_while_3_26_whilestms ]

        //  %r292 = phi i32 [ %r253, %bb_while_3_26_whilestms ]

        //  br label %bb_if_5_28_end


        mov     x13, x13
        mov     x12, x9
        mov     x11, x8
        b     bb_if_5_28_end
        //bb_if_5_28_end:

bb_if_5_28_end:

        //  %r214 = phi i32 [ %r296, %bb_if_5_28_true ], [ %r290, %bb_if_5_28_false ]

        //  %r215 = phi i32 [ %r297, %bb_if_5_28_true ], [ %r291, %bb_if_5_28_false ]

        //  %r216 = phi i32 [ %r298, %bb_if_5_28_true ], [ %r292, %bb_if_5_28_false ]

        //  %r129 = icmp eq i32 %r215, 60

        mov     x8, #60
        cmp     x12, x8
        //  br i1 %r129, label %bb_if_5_32_true, label %bb_if_5_32_false


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.eq     bb_if_5_32_true
        b     bb_if_5_32_false
        //bb_if_5_32_true:

bb_if_5_32_true:

        //  %r258 = phi i32 [ %r214, %bb_if_5_28_end ]

        //  %r259 = phi i32 [ %r215, %bb_if_5_28_end ]

        //  %r260 = phi i32 [ %r216, %bb_if_5_28_end ]

        //  %r130 = load i32, i32* @ptr

        adrp     x11, ptr
        add     x11, x11, #:lo12:ptr
        ldr     x12, [x11]
        //  %r131 = sub i32 %r130, 1

        mov     x11, #1
        sub     x12, x12, x11
        //  store i32 %r131, i32* @ptr

        adrp     x11, ptr
        add     x11, x11, #:lo12:ptr
        str     x12, [x11]
        //  br label %bb_if_5_32_end


        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        b     bb_if_5_32_end
        //bb_if_5_32_false:

bb_if_5_32_false:

        //  %r235 = phi i32 [ %r214, %bb_if_5_28_end ]

        //  %r236 = phi i32 [ %r215, %bb_if_5_28_end ]

        //  %r237 = phi i32 [ %r216, %bb_if_5_28_end ]

        //  br label %bb_if_5_32_end


        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b     bb_if_5_32_end
        //bb_if_5_32_end:

bb_if_5_32_end:

        //  %r220 = phi i32 [ %r258, %bb_if_5_32_true ], [ %r235, %bb_if_5_32_false ]

        //  %r221 = phi i32 [ %r259, %bb_if_5_32_true ], [ %r236, %bb_if_5_32_false ]

        //  %r222 = phi i32 [ %r260, %bb_if_5_32_true ], [ %r237, %bb_if_5_32_false ]

        //  %r133 = icmp eq i32 %r221, 43

        mov     x8, #43
        cmp     x12, x8
        //  br i1 %r133, label %bb_if_5_36_true, label %bb_if_5_36_false


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.eq     bb_if_5_36_true
        b     bb_if_5_36_false
        //bb_if_5_36_true:

bb_if_5_36_true:

        //  %r205 = phi i32 [ %r220, %bb_if_5_32_end ]

        //  %r206 = phi i32 [ %r221, %bb_if_5_32_end ]

        //  %r207 = phi i32 [ %r222, %bb_if_5_32_end ]

        //  %r134 = load i32, i32* @ptr

        adrp     x11, ptr
        add     x11, x11, #:lo12:ptr
        ldr     x12, [x11]
        //  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134

        mov     x11, #8
        mul     x12, x12, x11
        adrp     x11, tape
        add     x11, x11, #:lo12:tape
        add     x11, x11, x12
        //  %r136 = load i32, i32* @ptr

        adrp     x12, ptr
        add     x12, x12, #:lo12:ptr
        ldr     x13, [x12]
        //  %r137 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r136

        mov     x12, #8
        mul     x13, x13, x12
        adrp     x12, tape
        add     x12, x12, #:lo12:tape
        add     x12, x12, x13
        //  %r138 = load i32, i32* %r137

        ldr     x13, [x12]
        //  %r139 = add i32 %r138, 1

        mov     x12, #1
        add     x12, x13, x12
        //  store i32 %r139, i32* %r135

        str     x12, [x11]
        //  br label %bb_if_5_36_end


        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_if_5_36_end
        //bb_if_5_36_false:

bb_if_5_36_false:

        //  %r232 = phi i32 [ %r220, %bb_if_5_32_end ]

        //  %r233 = phi i32 [ %r221, %bb_if_5_32_end ]

        //  %r234 = phi i32 [ %r222, %bb_if_5_32_end ]

        //  br label %bb_if_5_36_end


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        b     bb_if_5_36_end
        //bb_if_5_36_end:

bb_if_5_36_end:

        //  %r268 = phi i32 [ %r205, %bb_if_5_36_true ], [ %r232, %bb_if_5_36_false ]

        //  %r269 = phi i32 [ %r206, %bb_if_5_36_true ], [ %r233, %bb_if_5_36_false ]

        //  %r270 = phi i32 [ %r207, %bb_if_5_36_true ], [ %r234, %bb_if_5_36_false ]

        //  %r141 = icmp eq i32 %r269, 45

        mov     x11, #45
        cmp     x9, x11
        //  br i1 %r141, label %bb_if_5_40_true, label %bb_if_5_40_false


        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b.eq     bb_if_5_40_true
        b     bb_if_5_40_false
        //bb_if_5_40_true:

bb_if_5_40_true:

        //  %r284 = phi i32 [ %r268, %bb_if_5_36_end ]

        //  %r285 = phi i32 [ %r269, %bb_if_5_36_end ]

        //  %r286 = phi i32 [ %r270, %bb_if_5_36_end ]

        //  %r142 = load i32, i32* @ptr

        adrp     x8, ptr
        add     x8, x8, #:lo12:ptr
        ldr     x9, [x8]
        //  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142

        mov     x8, #8
        mul     x9, x9, x8
        adrp     x8, tape
        add     x8, x8, #:lo12:tape
        add     x8, x8, x9
        //  %r144 = load i32, i32* @ptr

        adrp     x9, ptr
        add     x9, x9, #:lo12:ptr
        ldr     x10, [x9]
        //  %r145 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r144

        mov     x9, #8
        mul     x10, x10, x9
        adrp     x9, tape
        add     x9, x9, #:lo12:tape
        add     x9, x9, x10
        //  %r146 = load i32, i32* %r145

        ldr     x10, [x9]
        //  %r147 = sub i32 %r146, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  store i32 %r147, i32* %r143

        str     x9, [x8]
        //  br label %bb_if_5_40_end


        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b     bb_if_5_40_end
        //bb_if_5_40_false:

bb_if_5_40_false:

        //  %r302 = phi i32 [ %r268, %bb_if_5_36_end ]

        //  %r303 = phi i32 [ %r269, %bb_if_5_36_end ]

        //  %r304 = phi i32 [ %r270, %bb_if_5_36_end ]

        //  br label %bb_if_5_40_end


        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        b     bb_if_5_40_end
        //bb_if_5_40_end:

bb_if_5_40_end:

        //  %r217 = phi i32 [ %r284, %bb_if_5_40_true ], [ %r302, %bb_if_5_40_false ]

        //  %r218 = phi i32 [ %r285, %bb_if_5_40_true ], [ %r303, %bb_if_5_40_false ]

        //  %r219 = phi i32 [ %r286, %bb_if_5_40_true ], [ %r304, %bb_if_5_40_false ]

        //  %r149 = icmp eq i32 %r218, 46

        mov     x8, #46
        cmp     x12, x8
        //  br i1 %r149, label %bb_if_5_44_true, label %bb_if_5_44_false


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.eq     bb_if_5_44_true
        b     bb_if_5_44_false
        //bb_if_5_44_true:

bb_if_5_44_true:

        //  %r305 = phi i32 [ %r217, %bb_if_5_40_end ]

        //  %r306 = phi i32 [ %r218, %bb_if_5_40_end ]

        //  %r307 = phi i32 [ %r219, %bb_if_5_40_end ]

        //  %r150 = load i32, i32* @ptr

        adrp     x11, ptr
        add     x11, x11, #:lo12:ptr
        ldr     x12, [x11]
        //  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150

        mov     x11, #8
        mul     x12, x12, x11
        adrp     x11, tape
        add     x11, x11, #:lo12:tape
        add     x11, x11, x12
        //  %r152 = load i32, i32* %r151

        ldr     x11, [x11]
        //  call void @putch(i32 %r152)

        mov     x0, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_if_5_44_end


        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        b     bb_if_5_44_end
        //bb_if_5_44_false:

bb_if_5_44_false:

        //  %r241 = phi i32 [ %r217, %bb_if_5_40_end ]

        //  %r242 = phi i32 [ %r218, %bb_if_5_40_end ]

        //  %r243 = phi i32 [ %r219, %bb_if_5_40_end ]

        //  br label %bb_if_5_44_end


        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b     bb_if_5_44_end
        //bb_if_5_44_end:

bb_if_5_44_end:

        //  %r211 = phi i32 [ %r305, %bb_if_5_44_true ], [ %r241, %bb_if_5_44_false ]

        //  %r212 = phi i32 [ %r306, %bb_if_5_44_true ], [ %r242, %bb_if_5_44_false ]

        //  %r213 = phi i32 [ %r307, %bb_if_5_44_true ], [ %r243, %bb_if_5_44_false ]

        //  %r154 = icmp eq i32 %r212, 44

        mov     x8, #44
        cmp     x12, x8
        //  br i1 %r154, label %bb_if_5_48_true, label %bb_if_5_48_false


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.eq     bb_if_5_48_true
        b     bb_if_5_48_false
        //bb_if_5_48_true:

bb_if_5_48_true:

        //  %r208 = phi i32 [ %r211, %bb_if_5_44_end ]

        //  %r209 = phi i32 [ %r212, %bb_if_5_44_end ]

        //  %r210 = phi i32 [ %r213, %bb_if_5_44_end ]

        //  %r155 = load i32, i32* @ptr

        adrp     x11, ptr
        add     x11, x11, #:lo12:ptr
        ldr     x12, [x11]
        //  %r156 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r155

        mov     x11, #8
        mul     x12, x12, x11
        adrp     x11, tape
        add     x11, x11, #:lo12:tape
        add     x12, x11, x12
        //  %r157 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x11, x0
        //  store i32 %r157, i32* %r156

        str     x11, [x12]
        //  br label %bb_if_5_48_end


        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_if_5_48_end
        //bb_if_5_48_false:

bb_if_5_48_false:

        //  %r202 = phi i32 [ %r211, %bb_if_5_44_end ]

        //  %r203 = phi i32 [ %r212, %bb_if_5_44_end ]

        //  %r204 = phi i32 [ %r213, %bb_if_5_44_end ]

        //  br label %bb_if_5_48_end


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        b     bb_if_5_48_end
        //bb_if_5_48_end:

bb_if_5_48_end:

        //  %r255 = phi i32 [ %r208, %bb_if_5_48_true ], [ %r202, %bb_if_5_48_false ]

        //  %r256 = phi i32 [ %r209, %bb_if_5_48_true ], [ %r203, %bb_if_5_48_false ]

        //  %r257 = phi i32 [ %r210, %bb_if_5_48_true ], [ %r204, %bb_if_5_48_false ]

        //  %r159 = icmp eq i32 %r256, 93

        mov     x11, #93
        cmp     x9, x11
        //  br i1 %r159, label %bb27_52_next, label %bb_if_5_52_false


        mov     x15, x10
        mov     x14, x9
        mov     x13, x8
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b.eq     bb27_52_next
        b     bb_if_5_52_false
        //bb27_52_next:

bb27_52_next:

        //  %r199 = phi i32 [ %r255, %bb_if_5_48_end ]

        //  %r200 = phi i32 [ %r256, %bb_if_5_48_end ]

        //  %r201 = phi i32 [ %r257, %bb_if_5_48_end ]

        //  %r160 = load i32, i32* @ptr

        adrp     x8, ptr
        add     x8, x8, #:lo12:ptr
        ldr     x9, [x8]
        //  %r161 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r160

        mov     x8, #8
        mul     x9, x9, x8
        adrp     x8, tape
        add     x8, x8, #:lo12:tape
        add     x8, x8, x9
        //  %r162 = load i32, i32* %r161

        ldr     x9, [x8]
        //  %r163 = icmp ne i32 %r162, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r163, label %bb_if_5_52_true, label %bb_if_5_52_false


        mov     x12, x15
        mov     x11, x14
        mov     x10, x15
        mov     x9, x14
        mov     x8, x13
        b.ne     bb_if_5_52_true
        b     bb_if_5_52_false
        //bb_if_5_52_true:

bb_if_5_52_true:

        //  %r261 = phi i32 [ %r199, %bb27_52_next ]

        //  %r262 = phi i32 [ %r200, %bb27_52_next ]

        //  %r263 = phi i32 [ %r201, %bb27_52_next ]

        //  %r264 = add i32 1, 0

        mov     x8, #1
        mov     x8, x8
        //  br label %bb_while_7_55_cond


        mov     x12, x12
        mov     x10, x11
        mov     x9, x8
        b     bb_while_7_55_cond
        //bb_while_7_55_cond:

bb_while_7_55_cond:

        //  %r238 = phi i32 [ %r261, %bb_if_5_52_true ], [ %r299, %bb_if_9_62_end ]

        //  %r239 = phi i32 [ %r262, %bb_if_5_52_true ], [ %r300, %bb_if_9_62_end ]

        //  %r240 = phi i32 [ %r264, %bb_if_5_52_true ], [ %r301, %bb_if_9_62_end ]

        //  %r165 = icmp sgt i32 %r240, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r165, label %bb_while_7_55_whilestms, label %bb_while_7_55_bre


        mov     x11, x12
        mov     x8, x9
        mov     x12, x12
        mov     x10, x10
        mov     x9, x9
        b.gt     bb_while_7_55_whilestms
        b     bb_while_7_55_bre
        //bb_while_7_55_whilestms:

bb_while_7_55_whilestms:

        //  %r223 = phi i32 [ %r238, %bb_while_7_55_cond ]

        //  %r224 = phi i32 [ %r239, %bb_while_7_55_cond ]

        //  %r225 = phi i32 [ %r240, %bb_while_7_55_cond ]

        //  %r167 = sub i32 %r223, 1

        mov     x9, #1
        sub     x9, x11, x9
        //  %r226 = add i32 %r167, 0

        mov     x10, x9
        //  %r169 = getelementptr i32, i32* %r113, i32 %r226

        mov     x9, #8
        mul     x9, x10, x9
        ldr     x16, [sp]
        add     x9, x16, x9
        //  %r170 = load i32, i32* %r169

        ldr     x9, [x9]
        //  %r227 = add i32 %r170, 0

        mov     x9, x9
        //  %r172 = icmp eq i32 %r227, 91

        mov     x11, #91
        cmp     x9, x11
        //  br i1 %r172, label %bb_if_9_58_true, label %bb_if_9_58_false


        mov     x14, x10
        mov     x13, x9
        mov     x12, x8
        mov     x11, x10
        mov     x10, x9
        mov     x9, x8
        b.eq     bb_if_9_58_true
        b     bb_if_9_58_false
        //bb_if_9_58_true:

bb_if_9_58_true:

        //  %r247 = phi i32 [ %r226, %bb_while_7_55_whilestms ]

        //  %r248 = phi i32 [ %r227, %bb_while_7_55_whilestms ]

        //  %r249 = phi i32 [ %r225, %bb_while_7_55_whilestms ]

        //  %r174 = sub i32 %r249, 1

        mov     x8, #1
        sub     x8, x12, x8
        //  %r250 = add i32 %r174, 0

        mov     x9, x8
        //  br label %bb_if_9_58_end


        mov     x8, x14
        mov     x10, x13
        mov     x9, x9
        b     bb_if_9_58_end
        //bb_if_9_58_false:

bb_if_9_58_false:

        //  %r265 = phi i32 [ %r226, %bb_while_7_55_whilestms ]

        //  %r266 = phi i32 [ %r227, %bb_while_7_55_whilestms ]

        //  %r267 = phi i32 [ %r225, %bb_while_7_55_whilestms ]

        //  br label %bb_if_9_58_end


        mov     x8, x11
        mov     x10, x10
        mov     x9, x9
        b     bb_if_9_58_end
        //bb_if_9_58_end:

bb_if_9_58_end:

        //  %r244 = phi i32 [ %r247, %bb_if_9_58_true ], [ %r265, %bb_if_9_58_false ]

        //  %r245 = phi i32 [ %r248, %bb_if_9_58_true ], [ %r266, %bb_if_9_58_false ]

        //  %r246 = phi i32 [ %r250, %bb_if_9_58_true ], [ %r267, %bb_if_9_58_false ]

        //  %r176 = icmp eq i32 %r245, 93

        mov     x11, #93
        cmp     x10, x11
        //  br i1 %r176, label %bb_if_9_62_true, label %bb_if_9_62_false


        mov     x13, x8
        mov     x12, x10
        mov     x11, x9
        mov     x8, x8
        mov     x10, x10
        mov     x9, x9
        b.eq     bb_if_9_62_true
        b     bb_if_9_62_false
        //bb_if_9_62_true:

bb_if_9_62_true:

        //  %r228 = phi i32 [ %r244, %bb_if_9_58_end ]

        //  %r229 = phi i32 [ %r245, %bb_if_9_58_end ]

        //  %r230 = phi i32 [ %r246, %bb_if_9_58_end ]

        //  %r178 = add i32 %r230, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r231 = add i32 %r178, 0

        mov     x8, x8
        //  br label %bb_if_9_62_end


        mov     x11, x13
        mov     x10, x12
        mov     x8, x8
        b     bb_if_9_62_end
        //bb_if_9_62_false:

bb_if_9_62_false:

        //  %r271 = phi i32 [ %r244, %bb_if_9_58_end ]

        //  %r272 = phi i32 [ %r245, %bb_if_9_58_end ]

        //  %r273 = phi i32 [ %r246, %bb_if_9_58_end ]

        //  br label %bb_if_9_62_end


        mov     x11, x8
        mov     x10, x10
        mov     x8, x9
        b     bb_if_9_62_end
        //bb_if_9_62_end:

bb_if_9_62_end:

        //  %r299 = phi i32 [ %r228, %bb_if_9_62_true ], [ %r271, %bb_if_9_62_false ]

        //  %r300 = phi i32 [ %r229, %bb_if_9_62_true ], [ %r272, %bb_if_9_62_false ]

        //  %r301 = phi i32 [ %r231, %bb_if_9_62_true ], [ %r273, %bb_if_9_62_false ]

        //  br label %bb_while_7_55_cond


        mov     x12, x11
        mov     x10, x10
        mov     x9, x8
        b     bb_while_7_55_cond
        //bb_while_7_55_bre:

bb_while_7_55_bre:

        //  %r274 = phi i32 [ %r238, %bb_while_7_55_cond ]

        //  %r275 = phi i32 [ %r239, %bb_while_7_55_cond ]

        //  %r276 = phi i32 [ %r240, %bb_while_7_55_cond ]

        //  br label %bb_if_5_52_end


        mov     x11, x12
        mov     x10, x10
        mov     x9, x9
        b     bb_if_5_52_end
        //bb_if_5_52_false:

bb_if_5_52_false:

        //  %r293 = phi i32 [ %r255, %bb_if_5_48_end ], [ %r199, %bb27_52_next ]

        //  %r294 = phi i32 [ %r256, %bb_if_5_48_end ], [ %r200, %bb27_52_next ]

        //  %r295 = phi i32 [ %r257, %bb_if_5_48_end ], [ %r201, %bb27_52_next ]

        //  br label %bb_if_5_52_end


        mov     x11, x10
        mov     x10, x9
        mov     x9, x8
        b     bb_if_5_52_end
        //bb_if_5_52_end:

bb_if_5_52_end:

        //  %r277 = phi i32 [ %r274, %bb_while_7_55_bre ], [ %r293, %bb_if_5_52_false ]

        //  %r278 = phi i32 [ %r275, %bb_while_7_55_bre ], [ %r294, %bb_if_5_52_false ]

        //  %r279 = phi i32 [ %r276, %bb_while_7_55_bre ], [ %r295, %bb_if_5_52_false ]

        //  %r180 = add i32 %r277, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r280 = add i32 %r180, 0

        mov     x8, x8
        //  br label %bb_while_3_26_cond


        mov     x12, x8
        mov     x11, x10
        mov     x10, x9
        b     bb_while_3_26_cond
        //bb_while_3_26_bre:

bb_while_3_26_bre:

        //  %r287 = phi i32 [ %r281, %bb_while_3_26_cond ]

        //  %r288 = phi i32 [ %r282, %bb_while_3_26_cond ]

        //  %r289 = phi i32 [ %r283, %bb_while_3_26_cond ]

        //  ret void

        mov     sp, x29
        ret
main:

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 76)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #76
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_starttime
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @read_program()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     read_program
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r181 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        adrp     x8, program
        add     x8, x8, #:lo12:program
        add     x8, x8, x9
        //  call void @interpret(i32* %r181)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     interpret
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @putch(i32 10)

        mov     x8, #10
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @_sysy_stoptime(i32 80)

        mov     x8, #80
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     _sysy_stoptime
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
