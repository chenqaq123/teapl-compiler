.section .data
.global    TOKEN_NUM
.global    TOKEN_OTHER
.global    last_char
.global    num
.global    other
.global    cur_token
TOKEN_NUM:
        .quad   0
TOKEN_OTHER:
        .quad   1
last_char:
        .quad   32
num:
        .quad   0
other:
        .quad   0
cur_token:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global next_char
.global is_space
.global is_num
.global next_token
.global panic
.global get_op_prec
.global stack_push
.global stack_pop
.global stack_peek
.global stack_size
.global mod
.global eval_op
.global eval
.global main
next_char:

        //bb1:

bb1:

        //  %r100 = call i32 @getch()

        mov     x16, #0
        sub     sp, sp, x16
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
        //  store i32 %r100, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        str     x9, [x8]
        //  %r101 = load i32, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        ldr     x8, [x8]
        //  ret i32 %r101

        mov     x0, x8
        mov     sp, x29
        ret
is_space:

        //bb2:

bb2:

        //  %r316 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r317 = add i32 %r102, 0

        mov     x9, x9
        //  %r105 = icmp eq i32 %r317, 32

        mov     x8, #32
        cmp     x9, x8
        //  br i1 %r105, label %bb_if_5_16_true, label %bb20_16_next


        b.eq     bb_if_5_16_true
        b     bb20_16_next
        //bb20_16_next:

bb20_16_next:

        //  %r107 = icmp eq i32 %r317, 10

        mov     x8, #10
        cmp     x9, x8
        //  br i1 %r107, label %bb_if_5_16_true, label %bb_if_5_16_false


        b.eq     bb_if_5_16_true
        b     bb_if_5_16_false
        //bb_if_5_16_true:

bb_if_5_16_true:

        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_16_false:

bb_if_5_16_false:

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
is_num:

        //bb3:

bb3:

        //  %r319 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r320 = add i32 %r108, 0

        mov     x9, x9
        //  %r111 = icmp sge i32 %r320, 48

        mov     x8, #48
        cmp     x9, x8
        //  br i1 %r111, label %bb20_28_next, label %bb_if_5_28_false


        b.ge     bb20_28_next
        b     bb_if_5_28_false
        //bb20_28_next:

bb20_28_next:

        //  %r113 = icmp sle i32 %r320, 57

        mov     x8, #57
        cmp     x9, x8
        //  br i1 %r113, label %bb_if_5_28_true, label %bb_if_5_28_false


        b.le     bb_if_5_28_true
        b     bb_if_5_28_false
        //bb_if_5_28_true:

bb_if_5_28_true:

        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_28_false:

bb_if_5_28_false:

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
next_token:

        //bb4:

bb4:

        //  br label %bb_while_5_40_cond


        mov     x16, #0
        sub     sp, sp, x16
        b     bb_while_5_40_cond
        //bb_while_5_40_cond:

bb_while_5_40_cond:

        //  %r114 = load i32, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        ldr     x8, [x8]
        //  %r115 = call i32 @is_space(i32 %r114)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_space
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r116 = icmp ne i32 %r115, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r116, label %bb_while_5_40_whilestms, label %bb_while_5_40_bre


        b.ne     bb_while_5_40_whilestms
        b     bb_while_5_40_bre
        //bb_while_5_40_whilestms:

bb_while_5_40_whilestms:

        //  %r117 = call i32 @next_char()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_5_40_cond


        b     bb_while_5_40_cond
        //bb_while_5_40_bre:

bb_while_5_40_bre:

        //  %r118 = load i32, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        ldr     x8, [x8]
        //  %r119 = call i32 @is_num(i32 %r118)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_num
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r120 = icmp ne i32 %r119, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r120, label %bb_if_5_44_true, label %bb_if_5_44_false


        b.ne     bb_if_5_44_true
        b     bb_if_5_44_false
        //bb_if_5_44_true:

bb_if_5_44_true:

        //  %r121 = load i32, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        ldr     x9, [x8]
        //  %r122 = sub i32 %r121, 48

        mov     x8, #48
        sub     x9, x9, x8
        //  store i32 %r122, i32* @num

        adrp     x8, num
        add     x8, x8, #:lo12:num
        str     x9, [x8]
        //  br label %bb_while_9_47_cond


        b     bb_while_9_47_cond
        //bb_while_9_47_cond:

bb_while_9_47_cond:

        //  %r123 = call i32 @next_char()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r124 = call i32 @is_num(i32 %r123)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     is_num
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r125 = icmp ne i32 %r124, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r125, label %bb_while_9_47_whilestms, label %bb_while_9_47_bre


        b.ne     bb_while_9_47_whilestms
        b     bb_while_9_47_bre
        //bb_while_9_47_whilestms:

bb_while_9_47_whilestms:

        //  %r126 = load i32, i32* @num

        adrp     x8, num
        add     x8, x8, #:lo12:num
        ldr     x9, [x8]
        //  %r127 = mul i32 %r126, 10

        mov     x8, #10
        mul     x9, x9, x8
        //  %r128 = load i32, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        ldr     x8, [x8]
        //  %r129 = add i32 %r127, %r128

        add     x9, x9, x8
        //  %r130 = sub i32 %r129, 48

        mov     x8, #48
        sub     x9, x9, x8
        //  store i32 %r130, i32* @num

        adrp     x8, num
        add     x8, x8, #:lo12:num
        str     x9, [x8]
        //  br label %bb_while_9_47_cond


        b     bb_while_9_47_cond
        //bb_while_9_47_bre:

