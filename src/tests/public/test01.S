.section .data
.global    a
.global    b
.global    c
a:
        .zero   80
b:
        .quad   27
c:
        .quad   1
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global main
main:

        //bb1:

bb1:

        //  call void @_sysy_starttime(i32 4)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #4
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
        //  %r123 = add i32 0, 0

        mov     x8, #0
        //  %r124 = add i32 0, 0

        mov     x8, #0
        mov     x9, x8
        //  %r125 = add i32 0, 0

        mov     x8, #0
        //  %r126 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_9_cond


        mov     x10, x9
        b     bb_while_5_9_cond
        //bb_while_5_9_cond:

bb_while_5_9_cond:

        //  %r139 = phi i32 [ %r124, %bb1 ], [ %r138, %bb_while_5_9_whilestms ]

        //  %r103 = icmp slt i32 %r139, 10

        mov     x9, #10
        cmp     x10, x9
        //  br i1 %r103, label %bb_while_5_9_whilestms, label %bb_while_5_9_bre


        mov     x11, x10
        b.lt     bb_while_5_9_whilestms
        b     bb_while_5_9_bre
        //bb_while_5_9_whilestms:

bb_while_5_9_whilestms:

        //  %r137 = phi i32 [ %r139, %bb_while_5_9_cond ]

        //  %r105 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r137

        mov     x9, #8
        mul     x10, x11, x9
        adrp     x9, a
        add     x9, x9, #:lo12:a
        add     x9, x9, x10
        //  store i32 %r137, i32* %r105

        str     x11, [x9]
        //  %r108 = add i32 %r137, 1

        mov     x9, #1
        add     x9, x11, x9
        //  %r138 = add i32 %r108, 0

        mov     x9, x9
        //  br label %bb_while_5_9_cond


        mov     x10, x9
        b     bb_while_5_9_cond
        //bb_while_5_9_bre:

bb_while_5_9_bre:

        //  %r135 = phi i32 [ %r139, %bb_while_5_9_cond ]

        //  %r136 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_15_cond


        mov     x10, x9
        mov     x9, x8
        b     bb_while_5_15_cond
        //bb_while_5_15_cond:

bb_while_5_15_cond:

        //  %r133 = phi i32 [ %r136, %bb_while_5_9_bre ], [ %r132, %bb_while_5_15_whilestms ]

        //  %r134 = phi i32 [ %r126, %bb_while_5_9_bre ], [ %r131, %bb_while_5_15_whilestms ]

        //  %r110 = icmp slt i32 %r133, 10

        mov     x8, #10
        cmp     x10, x8
        //  br i1 %r110, label %bb_while_5_15_whilestms, label %bb_while_5_15_bre


        mov     x8, x10
        mov     x11, x9
        mov     x9, x9
        b.lt     bb_while_5_15_whilestms
        b     bb_while_5_15_bre
        //bb_while_5_15_whilestms:

bb_while_5_15_whilestms:

        //  %r129 = phi i32 [ %r133, %bb_while_5_15_cond ]

        //  %r130 = phi i32 [ %r134, %bb_while_5_15_cond ]

        //  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r129

        mov     x9, #8
        mul     x10, x8, x9
        adrp     x9, a
        add     x9, x9, #:lo12:a
        add     x9, x9, x10
        //  %r114 = load i32, i32* %r113

        ldr     x9, [x9]
        //  %r115 = add i32 %r130, %r114

        add     x9, x11, x9
        //  %r131 = add i32 %r115, 0

        mov     x11, x9
        //  %r117 = add i32 %r129, 1

        mov     x9, #1
        add     x8, x8, x9
        //  %r132 = add i32 %r117, 0

        mov     x8, x8
        //  br label %bb_while_5_15_cond


        mov     x10, x8
        mov     x9, x11
        b     bb_while_5_15_cond
        //bb_while_5_15_bre:

bb_while_5_15_bre:

        //  %r127 = phi i32 [ %r133, %bb_while_5_15_cond ]

        //  %r128 = phi i32 [ %r134, %bb_while_5_15_cond ]

        //  %r118 = load i32, i32* @b

        adrp     x8, b
        add     x8, x8, #:lo12:b
        ldr     x8, [x8]
        //  call void @putint(i32 %r118)

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
        //  %r119 = load i32, i32* @c

        adrp     x8, c
        add     x8, x8, #:lo12:c
        ldr     x8, [x8]
        //  call void @putint(i32 %r119)

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
        //  call void @putint(i32 %r128)

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
        //  call void @_sysy_stoptime(i32 19)

        mov     x8, #19
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
