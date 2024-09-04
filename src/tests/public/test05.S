.section .data
.global    N
.global    newline
N:
        .quad   0
newline:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global factor
.global main
factor:

        //bb1:

bb1:

        //  %r129 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r130 = add i32 %r100, 0

        mov     x8, x9
        //  %r131 = add i32 0, 0

        mov     x9, #0
        //  %r132 = add i32 0, 0

        mov     x9, #0
        //  %r133 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  %r134 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb_while_5_11_cond


        mov     x11, x9
        mov     x10, x10
        b     bb_while_5_11_cond
        //bb_while_5_11_cond:

bb_while_5_11_cond:

        //  %r147 = phi i32 [ %r134, %bb1 ], [ %r139, %bb_if_9_13_end ]

        //  %r148 = phi i32 [ %r133, %bb1 ], [ %r138, %bb_if_9_13_end ]

        //  %r106 = add i32 %r130, 1

        mov     x9, #1
        add     x9, x8, x9
        //  %r107 = icmp slt i32 %r147, %r106

        cmp     x11, x9
        //  br i1 %r107, label %bb_while_5_11_whilestms, label %bb_while_5_11_bre


        mov     x12, x11
        mov     x9, x10
        mov     x10, x10
        b.lt     bb_while_5_11_whilestms
        b     bb_while_5_11_bre
        //bb_while_5_11_whilestms:

bb_while_5_11_whilestms:

        //  %r145 = phi i32 [ %r147, %bb_while_5_11_cond ]

        //  %r146 = phi i32 [ %r148, %bb_while_5_11_cond ]

        //  %r110 = sdiv i32 %r130, %r145

        sdiv     x10, x8, x12
        //  %r112 = mul i32 %r110, %r145

        mul     x10, x10, x12
        //  %r114 = icmp eq i32 %r112, %r130

        cmp     x10, x8
        //  br i1 %r114, label %bb_if_9_13_true, label %bb_if_9_13_false


        mov     x11, x12
        mov     x10, x9
        mov     x12, x12
        mov     x9, x9
        b.eq     bb_if_9_13_true
        b     bb_if_9_13_false
        //bb_if_9_13_true:

bb_if_9_13_true:

        //  %r142 = phi i32 [ %r145, %bb_while_5_11_whilestms ]

        //  %r143 = phi i32 [ %r146, %bb_while_5_11_whilestms ]

        //  %r117 = add i32 %r143, %r142

        add     x9, x10, x11
        //  %r144 = add i32 %r117, 0

        mov     x9, x9
        //  br label %bb_if_9_13_end


        mov     x11, x11
        mov     x10, x9
        b     bb_if_9_13_end
        //bb_if_9_13_false:

bb_if_9_13_false:

        //  %r140 = phi i32 [ %r145, %bb_while_5_11_whilestms ]

        //  %r141 = phi i32 [ %r146, %bb_while_5_11_whilestms ]

        //  br label %bb_if_9_13_end


        mov     x11, x12
        mov     x10, x9
        b     bb_if_9_13_end
        //bb_if_9_13_end:

bb_if_9_13_end:

        //  %r137 = phi i32 [ %r142, %bb_if_9_13_true ], [ %r140, %bb_if_9_13_false ]

        //  %r138 = phi i32 [ %r144, %bb_if_9_13_true ], [ %r141, %bb_if_9_13_false ]

        //  %r119 = add i32 %r137, 1

        mov     x9, #1
        add     x9, x11, x9
        //  %r139 = add i32 %r119, 0

        mov     x9, x9
        //  br label %bb_while_5_11_cond


        mov     x11, x9
        mov     x10, x10
        b     bb_while_5_11_cond
        //bb_while_5_11_bre:

bb_while_5_11_bre:

        //  %r135 = phi i32 [ %r147, %bb_while_5_11_cond ]

        //  %r136 = phi i32 [ %r148, %bb_while_5_11_cond ]

        //  ret i32 %r136

        mov     x0, x10
        mov     sp, x29
        ret
main:

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 24)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #24
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
        //  store i32 4, i32* @N

        mov     x9, #4
        adrp     x8, N
        add     x8, x8, #:lo12:N
        str     x9, [x8]
        //  store i32 10, i32* @newline

        mov     x9, #10
        adrp     x8, newline
        add     x8, x8, #:lo12:newline
        str     x9, [x8]
        //  %r152 = add i32 0, 0

        mov     x8, #0
        //  %r153 = add i32 0, 0

        mov     x8, #0
        //  %r154 = add i32 1478, 0

        mov     x8, #1478
        mov     x9, x8
        //  %r155 = add i32 0, 0

        mov     x8, #0
        //  call void @_sysy_stoptime(i32 31)

        mov     x8, #31
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
        //  %r125 = call i32 @factor(i32 %r154)

        mov     x0, x9
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     factor
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  ret i32 %r125

        mov     x0, x8
        mov     sp, x29
        ret