bb_while_9_47_bre:

        //  %r131 = load i32, i32* @TOKEN_NUM

        adrp     x8, TOKEN_NUM
        add     x8, x8, #:lo12:TOKEN_NUM
        ldr     x9, [x8]
        //  store i32 %r131, i32* @cur_token

        adrp     x8, cur_token
        add     x8, x8, #:lo12:cur_token
        str     x9, [x8]
        //  br label %bb_if_5_44_end


        b     bb_if_5_44_end
        //bb_if_5_44_false:

bb_if_5_44_false:

        //  %r132 = load i32, i32* @last_char

        adrp     x8, last_char
        add     x8, x8, #:lo12:last_char
        ldr     x9, [x8]
        //  store i32 %r132, i32* @other

        adrp     x8, other
        add     x8, x8, #:lo12:other
        str     x9, [x8]
        //  %r133 = call i32 @next_char()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_char
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r134 = load i32, i32* @TOKEN_OTHER

        adrp     x8, TOKEN_OTHER
        add     x8, x8, #:lo12:TOKEN_OTHER
        ldr     x9, [x8]
        //  store i32 %r134, i32* @cur_token

        adrp     x8, cur_token
        add     x8, x8, #:lo12:cur_token
        str     x9, [x8]
        //  br label %bb_if_5_44_end


        b     bb_if_5_44_end
        //bb_if_5_44_end:

bb_if_5_44_end:

        //  %r135 = load i32, i32* @cur_token

        adrp     x8, cur_token
        add     x8, x8, #:lo12:cur_token
        ldr     x8, [x8]
        //  ret i32 %r135

        mov     x0, x8
        mov     sp, x29
        ret
panic:

        //bb5:

bb5:

        //  call void @putch(i32 112)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #112
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
        //  call void @putch(i32 97)

        mov     x8, #97
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
        //  call void @putch(i32 110)

        mov     x8, #110
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
        //  call void @putch(i32 105)

        mov     x8, #105
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
        //  call void @putch(i32 99)

        mov     x8, #99
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
        //  call void @putch(i32 33)

        mov     x8, #33
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
        //  %r136 = sub i32 0, 1

        mov     x9, #0
        mov     x8, #1
        sub     x8, x9, x8
        //  ret i32 %r136

        mov     x0, x8
        mov     sp, x29
        ret
get_op_prec:

        //bb6:

bb6:

        //  %r322 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r323 = add i32 %r137, 0

        mov     x9, x9
        //  %r140 = icmp eq i32 %r323, 43

        mov     x8, #43
        cmp     x9, x8
        //  br i1 %r140, label %bb_if_5_77_true, label %bb21_77_next


        b.eq     bb_if_5_77_true
        b     bb21_77_next
        //bb21_77_next:

bb21_77_next:

        //  %r142 = icmp eq i32 %r323, 45

        mov     x8, #45
        cmp     x9, x8
        //  br i1 %r142, label %bb_if_5_77_true, label %bb_if_5_77_false


        b.eq     bb_if_5_77_true
        b     bb_if_5_77_false
        //bb_if_5_77_true:

bb_if_5_77_true:

        //  ret i32 10

        mov     x8, #10
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_77_false:

bb_if_5_77_false:

        //  br label %bb_if_5_77_end


        b     bb_if_5_77_end
        //bb_if_5_77_end:

bb_if_5_77_end:

        //  %r144 = icmp eq i32 %r323, 42

        mov     x8, #42
        cmp     x9, x8
        //  br i1 %r144, label %bb_if_5_80_true, label %bb21_80_next


        b.eq     bb_if_5_80_true
        b     bb21_80_next
        //bb21_80_next:

bb21_80_next:

        //  %r146 = icmp eq i32 %r323, 47

        mov     x8, #47
        cmp     x9, x8
        //  br i1 %r146, label %bb_if_5_80_true, label %bb33_80_next


        b.eq     bb_if_5_80_true
        b     bb33_80_next
        //bb33_80_next:

bb33_80_next:

        //  %r148 = icmp eq i32 %r323, 37

        mov     x8, #37
        cmp     x9, x8
        //  br i1 %r148, label %bb_if_5_80_true, label %bb_if_5_80_false


        b.eq     bb_if_5_80_true
        b     bb_if_5_80_false
        //bb_if_5_80_true:

bb_if_5_80_true:

        //  ret i32 20

        mov     x8, #20
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_80_false:

bb_if_5_80_false:

        //  br label %bb_if_5_80_end


        b     bb_if_5_80_end
        //bb_if_5_80_end:

bb_if_5_80_end:

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
stack_push:

        //bb7:

bb7:

        //  %r326 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        mov     x8, #0
        //  %r327 = add i32 %r150, 0

        mov     x8, x9
        //  %r152 = getelementptr i32, i32* %r149, i32 0

        mov     x11, #8
        mov     x9, #0
        mul     x9, x9, x11
        add     x9, x10, x9
        //  %r153 = getelementptr i32, i32* %r149, i32 0

        mov     x12, #8
        mov     x11, #0
        mul     x11, x11, x12
        add     x11, x10, x11
        //  %r154 = load i32, i32* %r153

        ldr     x12, [x11]
        //  %r155 = add i32 %r154, 1

        mov     x11, #1
        add     x11, x12, x11
        //  store i32 %r155, i32* %r152

        str     x11, [x9]
        //  %r328 = add i32 0, 0

        mov     x9, #0
        //  %r157 = getelementptr i32, i32* %r149, i32 0

        mov     x11, #8
        mov     x9, #0
        mul     x9, x9, x11
        add     x9, x10, x9
        //  %r158 = load i32, i32* %r157

        ldr     x9, [x9]
        //  %r329 = add i32 %r158, 0

        mov     x11, x9
        //  %r160 = getelementptr i32, i32* %r149, i32 %r329

        mov     x9, #8
        mul     x9, x11, x9
        add     x9, x10, x9
        //  store i32 %r327, i32* %r160

        str     x8, [x9]
        //  ret void

        mov     sp, x29
        ret
