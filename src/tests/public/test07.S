.section .data
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

        //  %r117 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, #0
        mov     x10, x9
        //  call void @_sysy_starttime(i32 2)

        mov     x9, #2
        mov     x0, x9
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
        //  %r118 = add i32 0, 0

        mov     x9, #0
        //  %r119 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  %r120 = add i32 0, 0

        mov     x11, #0
        //  %r121 = add i32 0, 0

        mov     x11, #0
        //  %r103 = icmp slt i32 1, 9

        mov     x12, #1
        mov     x11, #9
        cmp     x12, x11
        //  br i1 %r103, label %bb28_4_next, label %bb17_4_false


        b.lt     bb28_4_next
        b     bb17_4_false
        //bb28_4_next:

bb28_4_next:

        //  %r105 = icmp sgt i32 %r119, 0

        mov     x11, #0
        cmp     x9, x11
        //  br i1 %r105, label %bb17_4_true, label %bb17_4_false


        b.gt     bb17_4_true
        b     bb17_4_false
        //bb17_4_true:

bb17_4_true:

        //  %r139 = add i32 1, 0

        mov     x11, #1
        mov     x11, x11
        //  br label %bb17_4_end


        mov     x13, x11
        b     bb17_4_end
        //bb17_4_false:

bb17_4_false:

        //  %r138 = add i32 0, 0

        mov     x11, #0
        mov     x11, x11
        //  br label %bb17_4_end


        mov     x13, x11
        b     bb17_4_end
        //bb17_4_end:

bb17_4_end:

        //  %r136 = phi i32 [ %r139, %bb17_4_true ], [ %r138, %bb17_4_false ]

        //  %r137 = add i32 %r136, 0

        mov     x12, x13
        //  br label %bb_while_5_5_cond


        mov     x11, x9
        mov     x10, x10
        mov     x9, x12
        mov     x15, x13
        b     bb_while_5_5_cond
        //bb_while_5_5_cond:

bb_while_5_5_cond:

        //  %r132 = phi i32 [ %r119, %bb17_4_end ], [ %r131, %bb_while_5_5_whilestms ]

        //  %r133 = phi i32 [ %r117, %bb17_4_end ], [ %r130, %bb_while_5_5_whilestms ]

        //  %r134 = phi i32 [ %r137, %bb17_4_end ], [ %r128, %bb_while_5_5_whilestms ]

        //  %r135 = phi i32 [ %r136, %bb17_4_end ], [ %r129, %bb_while_5_5_whilestms ]

        //  %r108 = icmp slt i32 %r132, 1000000

        movz     x8, #15, LSL #16
        movk     x8, #0, LSL #0
        cmp     x11, x8
        //  br i1 %r108, label %bb_while_5_5_whilestms, label %bb_while_5_5_bre


        mov     x14, x11
        mov     x13, x9
        mov     x12, x15
        mov     x9, x9
        b.lt     bb_while_5_5_whilestms
        b     bb_while_5_5_bre
        //bb_while_5_5_whilestms:

bb_while_5_5_whilestms:

        //  %r126 = phi i32 [ %r132, %bb_while_5_5_cond ]

        //  %r127 = phi i32 [ %r133, %bb_while_5_5_cond ]

        //  %r128 = phi i32 [ %r134, %bb_while_5_5_cond ]

        //  %r129 = phi i32 [ %r135, %bb_while_5_5_cond ]

        //  %r130 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  %r111 = add i32 %r126, 1

        mov     x9, #1
        add     x9, x14, x9
        //  %r131 = add i32 %r111, 0

        mov     x9, x9
        //  br label %bb_while_5_5_cond


        mov     x11, x9
        mov     x10, x10
        mov     x9, x13
        mov     x15, x12
        b     bb_while_5_5_cond
        //bb_while_5_5_bre:

bb_while_5_5_bre:

        //  %r122 = phi i32 [ %r132, %bb_while_5_5_cond ]

        //  %r123 = phi i32 [ %r133, %bb_while_5_5_cond ]

        //  %r124 = phi i32 [ %r134, %bb_while_5_5_cond ]

        //  %r125 = phi i32 [ %r135, %bb_while_5_5_cond ]

        //  call void @putint(i32 %r124)

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
        //  call void @_sysy_stoptime(i32 10)

        mov     x8, #10
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
