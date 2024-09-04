.section .data
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global uniquePaths
.global main
uniquePaths:

        //108:x29,#-72

        //bb1:

bb1:

        //  %r190 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, #24
        sub     sp, sp, x16
        mov     x10, x0
        mov     x9, x1
        mov     x8, #0
        mov     x15, x8
        //  %r191 = add i32 0, 0

        mov     x8, #0
        mov     x14, x8
        //  %r192 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r193 = add i32 0, 0

        mov     x11, #0
        mov     x13, x11
        //  %r194 = add i32 0, 0

        mov     x11, #0
        //  %r108 = alloca [ 9 x i32 ]

        //  %r195 = add i32 0, 0

        mov     x11, #0
        //  %r196 = add i32 %r100, 0

        mov     x12, x10
        //  %r197 = add i32 0, 0

        mov     x10, #0
        //  %r198 = add i32 %r102, 0

        mov     x16, x9
        str     x16, [sp,#16]
        //  %r105 = icmp eq i32 %r196, 1

        mov     x9, #1
        cmp     x12, x9
        //  br i1 %r105, label %bb_if_5_2_true, label %bb18_2_next


        b.eq     bb_if_5_2_true
        b     bb18_2_next
        //bb18_2_next:

bb18_2_next:

        //  %r107 = icmp eq i32 %r198, 1

        mov     x9, #1
        ldr     x16, [sp,#16]
        cmp     x16, x9
        //  br i1 %r107, label %bb_if_5_2_true, label %bb_if_5_2_false


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

        //  %r228 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_14_cond


        mov     x8, x8
        mov     x9, x9
        b     bb_while_5_14_cond
        //bb_while_5_14_cond:

bb_while_5_14_cond:

        //  %r229 = phi i32 [ %r192, %bb_if_5_2_end ], [ %r252, %bb_while_5_14_whilestms ]

        //  %r230 = phi i32 [ %r228, %bb_if_5_2_end ], [ %r253, %bb_while_5_14_whilestms ]

        //  %r116 = icmp slt i32 %r230, %r196

        cmp     x9, x12
        //  br i1 %r116, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre


        mov     x11, x9
        mov     x8, x8
        b.lt     bb_while_5_14_whilestms
        b     bb_while_5_14_bre
        //bb_while_5_14_whilestms:

bb_while_5_14_whilestms:

        //  %r250 = phi i32 [ %r229, %bb_while_5_14_cond ]

        //  %r251 = phi i32 [ %r230, %bb_while_5_14_cond ]

        //  %r118 = mul i32 %r251, 3

        mov     x8, #3
        mul     x8, x11, x8
        //  %r120 = add i32 %r118, %r198

        ldr     x16, [sp,#16]
        add     x9, x8, x16
        //  %r121 = sub i32 %r120, 1

        mov     x8, #1
        sub     x8, x9, x8
        //  %r252 = add i32 %r121, 0

        mov     x10, x8
        //  %r123 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r252

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-72
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r123

        mov     x8, #1
        str     x8, [x9]
        //  %r125 = add i32 %r251, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r253 = add i32 %r125, 0

        mov     x9, x8
        //  br label %bb_while_5_14_cond


        mov     x8, x10
        mov     x9, x9
        b     bb_while_5_14_cond
        //bb_while_5_14_bre:

bb_while_5_14_bre:

        //  %r233 = phi i32 [ %r229, %bb_while_5_14_cond ]

        //  %r234 = phi i32 [ %r230, %bb_while_5_14_cond ]

        //  %r235 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  br label %bb_while_5_20_cond


        mov     x9, x8
        mov     x8, x10
        b     bb_while_5_20_cond
        //bb_while_5_20_cond:

bb_while_5_20_cond:

        //  %r231 = phi i32 [ %r233, %bb_while_5_14_bre ], [ %r206, %bb_while_5_20_whilestms ]

        //  %r232 = phi i32 [ %r235, %bb_while_5_14_bre ], [ %r207, %bb_while_5_20_whilestms ]

        //  %r128 = icmp slt i32 %r232, %r198

        ldr     x16, [sp,#16]
        cmp     x8, x16
        //  br i1 %r128, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre


        mov     x11, x8
        mov     x9, x9
        b.lt     bb_while_5_20_whilestms
        b     bb_while_5_20_bre
        //bb_while_5_20_whilestms:

bb_while_5_20_whilestms:

        //  %r204 = phi i32 [ %r231, %bb_while_5_20_cond ]

        //  %r205 = phi i32 [ %r232, %bb_while_5_20_cond ]

        //  %r130 = sub i32 %r196, 1

        mov     x8, #1
        sub     x9, x12, x8
        //  %r131 = mul i32 %r130, 3

        mov     x8, #3
        mul     x8, x9, x8
        //  %r133 = add i32 %r131, %r205

        add     x8, x8, x11
        //  %r206 = add i32 %r133, 0

        mov     x10, x8
        //  %r135 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r206

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-72
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r135

        mov     x8, #1
        str     x8, [x9]
        //  %r137 = add i32 %r205, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r207 = add i32 %r137, 0

        mov     x8, x8
        //  br label %bb_while_5_20_cond


        mov     x9, x10
        mov     x8, x8
        b     bb_while_5_20_cond
        //bb_while_5_20_bre:

bb_while_5_20_bre:

        //  %r219 = phi i32 [ %r231, %bb_while_5_20_cond ]

        //  %r220 = phi i32 [ %r232, %bb_while_5_20_cond ]

        //  %r139 = sub i32 %r196, 2

        mov     x8, #2
        sub     x8, x12, x8
        //  %r221 = add i32 %r139, 0

        mov     x8, x8
        //  br label %bb_while_5_26_cond


        mov     x12, x15
        mov     x11, x13
        mov     x10, x14
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_26_cond
        //bb_while_5_26_cond:

bb_while_5_26_cond:

        //  %r214 = phi i32 [ %r190, %bb_while_5_20_bre ], [ %r222, %bb_while_9_28_bre ]

        //  %r215 = phi i32 [ %r193, %bb_while_5_20_bre ], [ %r223, %bb_while_9_28_bre ]

        //  %r216 = phi i32 [ %r191, %bb_while_5_20_bre ], [ %r224, %bb_while_9_28_bre ]

        //  %r217 = phi i32 [ %r219, %bb_while_5_20_bre ], [ %r225, %bb_while_9_28_bre ]

        //  %r218 = phi i32 [ %r221, %bb_while_5_20_bre ], [ %r227, %bb_while_9_28_bre ]

        //  %r141 = sub i32 0, 1

        mov     x14, #0
        mov     x13, #1
        sub     x13, x14, x13
        //  %r142 = icmp sgt i32 %r218, %r141

        cmp     x8, x13
        //  br i1 %r142, label %bb_while_5_26_whilestms, label %bb_while_5_26_bre


        mov     x16, x12
        str     x16, [sp,#8]
        mov     x15, x10
        mov     x14, x9
        mov     x13, x8
        b.gt     bb_while_5_26_whilestms
        b     bb_while_5_26_bre
        //bb_while_5_26_whilestms:

bb_while_5_26_whilestms:

        //  %r208 = phi i32 [ %r214, %bb_while_5_26_cond ]

        //  %r209 = phi i32 [ %r215, %bb_while_5_26_cond ]

        //  %r210 = phi i32 [ %r216, %bb_while_5_26_cond ]

        //  %r211 = phi i32 [ %r217, %bb_while_5_26_cond ]

        //  %r212 = phi i32 [ %r218, %bb_while_5_26_cond ]

        //  %r144 = sub i32 %r198, 2

        mov     x8, #2
        ldr     x16, [sp,#16]
        sub     x8, x16, x8
        //  %r213 = add i32 %r144, 0

        mov     x8, x8
        //  br label %bb_while_9_28_cond


        ldr     x16, [sp,#8]
        mov     x12, x16
        mov     x11, x8
        mov     x10, x15
        mov     x9, x14
        mov     x8, x13
        b     bb_while_9_28_cond
        //bb_while_9_28_cond:

bb_while_9_28_cond:

        //  %r245 = phi i32 [ %r208, %bb_while_5_26_whilestms ], [ %r243, %bb_while_9_28_whilestms ]

        //  %r246 = phi i32 [ %r213, %bb_while_5_26_whilestms ], [ %r244, %bb_while_9_28_whilestms ]

        //  %r247 = phi i32 [ %r210, %bb_while_5_26_whilestms ], [ %r242, %bb_while_9_28_whilestms ]

        //  %r248 = phi i32 [ %r211, %bb_while_5_26_whilestms ], [ %r241, %bb_while_9_28_whilestms ]

        //  %r249 = phi i32 [ %r212, %bb_while_5_26_whilestms ], [ %r240, %bb_while_9_28_whilestms ]

        //  %r146 = sub i32 0, 1

        mov     x14, #0
        mov     x13, #1
        sub     x13, x14, x13
        //  %r147 = icmp sgt i32 %r246, %r146

        cmp     x11, x13
        //  br i1 %r147, label %bb_while_9_28_whilestms, label %bb_while_9_28_bre


        mov     x16, x11
        str     x16, [sp]
        mov     x15, x8
        mov     x12, x12
        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b.gt     bb_while_9_28_whilestms
        b     bb_while_9_28_bre
        //bb_while_9_28_whilestms:

bb_while_9_28_whilestms:

        //  %r236 = phi i32 [ %r245, %bb_while_9_28_cond ]

        //  %r237 = phi i32 [ %r246, %bb_while_9_28_cond ]

        //  %r238 = phi i32 [ %r247, %bb_while_9_28_cond ]

        //  %r239 = phi i32 [ %r248, %bb_while_9_28_cond ]

        //  %r240 = phi i32 [ %r249, %bb_while_9_28_cond ]

        //  %r149 = mul i32 %r240, 3

        mov     x8, #3
        mul     x8, x15, x8
        //  %r151 = add i32 %r149, %r237

        ldr     x16, [sp]
        add     x8, x8, x16
        //  %r241 = add i32 %r151, 0

        mov     x14, x8
        //  %r153 = add i32 %r240, 1

        mov     x8, #1
        add     x9, x15, x8
        //  %r154 = mul i32 %r153, 3

        mov     x8, #3
        mul     x8, x9, x8
        //  %r156 = add i32 %r154, %r237

        ldr     x16, [sp]
        add     x8, x8, x16
        //  %r242 = add i32 %r156, 0

        mov     x13, x8
        //  %r158 = mul i32 %r240, 3

        mov     x8, #3
        mul     x8, x15, x8
        //  %r160 = add i32 %r158, %r237

        ldr     x16, [sp]
        add     x9, x8, x16
        //  %r161 = add i32 %r160, 1

        mov     x8, #1
        add     x8, x9, x8
        //  %r243 = add i32 %r161, 0

        mov     x10, x8
        //  %r163 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r241

        mov     x8, #8
        mul     x9, x14, x8
        mov     x0, #-72
        add     x8, x29, x0
        add     x12, x8, x9
        //  %r165 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r242

        mov     x8, #8
        mul     x9, x13, x8
        mov     x0, #-72
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r166 = load i32, i32* %r165

        ldr     x11, [x8]
        //  %r168 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 %r243

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-72
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r169 = load i32, i32* %r168

        ldr     x8, [x8]
        //  %r170 = add i32 %r166, %r169

        add     x8, x11, x8
        //  store i32 %r170, i32* %r163

        str     x8, [x12]
        //  %r172 = sub i32 %r237, 1

        mov     x8, #1
        ldr     x16, [sp]
        sub     x8, x16, x8
        //  %r244 = add i32 %r172, 0

        mov     x8, x8
        //  br label %bb_while_9_28_cond


        mov     x12, x10
        mov     x11, x8
        mov     x10, x13
        mov     x9, x14
        mov     x8, x15
        b     bb_while_9_28_cond
        //bb_while_9_28_bre:

bb_while_9_28_bre:

        //  %r222 = phi i32 [ %r245, %bb_while_9_28_cond ]

        //  %r223 = phi i32 [ %r246, %bb_while_9_28_cond ]

        //  %r224 = phi i32 [ %r247, %bb_while_9_28_cond ]

        //  %r225 = phi i32 [ %r248, %bb_while_9_28_cond ]

        //  %r226 = phi i32 [ %r249, %bb_while_9_28_cond ]

        //  %r174 = sub i32 %r226, 1

        mov     x13, #1
        sub     x8, x8, x13
        //  %r227 = add i32 %r174, 0

        mov     x8, x8
        //  br label %bb_while_5_26_cond


        mov     x12, x12
        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_26_cond
        //bb_while_5_26_bre:

bb_while_5_26_bre:

        //  %r199 = phi i32 [ %r214, %bb_while_5_26_cond ]

        //  %r200 = phi i32 [ %r215, %bb_while_5_26_cond ]

        //  %r201 = phi i32 [ %r216, %bb_while_5_26_cond ]

        //  %r202 = phi i32 [ %r217, %bb_while_5_26_cond ]

        //  %r203 = phi i32 [ %r218, %bb_while_5_26_cond ]

        //  %r175 = getelementptr [9 x i32 ], [9 x i32 ]* %r108, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-72
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r176 = load i32, i32* %r175

        ldr     x8, [x8]
        //  ret i32 %r176

        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 40)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #40
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
        //  %r256 = add i32 0, 0

        mov     x8, #0
        //  %r257 = add i32 0, 0

        mov     x8, #0
        //  %r258 = add i32 3, 0

        mov     x8, #3
        mov     x8, x8
        //  %r181 = call i32 @uniquePaths(i32 %r258, i32 %r258)

        mov     x0, x8
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     uniquePaths
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r259 = add i32 %r181, 0

        mov     x9, x8
        //  call void @_sysy_stoptime(i32 45)

        mov     x8, #45
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
        //  ret i32 %r259

        mov     x0, x9
        mov     sp, x29
        ret
