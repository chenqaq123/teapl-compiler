.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global canJump
.global main
canJump:

        //110:x29,#-80

        //bb1:

bb1:

        //  %r184 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        mov     x14, x0
        mov     x10, x1
        mov     x8, #0
        mov     x9, x8
        //  %r185 = add i32 0, 0

        mov     x8, #0
        //  %r186 = add i32 0, 0

        mov     x8, #0
        //  %r110 = alloca [ 10 x i32 ]

        //  %r187 = add i32 0, 0

        mov     x8, #0
        //  %r188 = add i32 %r101, 0

        mov     x13, x10
        //  %r104 = icmp eq i32 %r188, 1

        mov     x8, #1
        cmp     x13, x8
        //  br i1 %r104, label %bb_if_5_2_true, label %bb_if_5_2_false


        b.eq     bb_if_5_2_true
        b     bb_if_5_2_false
        //bb_if_5_2_true:

bb_if_5_2_true:

        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_2_false:

bb_if_5_2_false:

        //  br label %bb_if_5_2_end


        b     bb_if_5_2_end
        //bb_if_5_2_end:

bb_if_5_2_end:

        //  %r105 = getelementptr i32, i32* %r100, i32 0

        mov     x10, #8
        mov     x8, #0
        mul     x8, x8, x10
        add     x8, x14, x8
        //  %r106 = load i32, i32* %r105

        ldr     x10, [x8]
        //  %r108 = sub i32 %r188, 2

        mov     x8, #2
        sub     x8, x13, x8
        //  %r109 = icmp sgt i32 %r106, %r108

        cmp     x10, x8
        //  br i1 %r109, label %bb_if_5_6_true, label %bb_if_5_6_false


        b.gt     bb_if_5_6_true
        b     bb_if_5_6_false
        //bb_if_5_6_true:

bb_if_5_6_true:

        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_6_false:

bb_if_5_6_false:

        //  br label %bb_if_5_6_end


        b     bb_if_5_6_end
        //bb_if_5_6_end:

bb_if_5_6_end:

        //  %r208 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_13_cond


        mov     x10, x8
        b     bb_while_5_13_cond
        //bb_while_5_13_cond:

bb_while_5_13_cond:

        //  %r195 = phi i32 [ %r208, %bb_if_5_6_end ], [ %r207, %bb_while_5_13_whilestms ]

        //  %r114 = sub i32 %r188, 1

        mov     x8, #1
        sub     x8, x13, x8
        //  %r115 = icmp slt i32 %r195, %r114

        cmp     x10, x8
        //  br i1 %r115, label %bb_while_5_13_whilestms, label %bb_while_5_13_bre


        mov     x8, x10
        b.lt     bb_while_5_13_whilestms
        b     bb_while_5_13_bre
        //bb_while_5_13_whilestms:

bb_while_5_13_whilestms:

        //  %r206 = phi i32 [ %r195, %bb_while_5_13_cond ]

        //  %r117 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r206

        mov     x10, #8
        mul     x11, x8, x10
        mov     x0, #-80
        add     x10, x29, x0
        add     x11, x10, x11
        //  store i32 0, i32* %r117

        mov     x10, #0
        str     x10, [x11]
        //  %r119 = add i32 %r206, 1

        mov     x10, #1
        add     x8, x8, x10
        //  %r207 = add i32 %r119, 0

        mov     x8, x8
        //  br label %bb_while_5_13_cond


        mov     x10, x8
        b     bb_while_5_13_cond
        //bb_while_5_13_bre:

bb_while_5_13_bre:

        //  %r212 = phi i32 [ %r195, %bb_while_5_13_cond ]

        //  %r122 = sub i32 %r188, 1

        mov     x8, #1
        sub     x8, x13, x8
        //  %r213 = add i32 %r122, 0

        mov     x8, x8
        //  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r213

        mov     x10, #8
        mul     x11, x8, x10
        mov     x0, #-80
        add     x10, x29, x0
        add     x11, x10, x11
        //  store i32 1, i32* %r124

        mov     x10, #1
        str     x10, [x11]
        //  %r126 = sub i32 %r188, 2

        mov     x10, #2
        sub     x10, x13, x10
        //  %r214 = add i32 %r126, 0

        mov     x10, x10
        //  br label %bb_while_5_20_cond


        mov     x12, x9
        mov     x11, x10
        mov     x15, x8
        b     bb_while_5_20_cond
        //bb_while_5_20_cond:

