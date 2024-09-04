.section .data
.global    N
N:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global insert
.global main
insert:

        //bb1:

bb1:

        //  %r163 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, x0
        mov     x10, x1
        mov     x9, #0
        mov     x11, x9
        //  %r164 = add i32 0, 0

        mov     x9, #0
        //  %r165 = add i32 %r101, 0

        mov     x13, x10
        //  %r166 = add i32 0, 0

        mov     x9, #0
        //  %r167 = add i32 0, 0

        mov     x9, #0
        //  %r168 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_8_cond


        mov     x10, x9
        b     bb_while_5_8_cond
        //bb_while_5_8_cond:

bb_while_5_8_cond:

        //  %r185 = phi i32 [ %r168, %bb1 ], [ %r183, %bb_while_5_8_whilestms ]

        //  %r107 = getelementptr i32, i32* %r100, i32 %r185

        mov     x9, #8
        mul     x9, x10, x9
        add     x9, x8, x9
        //  %r108 = load i32, i32* %r107

        ldr     x9, [x9]
        //  %r109 = icmp sgt i32 %r165, %r108

        cmp     x13, x9
        //  br i1 %r109, label %bb19_8_next, label %bb_while_5_8_bre


        mov     x12, x10
        mov     x9, x10
        b.gt     bb19_8_next
        b     bb_while_5_8_bre
        //bb19_8_next:

bb19_8_next:

        //  %r184 = phi i32 [ %r185, %bb_while_5_8_cond ]

        //  %r111 = load i32, i32* @N

        adrp     x9, N
        add     x9, x9, #:lo12:N
        ldr     x9, [x9]
        //  %r112 = icmp slt i32 %r184, %r111

        cmp     x12, x9
        //  br i1 %r112, label %bb_while_5_8_whilestms, label %bb_while_5_8_bre


        mov     x10, x12
        mov     x9, x12
        b.lt     bb_while_5_8_whilestms
        b     bb_while_5_8_bre
        //bb_while_5_8_whilestms:

bb_while_5_8_whilestms:

        //  %r182 = phi i32 [ %r184, %bb19_8_next ]

        //  %r114 = add i32 %r182, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r183 = add i32 %r114, 0

        mov     x9, x9
        //  br label %bb_while_5_8_cond


        mov     x10, x9
        b     bb_while_5_8_cond
        //bb_while_5_8_bre:

bb_while_5_8_bre:

        //  %r180 = phi i32 [ %r185, %bb_while_5_8_cond ], [ %r184, %bb19_8_next ]

        //  %r115 = load i32, i32* @N

        adrp     x10, N
        add     x10, x10, #:lo12:N
        ldr     x10, [x10]
        //  %r181 = add i32 %r115, 0

        mov     x10, x10
        //  br label %bb_while_5_14_cond


        mov     x10, x10
        mov     x14, x11
        mov     x9, x9
        b     bb_while_5_14_cond
        //bb_while_5_14_cond:

bb_while_5_14_cond:

        //  %r177 = phi i32 [ %r181, %bb_while_5_8_bre ], [ %r176, %bb_while_5_14_whilestms ]

        //  %r178 = phi i32 [ %r163, %bb_while_5_8_bre ], [ %r175, %bb_while_5_14_whilestms ]

        //  %r179 = phi i32 [ %r180, %bb_while_5_8_bre ], [ %r174, %bb_while_5_14_whilestms ]

        //  %r118 = icmp sgt i32 %r177, %r179

        cmp     x10, x9
        //  br i1 %r118, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre


        mov     x12, x10
        mov     x11, x9
        b.gt     bb_while_5_14_whilestms
        b     bb_while_5_14_bre
        //bb_while_5_14_whilestms:

bb_while_5_14_whilestms:

        //  %r172 = phi i32 [ %r177, %bb_while_5_14_cond ]

        //  %r173 = phi i32 [ %r178, %bb_while_5_14_cond ]

        //  %r174 = phi i32 [ %r179, %bb_while_5_14_cond ]

        //  %r121 = sub i32 %r172, 1

        mov     x9, #1
        sub     x9, x12, x9
        //  %r175 = add i32 %r121, 0

        mov     x9, x9
        //  %r123 = getelementptr i32, i32* %r100, i32 %r172

        mov     x10, #8
        mul     x10, x12, x10
        add     x10, x8, x10
        //  %r125 = getelementptr i32, i32* %r100, i32 %r175

        mov     x14, #8
        mul     x14, x9, x14
        add     x14, x8, x14
        //  %r126 = load i32, i32* %r125

        ldr     x14, [x14]
        //  store i32 %r126, i32* %r123

        str     x14, [x10]
        //  %r128 = getelementptr i32, i32* %r100, i32 %r174

        mov     x10, #8
        mul     x10, x11, x10
        add     x10, x8, x10
        //  store i32 %r165, i32* %r128

        str     x13, [x10]
        //  %r131 = sub i32 %r172, 1

        mov     x10, #1
        sub     x10, x12, x10
        //  %r176 = add i32 %r131, 0

        mov     x10, x10
        //  br label %bb_while_5_14_cond


        mov     x10, x10
        mov     x14, x9
        mov     x9, x11
        b     bb_while_5_14_cond
        //bb_while_5_14_bre:

bb_while_5_14_bre:

        //  %r169 = phi i32 [ %r177, %bb_while_5_14_cond ]

        //  %r170 = phi i32 [ %r178, %bb_while_5_14_cond ]

        //  %r171 = phi i32 [ %r179, %bb_while_5_14_cond ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
main:

        //132:x29,#-88

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 27)

        mov     x16, #96
        sub     sp, sp, x16
        mov     x8, #27
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
        //  store i32 10, i32* @N

        mov     x9, #10
        adrp     x8, N
        add     x8, x8, #:lo12:N
        str     x9, [x8]
        //  %r132 = alloca [ 11 x i32 ]

        //  %r133 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r133

        mov     x8, #1
        str     x8, [x9]
        //  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 3, i32* %r134

        mov     x8, #3
        str     x8, [x9]
        //  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 2

        mov     x9, #8
        mov     x8, #2
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 4, i32* %r135

        mov     x8, #4
        str     x8, [x9]
        //  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 3

        mov     x9, #8
        mov     x8, #3
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 7, i32* %r136

        mov     x8, #7
        str     x8, [x9]
        //  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 4

        mov     x9, #8
        mov     x8, #4
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 8, i32* %r137

        mov     x8, #8
        str     x8, [x9]
        //  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 5

        mov     x9, #8
        mov     x8, #5
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 11, i32* %r138

        mov     x8, #11
        str     x8, [x9]
        //  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 6

        mov     x9, #8
        mov     x8, #6
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 13, i32* %r139

        mov     x8, #13
        str     x8, [x9]
        //  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 7

        mov     x9, #8
        mov     x8, #7
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 18, i32* %r140

        mov     x8, #18
        str     x8, [x9]
        //  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 8

        mov     x9, #8
        mov     x8, #8
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 56, i32* %r141

        mov     x8, #56
        str     x8, [x9]
        //  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 9

        mov     x9, #8
        mov     x8, #9
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 78, i32* %r142

        mov     x8, #78
        str     x8, [x9]
        //  %r188 = add i32 0, 0

        mov     x8, #0
        //  %r189 = add i32 0, 0

        mov     x8, #0
        //  %r190 = add i32 0, 0

        mov     x8, #0
        mov     x11, x8
        //  %r145 = call i32 @getint()

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
        //  %r191 = add i32 %r145, 0

        mov     x10, x8
        //  %r146 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-88
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r148 = call i32 @insert(i32* %r146, i32 %r191)

        mov     x0, x8
        mov     x1, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     insert
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r192 = add i32 %r148, 0

        mov     x8, x8
        //  br label %bb_while_5_47_cond


        mov     x10, x11
        mov     x9, x8
        b     bb_while_5_47_cond
        //bb_while_5_47_cond:

bb_while_5_47_cond:

        //  %r200 = phi i32 [ %r190, %bb2 ], [ %r199, %bb_while_5_47_whilestms ]

        //  %r201 = phi i32 [ %r192, %bb2 ], [ %r198, %bb_while_5_47_whilestms ]

        //  %r150 = load i32, i32* @N

        adrp     x8, N
        add     x8, x8, #:lo12:N
        ldr     x8, [x8]
        //  %r151 = icmp slt i32 %r200, %r150

        cmp     x10, x8
        //  br i1 %r151, label %bb_while_5_47_whilestms, label %bb_while_5_47_bre


        mov     x8, x10
        b.lt     bb_while_5_47_whilestms
        b     bb_while_5_47_bre
        //bb_while_5_47_whilestms:

bb_while_5_47_whilestms:

        //  %r195 = phi i32 [ %r200, %bb_while_5_47_cond ]

        //  %r196 = phi i32 [ %r201, %bb_while_5_47_cond ]

        //  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 %r195

        mov     x9, #8
        mul     x10, x8, x9
        mov     x0, #-88
        add     x9, x29, x0
        add     x9, x9, x10
        //  %r154 = load i32, i32* %r153

        ldr     x9, [x9]
        //  %r197 = add i32 %r154, 0

        mov     x9, x9
        //  call void @putint(i32 %r197)

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
        //  %r198 = add i32 10, 0

        mov     x9, #10
        mov     x11, x9
        //  call void @putch(i32 %r198)

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
        //  %r158 = add i32 %r195, 1

        mov     x9, #1
        add     x8, x8, x9
        //  %r199 = add i32 %r158, 0

        mov     x8, x8
        //  br label %bb_while_5_47_cond


        mov     x10, x8
        mov     x9, x11
        b     bb_while_5_47_cond
        //bb_while_5_47_bre:

bb_while_5_47_bre:

        //  %r193 = phi i32 [ %r200, %bb_while_5_47_cond ]

        //  %r194 = phi i32 [ %r201, %bb_while_5_47_cond ]

        //  call void @_sysy_stoptime(i32 54)

        mov     x8, #54
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