stack_pop:

        //bb8:

bb8:

        //  %r332 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x8, #0
        //  %r164 = getelementptr i32, i32* %r162, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r165 = load i32, i32* %r164

        ldr     x8, [x8]
        //  %r333 = add i32 %r165, 0

        mov     x9, x8
        //  %r334 = add i32 0, 0

        mov     x8, #0
        //  %r168 = getelementptr i32, i32* %r162, i32 %r333

        mov     x8, #8
        mul     x8, x9, x8
        add     x8, x10, x8
        //  %r169 = load i32, i32* %r168

        ldr     x8, [x8]
        //  %r335 = add i32 %r169, 0

        mov     x8, x8
        //  %r170 = getelementptr i32, i32* %r162, i32 0

        mov     x11, #8
        mov     x9, #0
        mul     x9, x9, x11
        add     x9, x10, x9
        //  %r171 = getelementptr i32, i32* %r162, i32 0

        mov     x12, #8
        mov     x11, #0
        mul     x11, x11, x12
        add     x10, x10, x11
        //  %r172 = load i32, i32* %r171

        ldr     x11, [x10]
        //  %r173 = sub i32 %r172, 1

        mov     x10, #1
        sub     x10, x11, x10
        //  store i32 %r173, i32* %r170

        str     x10, [x9]
        //  ret i32 %r335

        mov     x0, x8
        mov     sp, x29
        ret
stack_peek:

        //bb9:

bb9:

        //  %r337 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, x0
        mov     x9, #0
        //  %r177 = getelementptr i32, i32* %r175, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x9, x9, x10
        add     x9, x8, x9
        //  %r178 = load i32, i32* %r177

        ldr     x9, [x9]
        //  %r338 = add i32 %r178, 0

        mov     x10, x9
        //  %r180 = getelementptr i32, i32* %r175, i32 %r338

        mov     x9, #8
        mul     x9, x10, x9
        add     x8, x8, x9
        //  %r181 = load i32, i32* %r180

        ldr     x8, [x8]
        //  ret i32 %r181

        mov     x0, x8
        mov     sp, x29
        ret
stack_size:

        //bb10:

bb10:

        //  %r183 = getelementptr i32, i32* %r182, i32 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, #8
        mov     x8, #0
        mul     x8, x8, x9
        add     x8, x10, x8
        //  %r184 = load i32, i32* %r183

        ldr     x8, [x8]
        //  ret i32 %r184

        mov     x0, x8
        mov     sp, x29
        ret
mod:

        //bb11:

bb11:

        //  %r341 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r342 = add i32 %r185, 0

        mov     x9, x9
        //  %r343 = add i32 0, 0

        mov     x8, #0
        //  %r344 = add i32 %r187, 0

        mov     x8, x10
        //  %r192 = sdiv i32 %r342, %r344

        sdiv     x10, x9, x8
        //  %r194 = mul i32 %r192, %r344

        mul     x8, x10, x8
        //  %r195 = sub i32 %r342, %r194

        sub     x8, x9, x8
        //  ret i32 %r195

        mov     x0, x8
        mov     sp, x29
        ret
eval_op:

        //bb12:

bb12:

        //  %r348 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x11, x2
        mov     x8, #0
        //  %r349 = add i32 %r196, 0

        mov     x9, x9
        //  %r350 = add i32 0, 0

        mov     x8, #0
        //  %r351 = add i32 %r198, 0

        mov     x8, x10
        //  %r352 = add i32 0, 0

        mov     x10, #0
        //  %r353 = add i32 %r200, 0

        mov     x11, x11
        //  %r203 = icmp eq i32 %r349, 43

        mov     x10, #43
        cmp     x9, x10
        //  br i1 %r203, label %bb_if_5_120_true, label %bb_if_5_120_false


        b.eq     bb_if_5_120_true
        b     bb_if_5_120_false
        //bb_if_5_120_true:

bb_if_5_120_true:

        //  %r206 = add i32 %r351, %r353

        add     x8, x8, x11
        //  ret i32 %r206

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_120_false:

bb_if_5_120_false:

        //  br label %bb_if_5_120_end


        b     bb_if_5_120_end
        //bb_if_5_120_end:

bb_if_5_120_end:

        //  %r208 = icmp eq i32 %r349, 45

        mov     x10, #45
        cmp     x9, x10
        //  br i1 %r208, label %bb_if_5_125_true, label %bb_if_5_125_false


        b.eq     bb_if_5_125_true
        b     bb_if_5_125_false
        //bb_if_5_125_true:

bb_if_5_125_true:

        //  %r211 = sub i32 %r351, %r353

        sub     x8, x8, x11
        //  ret i32 %r211

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_125_false:

bb_if_5_125_false:

        //  br label %bb_if_5_125_end


        b     bb_if_5_125_end
        //bb_if_5_125_end:

bb_if_5_125_end:

        //  %r213 = icmp eq i32 %r349, 42

        mov     x10, #42
        cmp     x9, x10
        //  br i1 %r213, label %bb_if_5_130_true, label %bb_if_5_130_false


        b.eq     bb_if_5_130_true
        b     bb_if_5_130_false
        //bb_if_5_130_true:

