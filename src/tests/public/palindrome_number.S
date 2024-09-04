.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global mod
.global palindrome
.global main
mod:

        //bb1:

bb1:

        //  %r148 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r149 = add i32 %r100, 0

        mov     x9, x9
        //  %r150 = add i32 0, 0

        mov     x8, #0
        //  %r151 = add i32 %r102, 0

        mov     x8, x10
        //  %r107 = sdiv i32 %r149, %r151

        sdiv     x10, x9, x8
        //  %r109 = mul i32 %r107, %r151

        mul     x8, x10, x8
        //  %r110 = sub i32 %r149, %r109

        sub     x8, x9, x8
        //  ret i32 %r110

        mov     x0, x8
        mov     sp, x29
        ret
palindrome:

        //113:x29,#-32

        //bb2:

bb2:

        //  %r155 = add i32 0, 0

        mov     x16, #32
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r156 = add i32 %r111, 0

        mov     x9, x9
        //  %r113 = alloca [ 4 x i32 ]

        //  %r157 = add i32 0, 0

        mov     x8, #0
        //  %r158 = add i32 0, 0

        mov     x8, #0
        //  %r159 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_12_cond


        mov     x11, x8
        mov     x10, x9
        b     bb_while_5_12_cond
        //bb_while_5_12_cond:

bb_while_5_12_cond:

        //  %r177 = phi i32 [ %r159, %bb2 ], [ %r173, %bb_while_5_12_whilestms ]

        //  %r178 = phi i32 [ %r156, %bb2 ], [ %r172, %bb_while_5_12_whilestms ]

        //  %r117 = icmp slt i32 %r177, 4

        mov     x8, #4
        cmp     x11, x8
        //  br i1 %r117, label %bb_while_5_12_whilestms, label %bb_while_5_12_bre


        mov     x9, x11
        mov     x8, x10
        mov     x11, x11
        mov     x10, x10
        b.lt     bb_while_5_12_whilestms
        b     bb_while_5_12_bre
        //bb_while_5_12_whilestms:

bb_while_5_12_whilestms:

        //  %r170 = phi i32 [ %r177, %bb_while_5_12_cond ]

        //  %r171 = phi i32 [ %r178, %bb_while_5_12_cond ]

        //  %r119 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r170

        mov     x10, #8
        mul     x11, x9, x10
        mov     x0, #-32
        add     x10, x29, x0
        add     x11, x10, x11
        //  %r121 = call i32 @mod(i32 %r171, i32 10)

        mov     x0, x8
        mov     x10, #10
        mov     x1, x10
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
        mov     x10, x0
        //  store i32 %r121, i32* %r119

        str     x10, [x11]
        //  %r123 = sdiv i32 %r171, 10

        mov     x10, #10
        sdiv     x8, x8, x10
        //  %r172 = add i32 %r123, 0

        mov     x10, x8
        //  %r125 = add i32 %r170, 1

        mov     x8, #1
        add     x8, x9, x8
        //  %r173 = add i32 %r125, 0

        mov     x8, x8
        //  br label %bb_while_5_12_cond


        mov     x11, x8
        mov     x10, x10
        b     bb_while_5_12_cond
        //bb_while_5_12_bre:

bb_while_5_12_bre:

        //  %r168 = phi i32 [ %r177, %bb_while_5_12_cond ]

        //  %r169 = phi i32 [ %r178, %bb_while_5_12_cond ]

        //  %r126 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-32
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r127 = load i32, i32* %r126

        ldr     x8, [x8]
        //  %r128 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3

        mov     x12, #8
        mov     x9, #3
        mul     x12, x9, x12
        mov     x0, #-32
        add     x9, x29, x0
        add     x9, x9, x12
        //  %r129 = load i32, i32* %r128

        ldr     x9, [x9]
        //  %r130 = icmp eq i32 %r127, %r129

        cmp     x8, x9
        //  br i1 %r130, label %bb22_19_next, label %bb_if_5_19_false


        mov     x9, x11
        mov     x8, x10
        mov     x13, x11
        mov     x12, x10
        b.eq     bb22_19_next
        b     bb_if_5_19_false
        //bb22_19_next:

bb22_19_next:

        //  %r166 = phi i32 [ %r168, %bb_while_5_12_bre ]

        //  %r167 = phi i32 [ %r169, %bb_while_5_12_bre ]

        //  %r131 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1

        mov     x11, #8
        mov     x10, #1
        mul     x11, x10, x11
        mov     x0, #-32
        add     x10, x29, x0
        add     x10, x10, x11
        //  %r132 = load i32, i32* %r131

        ldr     x10, [x10]
        //  %r133 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2

        mov     x12, #8
        mov     x11, #2
        mul     x12, x11, x12
        mov     x0, #-32
        add     x11, x29, x0
        add     x11, x11, x12
        //  %r134 = load i32, i32* %r133

        ldr     x11, [x11]
        //  %r135 = icmp eq i32 %r132, %r134

        cmp     x10, x11
        //  br i1 %r135, label %bb_if_5_19_true, label %bb_if_5_19_false


        mov     x11, x9
        mov     x10, x8
        mov     x13, x9
        mov     x12, x8
        b.eq     bb_if_5_19_true
        b     bb_if_5_19_false
        //bb_if_5_19_true:

bb_if_5_19_true:

        //  %r163 = phi i32 [ %r166, %bb22_19_next ]

        //  %r164 = phi i32 [ %r167, %bb22_19_next ]

        //  %r165 = add i32 1, 0

        mov     x8, #1
        mov     x8, x8
        //  br label %bb_if_5_19_end


        mov     x8, x8
        b     bb_if_5_19_end
        //bb_if_5_19_false:

bb_if_5_19_false:

        //  %r160 = phi i32 [ %r168, %bb_while_5_12_bre ], [ %r166, %bb22_19_next ]

        //  %r161 = phi i32 [ %r169, %bb_while_5_12_bre ], [ %r167, %bb22_19_next ]

        //  %r162 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_if_5_19_end


        mov     x8, x8
        b     bb_if_5_19_end
        //bb_if_5_19_end:

bb_if_5_19_end:

        //  %r174 = phi i32 [ %r165, %bb_if_5_19_true ], [ %r162, %bb_if_5_19_false ]

        //  %r175 = phi i32 [ %r163, %bb_if_5_19_true ], [ %r160, %bb_if_5_19_false ]

        //  %r176 = phi i32 [ %r164, %bb_if_5_19_true ], [ %r161, %bb_if_5_19_false ]

        //  ret i32 %r174

        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 30)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #30
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
        //  %r181 = add i32 0, 0

        mov     x8, #0
        //  %r182 = add i32 1221, 0

        mov     x8, #1221
        mov     x10, x8
        //  %r183 = add i32 0, 0

        mov     x8, #0
        //  %r140 = call i32 @palindrome(i32 %r182)

        mov     x0, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     palindrome
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r184 = add i32 %r140, 0

        mov     x9, x8
        //  %r142 = icmp eq i32 %r184, 1

        mov     x8, #1
        cmp     x9, x8
        //  br i1 %r142, label %bb_if_5_35_true, label %bb_if_5_35_false


        b.eq     bb_if_5_35_true
        b     bb_if_5_35_false
        //bb_if_5_35_true:

bb_if_5_35_true:

        //  call void @putint(i32 %r182)

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
        //  br label %bb_if_5_35_end


        b     bb_if_5_35_end
        //bb_if_5_35_false:

bb_if_5_35_false:

        //  %r185 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  call void @putint(i32 %r185)

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
        //  br label %bb_if_5_35_end


        b     bb_if_5_35_end
        //bb_if_5_35_end:

bb_if_5_35_end:

        //  %r186 = phi i32 [ %r184, %bb_if_5_35_true ], [ %r185, %bb_if_5_35_false ]

        //  %r187 = add i32 10, 0

        mov     x8, #10
        mov     x8, x8
        //  call void @putch(i32 %r187)

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
        //  call void @_sysy_stoptime(i32 47)

        mov     x8, #47
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