bb_while_5_20_cond:

        //  %r203 = phi i32 [ %r184, %bb_while_5_13_bre ], [ %r196, %bb_while_9_29_bre ]

        //  %r204 = phi i32 [ %r214, %bb_while_5_13_bre ], [ %r199, %bb_while_9_29_bre ]

        //  %r205 = phi i32 [ %r213, %bb_while_5_13_bre ], [ %r198, %bb_while_9_29_bre ]

        //  %r128 = sub i32 0, 1

        mov     x9, #0
        mov     x8, #1
        sub     x8, x9, x8
        //  %r129 = icmp sgt i32 %r204, %r128

        cmp     x11, x8
        //  br i1 %r129, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre


        mov     x10, x12
        mov     x9, x11
        mov     x8, x15
        b.gt     bb_while_5_20_whilestms
        b     bb_while_5_20_bre
        //bb_while_5_20_whilestms:

bb_while_5_20_whilestms:

        //  %r200 = phi i32 [ %r203, %bb_while_5_20_cond ]

        //  %r201 = phi i32 [ %r204, %bb_while_5_20_cond ]

        //  %r202 = phi i32 [ %r205, %bb_while_5_20_cond ]

        //  %r132 = getelementptr i32, i32* %r100, i32 %r201

        mov     x11, #8
        mul     x11, x9, x11
        add     x11, x14, x11
        //  %r133 = load i32, i32* %r132

        ldr     x11, [x11]
        //  %r135 = sub i32 %r188, 1

        mov     x12, #1
        sub     x12, x13, x12
        //  %r137 = sub i32 %r135, %r201

        sub     x12, x12, x9
        //  %r138 = icmp slt i32 %r133, %r137

        cmp     x11, x12
        //  br i1 %r138, label %bb_if_9_22_true, label %bb_if_9_22_false


        mov     x12, x9
        mov     x11, x8
        mov     x9, x9
        mov     x8, x8
        b.lt     bb_if_9_22_true
        b     bb_if_9_22_false
        //bb_if_9_22_true:

bb_if_9_22_true:

        //  %r215 = phi i32 [ %r200, %bb_while_5_20_whilestms ]

        //  %r216 = phi i32 [ %r201, %bb_while_5_20_whilestms ]

        //  %r217 = phi i32 [ %r202, %bb_while_5_20_whilestms ]

        //  %r140 = getelementptr i32, i32* %r100, i32 %r216

        mov     x8, #8
        mul     x8, x12, x8
        add     x8, x14, x8
        //  %r141 = load i32, i32* %r140

        ldr     x8, [x8]
        //  %r218 = add i32 %r141, 0

        mov     x8, x8
        //  br label %bb_if_9_22_end


        mov     x10, x8
        mov     x12, x12
        mov     x11, x11
        b     bb_if_9_22_end
        //bb_if_9_22_false:

bb_if_9_22_false:

        //  %r219 = phi i32 [ %r200, %bb_while_5_20_whilestms ]

        //  %r220 = phi i32 [ %r201, %bb_while_5_20_whilestms ]

        //  %r221 = phi i32 [ %r202, %bb_while_5_20_whilestms ]

        //  %r143 = sub i32 %r188, 1

        mov     x10, #1
        sub     x10, x13, x10
        //  %r145 = sub i32 %r143, %r220

        sub     x10, x10, x9
        //  %r222 = add i32 %r145, 0

        mov     x10, x10
        //  br label %bb_if_9_22_end


        mov     x10, x10
        mov     x12, x9
        mov     x11, x8
        b     bb_if_9_22_end
        //bb_if_9_22_end:

bb_if_9_22_end:

        //  %r189 = phi i32 [ %r218, %bb_if_9_22_true ], [ %r222, %bb_if_9_22_false ]

        //  %r190 = phi i32 [ %r216, %bb_if_9_22_true ], [ %r220, %bb_if_9_22_false ]

        //  %r191 = phi i32 [ %r217, %bb_if_9_22_true ], [ %r221, %bb_if_9_22_false ]

        //  br label %bb_while_9_29_cond


        mov     x9, x10
        mov     x8, x12
        mov     x10, x11
        b     bb_while_9_29_cond
        //bb_while_9_29_cond:

bb_while_9_29_cond:

        //  %r230 = phi i32 [ %r189, %bb_if_9_22_end ], [ %r236, %bb_if_13_31_end ]

        //  %r231 = phi i32 [ %r190, %bb_if_9_22_end ], [ %r234, %bb_if_13_31_end ]

        //  %r232 = phi i32 [ %r191, %bb_if_9_22_end ], [ %r235, %bb_if_13_31_end ]

        //  %r147 = sub i32 0, 1

        mov     x12, #0
        mov     x11, #1
        sub     x11, x12, x11
        //  %r148 = icmp sgt i32 %r230, %r147

        cmp     x9, x11
        //  br i1 %r148, label %bb_while_9_29_whilestms, label %bb_while_9_29_bre


        mov     x12, x9
        mov     x11, x8
        mov     x9, x9
        mov     x15, x8
        mov     x8, x10
        b.gt     bb_while_9_29_whilestms
        b     bb_while_9_29_bre
        //bb_while_9_29_whilestms:

bb_while_9_29_whilestms:

        //  %r226 = phi i32 [ %r230, %bb_while_9_29_cond ]

        //  %r227 = phi i32 [ %r231, %bb_while_9_29_cond ]

        //  %r228 = phi i32 [ %r232, %bb_while_9_29_cond ]

        //  %r151 = add i32 %r227, %r226

        add     x8, x11, x12
        //  %r229 = add i32 %r151, 0

        mov     x15, x8
        //  %r153 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r229

        mov     x8, #8
        mul     x9, x15, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r154 = load i32, i32* %r153

        ldr     x9, [x8]
        //  %r155 = icmp ne i32 %r154, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r155, label %bb_if_13_31_true, label %bb_if_13_31_false


        mov     x10, x12
        mov     x9, x11
        mov     x8, x15
        mov     x12, x12
        mov     x11, x11
        mov     x15, x15
        b.ne     bb_if_13_31_true
        b     bb_if_13_31_false
        //bb_if_13_31_true:

bb_if_13_31_true:

        //  %r209 = phi i32 [ %r226, %bb_while_9_29_whilestms ]

        //  %r210 = phi i32 [ %r227, %bb_while_9_29_whilestms ]

        //  %r211 = phi i32 [ %r229, %bb_while_9_29_whilestms ]

        //  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 %r210

        mov     x11, #8
        mul     x12, x9, x11
        mov     x0, #-80
        add     x11, x29, x0
        add     x12, x11, x12
        //  store i32 1, i32* %r157

        mov     x11, #1
        str     x11, [x12]
        //  br label %bb_if_13_31_end


        mov     x10, x10
        mov     x12, x9
        mov     x11, x8
        b     bb_if_13_31_end
        //bb_if_13_31_false:

bb_if_13_31_false:

        //  %r192 = phi i32 [ %r226, %bb_while_9_29_whilestms ]

        //  %r193 = phi i32 [ %r227, %bb_while_9_29_whilestms ]

        //  %r194 = phi i32 [ %r229, %bb_while_9_29_whilestms ]

        //  br label %bb_if_13_31_end


        mov     x10, x12
        mov     x12, x11
        mov     x11, x15
        b     bb_if_13_31_end
        //bb_if_13_31_end:

bb_if_13_31_end:

        //  %r233 = phi i32 [ %r209, %bb_if_13_31_true ], [ %r192, %bb_if_13_31_false ]

        //  %r234 = phi i32 [ %r210, %bb_if_13_31_true ], [ %r193, %bb_if_13_31_false ]

        //  %r235 = phi i32 [ %r211, %bb_if_13_31_true ], [ %r194, %bb_if_13_31_false ]

        //  %r159 = sub i32 %r233, 1

        mov     x8, #1
        sub     x8, x10, x8
        //  %r236 = add i32 %r159, 0

        mov     x8, x8
        //  br label %bb_while_9_29_cond


        mov     x9, x8
        mov     x8, x12
        mov     x10, x11
        b     bb_while_9_29_cond
        //bb_while_9_29_bre:

bb_while_9_29_bre:

        //  %r196 = phi i32 [ %r230, %bb_while_9_29_cond ]

        //  %r197 = phi i32 [ %r231, %bb_while_9_29_cond ]

        //  %r198 = phi i32 [ %r232, %bb_while_9_29_cond ]

        //  %r161 = sub i32 %r197, 1

        mov     x10, #1
        sub     x10, x15, x10
        //  %r199 = add i32 %r161, 0

        mov     x10, x10
        //  br label %bb_while_5_20_cond


        mov     x12, x9
        mov     x11, x10
        mov     x15, x8
        b     bb_while_5_20_cond
        //bb_while_5_20_bre:

bb_while_5_20_bre:

        //  %r223 = phi i32 [ %r203, %bb_while_5_20_cond ]

        //  %r224 = phi i32 [ %r204, %bb_while_5_20_cond ]

        //  %r225 = phi i32 [ %r205, %bb_while_5_20_cond ]

        //  %r162 = getelementptr [10 x i32 ], [10 x i32 ]* %r110, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r163 = load i32, i32* %r162

        ldr     x8, [x8]
        //  ret i32 %r163

        mov     x0, x8
        mov     sp, x29
        ret
main:

        //165:x29,#-80

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 42)

        mov     x16, #80
        sub     sp, sp, x16
        mov     x8, #42
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
        //  %r238 = add i32 0, 0

        mov     x8, #0
        //  %r165 = alloca [ 10 x i32 ]

        //  %r166 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 3, i32* %r166

        mov     x8, #3
        str     x8, [x9]
        //  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 3, i32* %r167

        mov     x8, #3
        str     x8, [x9]
        //  %r168 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 2

        mov     x9, #8
        mov     x8, #2
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 9, i32* %r168

        mov     x8, #9
        str     x8, [x9]
        //  %r169 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 3

        mov     x9, #8
        mov     x8, #3
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 0, i32* %r169

        mov     x8, #0
        str     x8, [x9]
        //  %r170 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 4

        mov     x9, #8
        mov     x8, #4
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 0, i32* %r170

        mov     x8, #0
        str     x8, [x9]
        //  %r171 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 5

        mov     x9, #8
        mov     x8, #5
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r171

        mov     x8, #1
        str     x8, [x9]
        //  %r172 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 6

        mov     x9, #8
        mov     x8, #6
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r172

        mov     x8, #1
        str     x8, [x9]
        //  %r173 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 7

        mov     x9, #8
        mov     x8, #7
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 5, i32* %r173

        mov     x8, #5
        str     x8, [x9]
        //  %r174 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 8

        mov     x9, #8
        mov     x8, #8
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 7, i32* %r174

        mov     x8, #7
        str     x8, [x9]
        //  %r175 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 9

        mov     x9, #8
        mov     x8, #9
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 8, i32* %r175

        mov     x8, #8
        str     x8, [x9]
        //  %r239 = add i32 10, 0

        mov     x8, #10
        mov     x10, x8
        //  %r176 = getelementptr [10 x i32 ], [10 x i32 ]* %r165, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r178 = call i32 @canJump(i32* %r176, i32 %r239)

        mov     x0, x8
        mov     x1, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     canJump
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r240 = add i32 %r178, 0

        mov     x9, x8
        //  call void @_sysy_stoptime(i32 49)

        mov     x8, #49
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
        //  ret i32 %r240

        mov     x0, x9
        mov     sp, x29
        ret