bb_if_5_130_true:

        //  %r216 = mul i32 %r351, %r353

        mul     x8, x8, x11
        //  ret i32 %r216

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_130_false:

bb_if_5_130_false:

        //  br label %bb_if_5_130_end


        b     bb_if_5_130_end
        //bb_if_5_130_end:

bb_if_5_130_end:

        //  %r218 = icmp eq i32 %r349, 47

        mov     x10, #47
        cmp     x9, x10
        //  br i1 %r218, label %bb_if_5_135_true, label %bb_if_5_135_false


        b.eq     bb_if_5_135_true
        b     bb_if_5_135_false
        //bb_if_5_135_true:

bb_if_5_135_true:

        //  %r221 = sdiv i32 %r351, %r353

        sdiv     x8, x8, x11
        //  ret i32 %r221

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_135_false:

bb_if_5_135_false:

        //  br label %bb_if_5_135_end


        b     bb_if_5_135_end
        //bb_if_5_135_end:

bb_if_5_135_end:

        //  %r223 = icmp eq i32 %r349, 37

        mov     x10, #37
        cmp     x9, x10
        //  br i1 %r223, label %bb_if_5_140_true, label %bb_if_5_140_false


        b.eq     bb_if_5_140_true
        b     bb_if_5_140_false
        //bb_if_5_140_true:

bb_if_5_140_true:

        //  %r226 = call i32 @mod(i32 %r351, i32 %r353)

        mov     x0, x8
        mov     x1, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     mod
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  ret i32 %r226

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_140_false:

bb_if_5_140_false:

        //  br label %bb_if_5_140_end


        b     bb_if_5_140_end
        //bb_if_5_140_end:

bb_if_5_140_end:

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
eval:

        //228:x29,#-4096

        //227:x29,#-2048

        //bb13:

