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
.global mod
.global split
.global main
mod:

        //bb1:

bb1:

        //  %r146 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r147 = add i32 %r100, 0

        mov     x9, x9
        //  %r148 = add i32 0, 0

        mov     x8, #0
        //  %r149 = add i32 %r102, 0

        mov     x8, x10
        //  %r107 = sdiv i32 %r147, %r149

        sdiv     x10, x9, x8
        //  %r109 = mul i32 %r107, %r149

        mul     x8, x10, x8
        //  %r110 = sub i32 %r147, %r109

        sub     x8, x9, x8
        //  ret i32 %r110

        mov     x0, x8
        mov     sp, x29
        ret
split:

        //bb2:

bb2:

        //  %r152 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r153 = add i32 %r111, 0

        mov     x9, x9
        //  %r154 = add i32 0, 0

        mov     x8, #0
        //  %r115 = load i32, i32* @N

        adrp     x8, N
        add     x8, x8, #:lo12:N
        ldr     x11, [x8]
        //  %r116 = sub i32 %r115, 1

        mov     x8, #1
        sub     x8, x11, x8
        //  %r155 = add i32 %r116, 0

        mov     x8, x8
        //  br label %bb_while_5_14_cond


        mov     x12, x8
        mov     x11, x9
        b     bb_while_5_14_cond
        //bb_while_5_14_cond:

bb_while_5_14_cond:

        //  %r162 = phi i32 [ %r155, %bb2 ], [ %r161, %bb_while_5_14_whilestms ]

        //  %r163 = phi i32 [ %r153, %bb2 ], [ %r160, %bb_while_5_14_whilestms ]

        //  %r118 = sub i32 0, 1

        mov     x9, #0
        mov     x8, #1
        sub     x8, x9, x8
        //  %r119 = icmp ne i32 %r162, %r118

        cmp     x12, x8
        //  br i1 %r119, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre


        mov     x9, x12
        mov     x8, x11
        b.ne     bb_while_5_14_whilestms
        b     bb_while_5_14_bre
        //bb_while_5_14_whilestms:

bb_while_5_14_whilestms:

        //  %r158 = phi i32 [ %r162, %bb_while_5_14_cond ]

        //  %r159 = phi i32 [ %r163, %bb_while_5_14_cond ]

        //  %r121 = getelementptr i32, i32* %r113, i32 %r158

        mov     x11, #8
        mul     x11, x9, x11
        add     x12, x10, x11
        //  %r123 = call i32 @mod(i32 %r159, i32 10)

        mov     x0, x8
        mov     x11, #10
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
        mov     x11, x0
        //  store i32 %r123, i32* %r121

        str     x11, [x12]
        //  %r125 = sdiv i32 %r159, 10

        mov     x11, #10
        sdiv     x8, x8, x11
        //  %r160 = add i32 %r125, 0

        mov     x11, x8
        //  %r127 = sub i32 %r158, 1

        mov     x8, #1
        sub     x8, x9, x8
        //  %r161 = add i32 %r127, 0

        mov     x8, x8
        //  br label %bb_while_5_14_cond


        mov     x12, x8
        mov     x11, x11
        b     bb_while_5_14_cond
        //bb_while_5_14_bre:

bb_while_5_14_bre:

        //  %r156 = phi i32 [ %r162, %bb_while_5_14_cond ]

        //  %r157 = phi i32 [ %r163, %bb_while_5_14_cond ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
main:

        //130:x29,#-32

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 26)

        mov     x16, #32
        sub     sp, sp, x16
        mov     x8, #26
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
        //  %r167 = add i32 0, 0

        mov     x8, #0
        //  %r168 = add i32 0, 0

        mov     x8, #0
        //  %r130 = alloca [ 4 x i32 ]

        //  %r169 = add i32 1478, 0

        mov     x8, #1478
        mov     x10, x8
        //  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-32
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r133 = call i32 @split(i32 %r169, i32* %r132)

        mov     x0, x10
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     split
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r170 = add i32 %r133, 0

        //  %r171 = add i32 0, 0

        mov     x8, #0
        mov     x9, x8
        //  %r172 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_36_cond


        mov     x10, x8
        mov     x9, x9
        b     bb_while_5_36_cond
        //bb_while_5_36_cond:

bb_while_5_36_cond:

        //  %r179 = phi i32 [ %r172, %bb3 ], [ %r178, %bb_while_5_36_whilestms ]

        //  %r180 = phi i32 [ %r171, %bb3 ], [ %r177, %bb_while_5_36_whilestms ]

        //  %r136 = icmp slt i32 %r179, 4

        mov     x8, #4
        cmp     x10, x8
        //  br i1 %r136, label %bb_while_5_36_whilestms, label %bb_while_5_36_bre


        mov     x8, x10
        b.lt     bb_while_5_36_whilestms
        b     bb_while_5_36_bre
        //bb_while_5_36_whilestms:

bb_while_5_36_whilestms:

        //  %r175 = phi i32 [ %r179, %bb_while_5_36_cond ]

        //  %r176 = phi i32 [ %r180, %bb_while_5_36_cond ]

        //  %r138 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 %r175

        mov     x9, #8
        mul     x10, x8, x9
        mov     x0, #-32
        add     x9, x29, x0
        add     x9, x9, x10
        //  %r139 = load i32, i32* %r138

        ldr     x9, [x9]
        //  %r177 = add i32 %r139, 0

        mov     x11, x9
        //  call void @putint(i32 %r177)

        mov     x0, x11
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
        //  %r141 = load i32, i32* @newline

        adrp     x9, newline
        add     x9, x9, #:lo12:newline
        ldr     x9, [x9]
        //  call void @putch(i32 %r141)

        mov     x0, x9
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
        //  %r143 = add i32 %r175, 1

        mov     x9, #1
        add     x8, x8, x9
        //  %r178 = add i32 %r143, 0

        mov     x8, x8
        //  br label %bb_while_5_36_cond


        mov     x10, x8
        mov     x9, x11
        b     bb_while_5_36_cond
        //bb_while_5_36_bre:

bb_while_5_36_bre:

        //  %r173 = phi i32 [ %r179, %bb_while_5_36_cond ]

        //  %r174 = phi i32 [ %r180, %bb_while_5_36_cond ]

        //  call void @_sysy_stoptime(i32 42)

        mov     x8, #42
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
