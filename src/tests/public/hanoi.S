.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global move
.global hanoi
.global main
move:

        //bb1:

bb1:

        //  %r139 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        mov     x8, #0
        //  %r140 = add i32 %r100, 0

        mov     x10, x10
        //  %r141 = add i32 0, 0

        mov     x8, #0
        //  %r142 = add i32 %r102, 0

        mov     x9, x9
        //  call void @putint(i32 %r140)

        mov     x0, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @putch(i32 32)

        mov     x8, #32
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
        //  call void @putint(i32 %r142)

        mov     x0, x9
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     putint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @putch(i32 44)

        mov     x8, #44
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
        //  call void @putch(i32 32)

        mov     x8, #32
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
        //  ret void

        mov     sp, x29
        ret
hanoi:

        //bb2:

bb2:

        //  %r147 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x12, x2
        mov     x11, x3
        mov     x8, #0
        //  %r148 = add i32 %r106, 0

        mov     x9, x9
        //  %r149 = add i32 0, 0

        mov     x8, #0
        //  %r150 = add i32 %r108, 0

        mov     x8, x10
        //  %r151 = add i32 0, 0

        mov     x10, #0
        //  %r152 = add i32 %r110, 0

        mov     x12, x12
        //  %r153 = add i32 0, 0

        mov     x10, #0
        //  %r154 = add i32 %r112, 0

        mov     x11, x11
        //  %r115 = icmp eq i32 %r148, 1

        mov     x10, #1
        cmp     x9, x10
        //  br i1 %r115, label %bb_if_5_8_true, label %bb_if_5_8_false


        b.eq     bb_if_5_8_true
        b     bb_if_5_8_false
        //bb_if_5_8_true:

bb_if_5_8_true:

        //  call void @move(i32 %r150, i32 %r154)

        mov     x0, x8
        mov     x1, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     move
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_if_5_8_end


        b     bb_if_5_8_end
        //bb_if_5_8_false:

bb_if_5_8_false:

        //  %r119 = sub i32 %r148, 1

        mov     x10, #1
        sub     x10, x9, x10
        //  call void @hanoi(i32 %r119, i32 %r150, i32 %r154, i32 %r152)

        mov     x0, x10
        mov     x1, x8
        mov     x2, x11
        mov     x3, x12
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     hanoi
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @move(i32 %r150, i32 %r154)

        mov     x0, x8
        mov     x1, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     move
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r126 = sub i32 %r148, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  call void @hanoi(i32 %r126, i32 %r152, i32 %r150, i32 %r154)

        mov     x0, x9
        mov     x1, x12
        mov     x2, x8
        mov     x3, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     hanoi
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_if_5_8_end


        b     bb_if_5_8_end
        //bb_if_5_8_end:

bb_if_5_8_end:

        //  ret void

        mov     sp, x29
        ret
main:

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 21)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #21
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
        //  %r156 = add i32 0, 0

        mov     x8, #0
        //  %r131 = call i32 @getint()

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
        //  %r157 = add i32 %r131, 0

        mov     x8, x8
        //  br label %bb_while_5_23_cond


        mov     x10, x8
        b     bb_while_5_23_cond
        //bb_while_5_23_cond:

bb_while_5_23_cond:

        //  %r159 = phi i32 [ %r157, %bb3 ], [ %r161, %bb_while_5_23_whilestms ]

        //  %r133 = icmp sgt i32 %r159, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r133, label %bb_while_5_23_whilestms, label %bb_while_5_23_bre


        mov     x9, x10
        b.gt     bb_while_5_23_whilestms
        b     bb_while_5_23_bre
        //bb_while_5_23_whilestms:

bb_while_5_23_whilestms:

        //  %r160 = phi i32 [ %r159, %bb_while_5_23_cond ]

        //  %r134 = call i32 @getint()

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
        //  call void @hanoi(i32 %r134, i32 1, i32 2, i32 3)

        mov     x0, x8
        mov     x8, #1
        mov     x1, x8
        mov     x8, #2
        mov     x2, x8
        mov     x8, #3
        mov     x3, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     hanoi
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
        //  %r136 = sub i32 %r160, 1

        mov     x8, #1
        sub     x8, x9, x8
        //  %r161 = add i32 %r136, 0

        mov     x8, x8
        //  br label %bb_while_5_23_cond


        mov     x10, x8
        b     bb_while_5_23_cond
        //bb_while_5_23_bre:

bb_while_5_23_bre:

        //  %r158 = phi i32 [ %r159, %bb_while_5_23_cond ]

        //  call void @_sysy_stoptime(i32 28)

        mov     x8, #28
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