bb13:

        //  %r362 = add i32 0, 0

        sub     sp, sp, #232
        mov     x16, #4096
        sub     sp, sp, x16
        mov     x8, #0
        mov     x16, x8
        str     x16, [sp,#224]
        //  %r363 = add i32 0, 0

        mov     x8, #0
        mov     x16, x8
        str     x16, [sp,#216]
        //  %r364 = add i32 0, 0

        mov     x8, #0
        mov     x16, x8
        str     x16, [sp,#208]
        //  %r365 = add i32 0, 0

        mov     x8, #0
        mov     x15, x8
        //  %r366 = add i32 0, 0

        mov     x8, #0
        mov     x14, x8
        //  %r367 = add i32 0, 0

        mov     x8, #0
        mov     x13, x8
        //  %r368 = add i32 0, 0

        mov     x8, #0
        mov     x12, x8
        //  %r227 = alloca [ 256 x i32 ]

        //  %r228 = alloca [ 256 x i32 ]

        //  %r369 = add i32 0, 0

        mov     x8, #0
        //  %r370 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_153_cond


        mov     x9, x8
        b     bb_while_5_153_cond
        //bb_while_5_153_cond:

bb_while_5_153_cond:

        //  %r446 = phi i32 [ %r370, %bb13 ], [ %r434, %bb_while_5_153_whilestms ]

        //  %r231 = icmp slt i32 %r446, 256

        mov     x8, #256
        cmp     x9, x8
        //  br i1 %r231, label %bb_while_5_153_whilestms, label %bb_while_5_153_bre


        mov     x10, x9
        mov     x9, x9
        b.lt     bb_while_5_153_whilestms
        b     bb_while_5_153_bre
        //bb_while_5_153_whilestms:

bb_while_5_153_whilestms:

        //  %r433 = phi i32 [ %r446, %bb_while_5_153_cond ]

        //  %r233 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 %r433

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-2048
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 0, i32* %r233

        mov     x8, #0
        str     x8, [x9]
        //  %r235 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 %r433

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-4096
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 0, i32* %r235

        mov     x8, #0
        str     x8, [x9]
        //  %r237 = add i32 %r433, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r434 = add i32 %r237, 0

        mov     x8, x8
        //  br label %bb_while_5_153_cond


        mov     x9, x8
        b     bb_while_5_153_cond
        //bb_while_5_153_bre:

bb_while_5_153_bre:

        //  %r459 = phi i32 [ %r446, %bb_while_5_153_cond ]

        //  %r238 = load i32, i32* @cur_token

        adrp     x8, cur_token
        add     x8, x8, #:lo12:cur_token
        ldr     x10, [x8]
        //  %r239 = load i32, i32* @TOKEN_NUM

        adrp     x8, TOKEN_NUM
        add     x8, x8, #:lo12:TOKEN_NUM
        ldr     x8, [x8]
        //  %r240 = icmp ne i32 %r238, %r239

        cmp     x10, x8
        //  br i1 %r240, label %bb_if_5_160_true, label %bb_if_5_160_false


        mov     x8, x9
        b.ne     bb_if_5_160_true
        b     bb_if_5_160_false
        //bb_if_5_160_true:

bb_if_5_160_true:

        //  %r468 = phi i32 [ %r459, %bb_while_5_153_bre ]

        //  %r241 = call i32 @panic()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     panic
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  ret i32 %r241

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_160_false:

bb_if_5_160_false:

        //  %r445 = phi i32 [ %r459, %bb_while_5_153_bre ]

        //  br label %bb_if_5_160_end


        mov     x11, x8
        b     bb_if_5_160_end
        //bb_if_5_160_end:

bb_if_5_160_end:

        //  %r447 = phi i32 [ %r445, %bb_if_5_160_false ]

        //  %r242 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r243 = load i32, i32* @num

        adrp     x8, num
        add     x8, x8, #:lo12:num
        ldr     x8, [x8]
        //  call void @stack_push(i32* %r242, i32 %r243)

        mov     x0, x9
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r244 = call i32 @next_token()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_5_167_cond


        mov     x16, x12
        str     x16, [sp,#8]
        mov     x16, x15
        str     x16, [sp]
        mov     x12, x14
        mov     x10, x13
        mov     x9, x11
        b     bb_while_5_167_cond
        //bb_while_5_167_cond:

bb_while_5_167_cond:

        //  %r448 = phi i32 [ %r368, %bb_if_5_160_end ], [ %r376, %bb_if_9_185_end ]

        //  %r449 = phi i32 [ %r365, %bb_if_5_160_end ], [ %r377, %bb_if_9_185_end ]

        //  %r450 = phi i32 [ %r366, %bb_if_5_160_end ], [ %r378, %bb_if_9_185_end ]

        //  %r451 = phi i32 [ %r367, %bb_if_5_160_end ], [ %r379, %bb_if_9_185_end ]

        //  %r452 = phi i32 [ %r447, %bb_if_5_160_end ], [ %r380, %bb_if_9_185_end ]

        //  %r245 = load i32, i32* @cur_token

        adrp     x8, cur_token
        add     x8, x8, #:lo12:cur_token
        ldr     x11, [x8]
        //  %r246 = load i32, i32* @TOKEN_OTHER

        adrp     x8, TOKEN_OTHER
        add     x8, x8, #:lo12:TOKEN_OTHER
        ldr     x8, [x8]
        //  %r247 = icmp eq i32 %r245, %r246

        cmp     x11, x8
        //  br i1 %r247, label %bb_while_5_167_whilestms, label %bb_while_5_167_bre


        ldr     x16, [sp]
        mov     x11, x16
        mov     x15, x12
        mov     x14, x10
        mov     x13, x9
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#200]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#192]
        mov     x12, x12
        mov     x10, x10
        mov     x8, x9
        b.eq     bb_while_5_167_whilestms
        b     bb_while_5_167_bre
        //bb_while_5_167_whilestms:

bb_while_5_167_whilestms:

        //  %r453 = phi i32 [ %r448, %bb_while_5_167_cond ]

        //  %r454 = phi i32 [ %r449, %bb_while_5_167_cond ]

        //  %r455 = phi i32 [ %r450, %bb_while_5_167_cond ]

        //  %r456 = phi i32 [ %r451, %bb_while_5_167_cond ]

        //  %r457 = phi i32 [ %r452, %bb_while_5_167_cond ]

        //  %r249 = load i32, i32* @other

        adrp     x8, other
        add     x8, x8, #:lo12:other
        ldr     x8, [x8]
        //  %r458 = add i32 %r249, 0

        mov     x9, x8
        //  %r251 = call i32 @get_op_prec(i32 %r458)

        mov     x0, x9
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x10, x0
        //  %r252 = icmp eq i32 %r251, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r252, label %bb_if_9_171_true, label %bb_if_9_171_false


        mov     x16, x9
        str     x16, [sp,#80]
        mov     x16, x11
        str     x16, [sp,#72]
        mov     x16, x15
        str     x16, [sp,#64]
        mov     x16, x14
        str     x16, [sp,#56]
        mov     x16, x13
        str     x16, [sp,#48]
        mov     x12, x9
        mov     x11, x11
        mov     x10, x15
        mov     x9, x14
        mov     x8, x13
        b.eq     bb_if_9_171_true
        b     bb_if_9_171_false
        //bb_if_9_171_true:

bb_if_9_171_true:

        //  %r428 = phi i32 [ %r458, %bb_while_5_167_whilestms ]

        //  %r429 = phi i32 [ %r454, %bb_while_5_167_whilestms ]

        //  %r430 = phi i32 [ %r455, %bb_while_5_167_whilestms ]

        //  %r431 = phi i32 [ %r456, %bb_while_5_167_whilestms ]

        //  %r432 = phi i32 [ %r457, %bb_while_5_167_whilestms ]

        //  br label %bb_while_5_167_bre


        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#200]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#192]
        ldr     x16, [sp,#64]
        mov     x12, x16
        ldr     x16, [sp,#56]
        mov     x10, x16
        ldr     x16, [sp,#48]
        mov     x8, x16
        b     bb_while_5_167_bre
        //bb_if_9_171_false:

bb_if_9_171_false:

        //  %r469 = phi i32 [ %r458, %bb_while_5_167_whilestms ]

        //  %r470 = phi i32 [ %r454, %bb_while_5_167_whilestms ]

        //  %r471 = phi i32 [ %r455, %bb_while_5_167_whilestms ]

        //  %r472 = phi i32 [ %r456, %bb_while_5_167_whilestms ]

        //  %r473 = phi i32 [ %r457, %bb_while_5_167_whilestms ]

        //  br label %bb_if_9_171_end


        mov     x12, x12
        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_if_9_171_end
        //bb_if_9_171_end:

bb_if_9_171_end:

        //  %r423 = phi i32 [ %r469, %bb_if_9_171_false ]

        //  %r424 = phi i32 [ %r470, %bb_if_9_171_false ]

        //  %r425 = phi i32 [ %r471, %bb_if_9_171_false ]

        //  %r426 = phi i32 [ %r472, %bb_if_9_171_false ]

        //  %r427 = phi i32 [ %r473, %bb_if_9_171_false ]

        //  %r253 = call i32 @next_token()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_9_175_cond


        mov     x16, x12
        str     x16, [sp,#40]
        mov     x16, x11
        str     x16, [sp,#32]
        mov     x16, x10
        str     x16, [sp,#24]
        mov     x16, x9
        str     x16, [sp,#16]
        mov     x15, x8
        b     bb_while_9_175_cond
        //bb_while_9_175_cond:

bb_while_9_175_cond:

        //  %r435 = phi i32 [ %r423, %bb_if_9_171_end ], [ %r415, %bb_while_9_175_whilestms ]

        //  %r436 = phi i32 [ %r424, %bb_if_9_171_end ], [ %r422, %bb_while_9_175_whilestms ]

        //  %r437 = phi i32 [ %r425, %bb_if_9_171_end ], [ %r421, %bb_while_9_175_whilestms ]

        //  %r438 = phi i32 [ %r426, %bb_if_9_171_end ], [ %r420, %bb_while_9_175_whilestms ]

        //  %r439 = phi i32 [ %r427, %bb_if_9_171_end ], [ %r419, %bb_while_9_175_whilestms ]

        //  %r254 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-4096
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r255 = call i32 @stack_size(i32* %r254)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_size
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r256 = icmp ne i32 %r255, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r256, label %bb38_175_next, label %bb_while_9_175_bre


        ldr     x16, [sp,#40]
        mov     x14, x16
        ldr     x16, [sp,#32]
        mov     x13, x16
        ldr     x16, [sp,#24]
        mov     x12, x16
        ldr     x16, [sp,#16]
        mov     x11, x16
        mov     x10, x15
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#128]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#120]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#112]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#104]
        mov     x16, x15
        str     x16, [sp,#96]
        b.ne     bb38_175_next
        b     bb_while_9_175_bre
        //bb38_175_next:

bb38_175_next:

        //  %r440 = phi i32 [ %r435, %bb_while_9_175_cond ]

        //  %r441 = phi i32 [ %r436, %bb_while_9_175_cond ]

        //  %r442 = phi i32 [ %r437, %bb_while_9_175_cond ]

        //  %r443 = phi i32 [ %r438, %bb_while_9_175_cond ]

        //  %r444 = phi i32 [ %r439, %bb_while_9_175_cond ]

        //  %r257 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-4096
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r258 = call i32 @stack_peek(i32* %r257)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_peek
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r259 = call i32 @get_op_prec(i32 %r258)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r261 = call i32 @get_op_prec(i32 %r440)

        mov     x0, x14
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     get_op_prec
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r262 = icmp sge i32 %r259, %r261

        cmp     x9, x8
        //  br i1 %r262, label %bb_while_9_175_whilestms, label %bb_while_9_175_bre


        mov     x16, x14
        str     x16, [sp,#88]
        mov     x15, x10
        mov     x16, x14
        str     x16, [sp,#128]
        mov     x16, x13
        str     x16, [sp,#120]
        mov     x16, x12
        str     x16, [sp,#112]
        mov     x16, x11
        str     x16, [sp,#104]
        mov     x16, x10
        str     x16, [sp,#96]
        b.ge     bb_while_9_175_whilestms
        b     bb_while_9_175_bre
        //bb_while_9_175_whilestms:

bb_while_9_175_whilestms:

        //  %r415 = phi i32 [ %r440, %bb38_175_next ]

        //  %r416 = phi i32 [ %r441, %bb38_175_next ]

        //  %r417 = phi i32 [ %r442, %bb38_175_next ]

        //  %r418 = phi i32 [ %r443, %bb38_175_next ]

        //  %r419 = phi i32 [ %r444, %bb38_175_next ]

        //  %r264 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-4096
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r265 = call i32 @stack_pop(i32* %r264)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r420 = add i32 %r265, 0

        mov     x12, x8
        //  %r267 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r268 = call i32 @stack_pop(i32* %r267)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r421 = add i32 %r268, 0

        mov     x11, x8
        //  %r270 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r271 = call i32 @stack_pop(i32* %r270)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r422 = add i32 %r271, 0

        mov     x10, x8
        //  %r272 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r276 = call i32 @eval_op(i32 %r420, i32 %r422, i32 %r421)

        mov     x0, x12
        mov     x1, x10
        mov     x2, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval_op
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  call void @stack_push(i32* %r272, i32 %r276)

        mov     x0, x9
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_9_175_cond


        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#40]
        mov     x16, x10
        str     x16, [sp,#32]
        mov     x16, x11
        str     x16, [sp,#24]
        mov     x16, x12
        str     x16, [sp,#16]
        mov     x15, x15
        b     bb_while_9_175_cond
        //bb_while_9_175_bre:

bb_while_9_175_bre:

        //  %r410 = phi i32 [ %r435, %bb_while_9_175_cond ], [ %r440, %bb38_175_next ]

        //  %r411 = phi i32 [ %r436, %bb_while_9_175_cond ], [ %r441, %bb38_175_next ]

        //  %r412 = phi i32 [ %r437, %bb_while_9_175_cond ], [ %r442, %bb38_175_next ]

        //  %r413 = phi i32 [ %r438, %bb_while_9_175_cond ], [ %r443, %bb38_175_next ]

        //  %r414 = phi i32 [ %r439, %bb_while_9_175_cond ], [ %r444, %bb38_175_next ]

        //  %r277 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-4096
        add     x8, x29, x0
        add     x8, x8, x9
        //  call void @stack_push(i32* %r277, i32 %r410)

        mov     x0, x8
        ldr     x16, [sp,#128]
        mov     x1, x16
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r279 = load i32, i32* @cur_token

        adrp     x8, cur_token
        add     x8, x8, #:lo12:cur_token
        ldr     x9, [x8]
        //  %r280 = load i32, i32* @TOKEN_NUM

        adrp     x8, TOKEN_NUM
        add     x8, x8, #:lo12:TOKEN_NUM
        ldr     x8, [x8]
        //  %r281 = icmp ne i32 %r279, %r280

        cmp     x9, x8
        //  br i1 %r281, label %bb_if_9_185_true, label %bb_if_9_185_false


        ldr     x16, [sp,#128]
        mov     x12, x16
        ldr     x16, [sp,#120]
        mov     x11, x16
        ldr     x16, [sp,#112]
        mov     x10, x16
        ldr     x16, [sp,#104]
        mov     x9, x16
        ldr     x16, [sp,#96]
        mov     x8, x16
        b.ne     bb_if_9_185_true
        b     bb_if_9_185_false
        //bb_if_9_185_true:

bb_if_9_185_true:

        //  %r405 = phi i32 [ %r410, %bb_while_9_175_bre ]

        //  %r406 = phi i32 [ %r411, %bb_while_9_175_bre ]

        //  %r407 = phi i32 [ %r412, %bb_while_9_175_bre ]

        //  %r408 = phi i32 [ %r413, %bb_while_9_175_bre ]

        //  %r409 = phi i32 [ %r414, %bb_while_9_175_bre ]

        //  %r282 = call i32 @panic()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     panic
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  ret i32 %r282

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_9_185_false:

bb_if_9_185_false:

        //  %r381 = phi i32 [ %r410, %bb_while_9_175_bre ]

        //  %r382 = phi i32 [ %r411, %bb_while_9_175_bre ]

        //  %r383 = phi i32 [ %r412, %bb_while_9_175_bre ]

        //  %r384 = phi i32 [ %r413, %bb_while_9_175_bre ]

        //  %r385 = phi i32 [ %r414, %bb_while_9_175_bre ]

        //  br label %bb_if_9_185_end


        mov     x14, x12
        mov     x13, x11
        mov     x12, x10
        mov     x10, x9
        mov     x11, x8
        b     bb_if_9_185_end
        //bb_if_9_185_end:

bb_if_9_185_end:

        //  %r376 = phi i32 [ %r381, %bb_if_9_185_false ]

        //  %r377 = phi i32 [ %r382, %bb_if_9_185_false ]

        //  %r378 = phi i32 [ %r383, %bb_if_9_185_false ]

        //  %r379 = phi i32 [ %r384, %bb_if_9_185_false ]

        //  %r380 = phi i32 [ %r385, %bb_if_9_185_false ]

        //  %r283 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r284 = load i32, i32* @num

        adrp     x8, num
        add     x8, x8, #:lo12:num
        ldr     x8, [x8]
        //  call void @stack_push(i32* %r283, i32 %r284)

        mov     x0, x9
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r285 = call i32 @next_token()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_5_167_cond


        mov     x16, x14
        str     x16, [sp,#8]
        mov     x16, x13
        str     x16, [sp]
        mov     x12, x12
        mov     x10, x10
        mov     x9, x11
        b     bb_while_5_167_cond
        //bb_while_5_167_bre:

bb_while_5_167_bre:

        //  %r371 = phi i32 [ %r448, %bb_while_5_167_cond ], [ %r428, %bb_if_9_171_true ]

        //  %r372 = phi i32 [ %r449, %bb_while_5_167_cond ], [ %r429, %bb_if_9_171_true ]

        //  %r373 = phi i32 [ %r450, %bb_while_5_167_cond ], [ %r430, %bb_if_9_171_true ]

        //  %r374 = phi i32 [ %r451, %bb_while_5_167_cond ], [ %r431, %bb_if_9_171_true ]

        //  %r375 = phi i32 [ %r452, %bb_while_5_167_cond ], [ %r432, %bb_if_9_171_true ]

        //  %r286 = call i32 @next_token()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_5_193_cond


        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#144]
        ldr     x16, [sp,#224]
        mov     x17, x16
        str     x17, [sp,#136]
        ldr     x16, [sp,#192]
        mov     x15, x16
        ldr     x16, [sp,#216]
        mov     x14, x16
        ldr     x16, [sp,#208]
        mov     x13, x16
        mov     x12, x12
        mov     x11, x10
        mov     x10, x8
        b     bb_while_5_193_cond
        //bb_while_5_193_cond:

bb_while_5_193_cond:

        //  %r397 = phi i32 [ %r371, %bb_while_5_167_bre ], [ %r386, %bb_while_5_193_whilestms ]

        //  %r398 = phi i32 [ %r362, %bb_while_5_167_bre ], [ %r396, %bb_while_5_193_whilestms ]

        //  %r399 = phi i32 [ %r372, %bb_while_5_167_bre ], [ %r388, %bb_while_5_193_whilestms ]

        //  %r400 = phi i32 [ %r363, %bb_while_5_167_bre ], [ %r395, %bb_while_5_193_whilestms ]

        //  %r401 = phi i32 [ %r364, %bb_while_5_167_bre ], [ %r394, %bb_while_5_193_whilestms ]

        //  %r402 = phi i32 [ %r373, %bb_while_5_167_bre ], [ %r391, %bb_while_5_193_whilestms ]

        //  %r403 = phi i32 [ %r374, %bb_while_5_167_bre ], [ %r392, %bb_while_5_193_whilestms ]

        //  %r404 = phi i32 [ %r375, %bb_while_5_167_bre ], [ %r393, %bb_while_5_193_whilestms ]

        //  %r287 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-4096
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r288 = call i32 @stack_size(i32* %r287)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_size
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r289 = icmp ne i32 %r288, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r289, label %bb_while_5_193_whilestms, label %bb_while_5_193_bre


        ldr     x16, [sp,#144]
        mov     x17, x16
        str     x17, [sp,#184]
        mov     x16, x15
        str     x16, [sp,#176]
        mov     x16, x12
        str     x16, [sp,#168]
        mov     x16, x11
        str     x16, [sp,#160]
        mov     x16, x10
        str     x16, [sp,#152]
        b.ne     bb_while_5_193_whilestms
        b     bb_while_5_193_bre
        //bb_while_5_193_whilestms:

bb_while_5_193_whilestms:

        //  %r386 = phi i32 [ %r397, %bb_while_5_193_cond ]

        //  %r387 = phi i32 [ %r398, %bb_while_5_193_cond ]

        //  %r388 = phi i32 [ %r399, %bb_while_5_193_cond ]

        //  %r389 = phi i32 [ %r400, %bb_while_5_193_cond ]

        //  %r390 = phi i32 [ %r401, %bb_while_5_193_cond ]

        //  %r391 = phi i32 [ %r402, %bb_while_5_193_cond ]

        //  %r392 = phi i32 [ %r403, %bb_while_5_193_cond ]

        //  %r393 = phi i32 [ %r404, %bb_while_5_193_cond ]

        //  %r291 = getelementptr [256 x i32 ], [256 x i32 ]* %r228, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-4096
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r292 = call i32 @stack_pop(i32* %r291)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r394 = add i32 %r292, 0

        mov     x12, x8
        //  %r294 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r295 = call i32 @stack_pop(i32* %r294)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r395 = add i32 %r295, 0

        mov     x11, x8
        //  %r297 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r298 = call i32 @stack_pop(i32* %r297)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_pop
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r396 = add i32 %r298, 0

        mov     x10, x8
        //  %r299 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r303 = call i32 @eval_op(i32 %r394, i32 %r396, i32 %r395)

        mov     x0, x12
        mov     x1, x10
        mov     x2, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval_op
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  call void @stack_push(i32* %r299, i32 %r303)

        mov     x0, x9
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_push
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_5_193_cond


        ldr     x16, [sp,#184]
        mov     x17, x16
        str     x17, [sp,#144]
        mov     x16, x10
        str     x16, [sp,#136]
        ldr     x16, [sp,#176]
        mov     x15, x16
        mov     x14, x11
        mov     x13, x12
        ldr     x16, [sp,#168]
        mov     x12, x16
        ldr     x16, [sp,#160]
        mov     x11, x16
        ldr     x16, [sp,#152]
        mov     x10, x16
        b     bb_while_5_193_cond
        //bb_while_5_193_bre:

bb_while_5_193_bre:

        //  %r460 = phi i32 [ %r397, %bb_while_5_193_cond ]

        //  %r461 = phi i32 [ %r398, %bb_while_5_193_cond ]

        //  %r462 = phi i32 [ %r399, %bb_while_5_193_cond ]

        //  %r463 = phi i32 [ %r400, %bb_while_5_193_cond ]

        //  %r464 = phi i32 [ %r401, %bb_while_5_193_cond ]

        //  %r465 = phi i32 [ %r402, %bb_while_5_193_cond ]

        //  %r466 = phi i32 [ %r403, %bb_while_5_193_cond ]

        //  %r467 = phi i32 [ %r404, %bb_while_5_193_cond ]

        //  %r304 = getelementptr [256 x i32 ], [256 x i32 ]* %r227, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-2048
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r305 = call i32 @stack_peek(i32* %r304)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     stack_peek
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  ret i32 %r305

        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb14:

bb14:

        //  call void @_sysy_starttime(i32 205)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #205
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
        //  %r475 = add i32 0, 0

        mov     x8, #0
        //  %r307 = call i32 @getint()

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
        //  %r476 = add i32 %r307, 0

        mov     x8, x8
        //  %r308 = call i32 @getch()

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
        //  %r309 = call i32 @next_token()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     next_token
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_while_5_209_cond


        mov     x10, x8
        b     bb_while_5_209_cond
        //bb_while_5_209_cond:

bb_while_5_209_cond:

        //  %r478 = phi i32 [ %r476, %bb14 ], [ %r480, %bb_while_5_209_whilestms ]

        //  %r311 = icmp ne i32 %r478, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r311, label %bb_while_5_209_whilestms, label %bb_while_5_209_bre


        mov     x9, x10
        b.ne     bb_while_5_209_whilestms
        b     bb_while_5_209_bre
        //bb_while_5_209_whilestms:

bb_while_5_209_whilestms:

        //  %r479 = phi i32 [ %r478, %bb_while_5_209_cond ]

        //  %r312 = call i32 @eval()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     eval
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  call void @putint(i32 %r312)

        mov     x0, x8
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
        //  %r314 = sub i32 %r479, 1

        mov     x8, #1
        sub     x8, x9, x8
        //  %r480 = add i32 %r314, 0

        mov     x8, x8
        //  br label %bb_while_5_209_cond


        mov     x10, x8
        b     bb_while_5_209_cond
        //bb_while_5_209_bre:

bb_while_5_209_bre:

        //  %r477 = phi i32 [ %r478, %bb_while_5_209_cond ]

        //  call void @_sysy_stoptime(i32 214)

        mov     x8, #214
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
