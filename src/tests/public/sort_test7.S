.section .data
.global    n
n:
        .quad   0
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global Merge
.global MergeSort
.global main
Merge:

        //117:x29,#-160

        //116:x29,#-80

        //bb1:

bb1:

        //  %r270 = add i32 0, 0

        sub     sp, sp, #72
        mov     x16, #160
        sub     sp, sp, x16
        mov     x16, x0
        str     x16, [sp,#64]
        mov     x11, x1
        mov     x10, x2
        mov     x9, x3
        mov     x8, #0
        //  %r271 = add i32 0, 0

        mov     x8, #0
        //  %r272 = add i32 %r101, 0

        mov     x15, x11
        //  %r273 = add i32 0, 0

        mov     x8, #0
        //  %r274 = add i32 %r103, 0

        mov     x14, x10
        //  %r275 = add i32 0, 0

        mov     x8, #0
        //  %r276 = add i32 %r105, 0

        mov     x9, x9
        //  %r277 = add i32 0, 0

        mov     x8, #0
        //  %r110 = sub i32 %r274, %r272

        sub     x10, x14, x15
        //  %r111 = add i32 %r110, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r278 = add i32 %r111, 0

        mov     x16, x8
        str     x16, [sp,#56]
        //  %r279 = add i32 0, 0

        mov     x8, #0
        //  %r115 = sub i32 %r276, %r274

        sub     x8, x9, x14
        //  %r280 = add i32 %r115, 0

        mov     x16, x8
        str     x16, [sp,#48]
        //  %r116 = alloca [ 10 x i32 ]

        //  %r117 = alloca [ 10 x i32 ]

        //  %r281 = add i32 0, 0

        mov     x8, #0
        //  %r282 = add i32 0, 0

        mov     x8, #0
        mov     x9, x8
        //  %r283 = add i32 0, 0

        mov     x8, #0
        //  %r284 = add i32 0, 0

        mov     x8, #0
        mov     x12, x8
        //  %r285 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_15_cond


        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_15_cond
        //bb_while_5_15_cond:

bb_while_5_15_cond:

        //  %r324 = phi i32 [ %r282, %bb1 ], [ %r339, %bb_while_5_15_whilestms ]

        //  %r325 = phi i32 [ %r285, %bb1 ], [ %r338, %bb_while_5_15_whilestms ]

        //  %r123 = icmp slt i32 %r324, %r278

        ldr     x16, [sp,#56]
        cmp     x9, x16
        //  br i1 %r123, label %bb_while_5_15_whilestms, label %bb_while_5_15_bre


        mov     x11, x9
        mov     x9, x9
        mov     x8, x8
        b.lt     bb_while_5_15_whilestms
        b     bb_while_5_15_bre
        //bb_while_5_15_whilestms:

bb_while_5_15_whilestms:

        //  %r336 = phi i32 [ %r324, %bb_while_5_15_cond ]

        //  %r337 = phi i32 [ %r325, %bb_while_5_15_cond ]

        //  %r126 = add i32 %r336, %r272

        add     x8, x11, x15
        //  %r338 = add i32 %r126, 0

        mov     x10, x8
        //  %r128 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r336

        mov     x8, #8
        mul     x9, x11, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r130 = getelementptr i32, i32* %r100, i32 %r338

        mov     x8, #8
        mul     x8, x10, x8
        ldr     x16, [sp,#64]
        add     x8, x16, x8
        //  %r131 = load i32, i32* %r130

        ldr     x8, [x8]
        //  store i32 %r131, i32* %r128

        str     x8, [x9]
        //  %r133 = add i32 %r336, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r339 = add i32 %r133, 0

        mov     x8, x8
        //  br label %bb_while_5_15_cond


        mov     x9, x8
        mov     x8, x10
        b     bb_while_5_15_cond
        //bb_while_5_15_bre:

bb_while_5_15_bre:

        //  %r310 = phi i32 [ %r324, %bb_while_5_15_cond ]

        //  %r311 = phi i32 [ %r325, %bb_while_5_15_cond ]

        //  br label %bb_while_5_20_cond


        mov     x10, x12
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_20_cond
        //bb_while_5_20_cond:

bb_while_5_20_cond:

        //  %r303 = phi i32 [ %r284, %bb_while_5_15_bre ], [ %r302, %bb_while_5_20_whilestms ]

        //  %r304 = phi i32 [ %r310, %bb_while_5_15_bre ], [ %r299, %bb_while_5_20_whilestms ]

        //  %r305 = phi i32 [ %r311, %bb_while_5_15_bre ], [ %r301, %bb_while_5_20_whilestms ]

        //  %r136 = icmp slt i32 %r303, %r280

        ldr     x16, [sp,#48]
        cmp     x10, x16
        //  br i1 %r136, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre


        mov     x13, x10
        mov     x12, x9
        mov     x8, x8
        b.lt     bb_while_5_20_whilestms
        b     bb_while_5_20_bre
        //bb_while_5_20_whilestms:

bb_while_5_20_whilestms:

        //  %r298 = phi i32 [ %r303, %bb_while_5_20_cond ]

        //  %r299 = phi i32 [ %r304, %bb_while_5_20_cond ]

        //  %r300 = phi i32 [ %r305, %bb_while_5_20_cond ]

        //  %r139 = add i32 %r298, %r274

        add     x9, x13, x14
        //  %r140 = add i32 %r139, 1

        mov     x8, #1
        add     x8, x9, x8
        //  %r301 = add i32 %r140, 0

        mov     x11, x8
        //  %r142 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r298

        mov     x8, #8
        mul     x9, x13, x8
        mov     x0, #-160
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r144 = getelementptr i32, i32* %r100, i32 %r301

        mov     x8, #8
        mul     x8, x11, x8
        ldr     x16, [sp,#64]
        add     x8, x16, x8
        //  %r145 = load i32, i32* %r144

        ldr     x8, [x8]
        //  store i32 %r145, i32* %r142

        str     x8, [x9]
        //  %r147 = add i32 %r298, 1

        mov     x8, #1
        add     x8, x13, x8
        //  %r302 = add i32 %r147, 0

        mov     x8, x8
        //  br label %bb_while_5_20_cond


        mov     x10, x8
        mov     x9, x12
        mov     x8, x11
        b     bb_while_5_20_cond
        //bb_while_5_20_bre:

bb_while_5_20_bre:

        //  %r312 = phi i32 [ %r303, %bb_while_5_20_cond ]

        //  %r313 = phi i32 [ %r304, %bb_while_5_20_cond ]

        //  %r314 = phi i32 [ %r305, %bb_while_5_20_cond ]

        //  %r315 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  %r316 = add i32 0, 0

        mov     x10, #0
        mov     x11, x10
        //  %r317 = add i32 %r272, 0

        mov     x10, x15
        //  br label %bb_while_5_29_cond


        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_29_cond
        //bb_while_5_29_cond:

bb_while_5_29_cond:

        //  %r294 = phi i32 [ %r316, %bb_while_5_20_bre ], [ %r360, %bb_if_9_31_end ]

        //  %r295 = phi i32 [ %r317, %bb_while_5_20_bre ], [ %r361, %bb_if_9_31_end ]

        //  %r296 = phi i32 [ %r315, %bb_while_5_20_bre ], [ %r362, %bb_if_9_31_end ]

        //  %r297 = phi i32 [ %r314, %bb_while_5_20_bre ], [ %r363, %bb_if_9_31_end ]

        //  %r152 = icmp ne i32 %r296, %r278

        ldr     x16, [sp,#56]
        cmp     x9, x16
        //  br i1 %r152, label %bb22_29_next, label %bb_while_5_29_bre


        mov     x15, x11
        mov     x14, x10
        mov     x13, x9
        mov     x12, x8
        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b.ne     bb22_29_next
        b     bb_while_5_29_bre
        //bb22_29_next:

bb22_29_next:

        //  %r290 = phi i32 [ %r294, %bb_while_5_29_cond ]

        //  %r291 = phi i32 [ %r295, %bb_while_5_29_cond ]

        //  %r292 = phi i32 [ %r296, %bb_while_5_29_cond ]

        //  %r293 = phi i32 [ %r297, %bb_while_5_29_cond ]

        //  %r155 = icmp ne i32 %r290, %r280

        ldr     x16, [sp,#48]
        cmp     x15, x16
        //  br i1 %r155, label %bb_while_5_29_whilestms, label %bb_while_5_29_bre


        mov     x16, x15
        str     x16, [sp,#40]
        mov     x16, x14
        str     x16, [sp,#32]
        mov     x16, x13
        str     x16, [sp,#24]
        mov     x16, x12
        str     x16, [sp,#16]
        mov     x11, x15
        mov     x10, x14
        mov     x9, x13
        mov     x8, x12
        b.ne     bb_while_5_29_whilestms
        b     bb_while_5_29_bre
        //bb_while_5_29_whilestms:

bb_while_5_29_whilestms:

        //  %r286 = phi i32 [ %r290, %bb22_29_next ]

        //  %r287 = phi i32 [ %r291, %bb22_29_next ]

        //  %r288 = phi i32 [ %r292, %bb22_29_next ]

        //  %r289 = phi i32 [ %r293, %bb22_29_next ]

        //  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r288

        mov     x8, #8
        ldr     x16, [sp,#24]
        mul     x9, x16, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r158 = load i32, i32* %r157

        ldr     x10, [x8]
        //  %r160 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r286

        mov     x8, #8
        ldr     x16, [sp,#40]
        mul     x9, x16, x8
        mov     x0, #-160
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r161 = load i32, i32* %r160

        ldr     x9, [x8]
        //  %r162 = add i32 %r161, 1

        mov     x8, #1
        add     x8, x9, x8
        //  %r163 = icmp slt i32 %r158, %r162

        cmp     x10, x8
        //  br i1 %r163, label %bb_if_9_31_true, label %bb_if_9_31_false


        ldr     x16, [sp,#40]
        mov     x13, x16
        ldr     x16, [sp,#32]
        mov     x10, x16
        ldr     x16, [sp,#24]
        mov     x11, x16
        ldr     x16, [sp,#16]
        mov     x12, x16
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#8]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp]
        ldr     x16, [sp,#24]
        mov     x15, x16
        ldr     x16, [sp,#16]
        mov     x14, x16
        b.lt     bb_if_9_31_true
        b     bb_if_9_31_false
        //bb_if_9_31_true:

bb_if_9_31_true:

        //  %r340 = phi i32 [ %r286, %bb_while_5_29_whilestms ]

        //  %r341 = phi i32 [ %r287, %bb_while_5_29_whilestms ]

        //  %r342 = phi i32 [ %r288, %bb_while_5_29_whilestms ]

        //  %r343 = phi i32 [ %r289, %bb_while_5_29_whilestms ]

        //  %r165 = getelementptr i32, i32* %r100, i32 %r341

        mov     x8, #8
        mul     x8, x10, x8
        ldr     x16, [sp,#64]
        add     x14, x16, x8
        //  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r342

        mov     x8, #8
        mul     x9, x11, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r168 = load i32, i32* %r167

        ldr     x8, [x8]
        //  store i32 %r168, i32* %r165

        str     x8, [x14]
        //  %r170 = add i32 %r341, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r344 = add i32 %r170, 0

        mov     x9, x8
        //  %r172 = add i32 %r342, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r345 = add i32 %r172, 0

        mov     x8, x8
        //  br label %bb_if_9_31_end


        mov     x11, x13
        mov     x10, x9
        mov     x9, x8
        mov     x8, x12
        b     bb_if_9_31_end
        //bb_if_9_31_false:

bb_if_9_31_false:

        //  %r318 = phi i32 [ %r286, %bb_while_5_29_whilestms ]

        //  %r319 = phi i32 [ %r287, %bb_while_5_29_whilestms ]

        //  %r320 = phi i32 [ %r288, %bb_while_5_29_whilestms ]

        //  %r321 = phi i32 [ %r289, %bb_while_5_29_whilestms ]

        //  %r174 = getelementptr i32, i32* %r100, i32 %r319

        mov     x8, #8
        ldr     x16, [sp]
        mul     x8, x16, x8
        ldr     x16, [sp,#64]
        add     x10, x16, x8
        //  %r176 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r318

        mov     x8, #8
        ldr     x16, [sp,#8]
        mul     x9, x16, x8
        mov     x0, #-160
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r177 = load i32, i32* %r176

        ldr     x8, [x8]
        //  store i32 %r177, i32* %r174

        str     x8, [x10]
        //  %r179 = add i32 %r319, 1

        mov     x8, #1
        ldr     x16, [sp]
        add     x8, x16, x8
        //  %r322 = add i32 %r179, 0

        mov     x8, x8
        //  %r181 = add i32 %r318, 1

        mov     x9, #1
        ldr     x16, [sp,#8]
        add     x9, x16, x9
        //  %r323 = add i32 %r181, 0

        mov     x9, x9
        //  br label %bb_if_9_31_end


        mov     x11, x9
        mov     x10, x8
        mov     x9, x15
        mov     x8, x14
        b     bb_if_9_31_end
        //bb_if_9_31_end:

bb_if_9_31_end:

        //  %r360 = phi i32 [ %r340, %bb_if_9_31_true ], [ %r323, %bb_if_9_31_false ]

        //  %r361 = phi i32 [ %r344, %bb_if_9_31_true ], [ %r322, %bb_if_9_31_false ]

        //  %r362 = phi i32 [ %r345, %bb_if_9_31_true ], [ %r320, %bb_if_9_31_false ]

        //  %r363 = phi i32 [ %r343, %bb_if_9_31_true ], [ %r321, %bb_if_9_31_false ]

        //  br label %bb_while_5_29_cond


        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_29_cond
        //bb_while_5_29_bre:

bb_while_5_29_bre:

        //  %r356 = phi i32 [ %r294, %bb_while_5_29_cond ], [ %r290, %bb22_29_next ]

        //  %r357 = phi i32 [ %r295, %bb_while_5_29_cond ], [ %r291, %bb22_29_next ]

        //  %r358 = phi i32 [ %r296, %bb_while_5_29_cond ], [ %r292, %bb22_29_next ]

        //  %r359 = phi i32 [ %r297, %bb_while_5_29_cond ], [ %r293, %bb22_29_next ]

        //  br label %bb_while_5_42_cond


        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_42_cond
        //bb_while_5_42_cond:

bb_while_5_42_cond:

        //  %r326 = phi i32 [ %r356, %bb_while_5_29_bre ], [ %r330, %bb_while_5_42_whilestms ]

        //  %r327 = phi i32 [ %r357, %bb_while_5_29_bre ], [ %r334, %bb_while_5_42_whilestms ]

        //  %r328 = phi i32 [ %r358, %bb_while_5_29_bre ], [ %r335, %bb_while_5_42_whilestms ]

        //  %r329 = phi i32 [ %r359, %bb_while_5_29_bre ], [ %r333, %bb_while_5_42_whilestms ]

        //  %r184 = icmp slt i32 %r328, %r278

        ldr     x16, [sp,#56]
        cmp     x9, x16
        //  br i1 %r184, label %bb_while_5_42_whilestms, label %bb_while_5_42_bre


        mov     x15, x11
        mov     x14, x10
        mov     x13, x9
        mov     x12, x8
        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b.lt     bb_while_5_42_whilestms
        b     bb_while_5_42_bre
        //bb_while_5_42_whilestms:

bb_while_5_42_whilestms:

        //  %r330 = phi i32 [ %r326, %bb_while_5_42_cond ]

        //  %r331 = phi i32 [ %r327, %bb_while_5_42_cond ]

        //  %r332 = phi i32 [ %r328, %bb_while_5_42_cond ]

        //  %r333 = phi i32 [ %r329, %bb_while_5_42_cond ]

        //  %r186 = getelementptr i32, i32* %r100, i32 %r331

        mov     x8, #8
        mul     x8, x14, x8
        ldr     x16, [sp,#64]
        add     x10, x16, x8
        //  %r188 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r332

        mov     x8, #8
        mul     x9, x13, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r189 = load i32, i32* %r188

        ldr     x8, [x8]
        //  store i32 %r189, i32* %r186

        str     x8, [x10]
        //  %r191 = add i32 %r331, 1

        mov     x8, #1
        add     x8, x14, x8
        //  %r334 = add i32 %r191, 0

        mov     x9, x8
        //  %r193 = add i32 %r332, 1

        mov     x8, #1
        add     x8, x13, x8
        //  %r335 = add i32 %r193, 0

        mov     x8, x8
        //  br label %bb_while_5_42_cond


        mov     x11, x15
        mov     x10, x9
        mov     x9, x8
        mov     x8, x12
        b     bb_while_5_42_cond
        //bb_while_5_42_bre:

bb_while_5_42_bre:

        //  %r364 = phi i32 [ %r326, %bb_while_5_42_cond ]

        //  %r365 = phi i32 [ %r327, %bb_while_5_42_cond ]

        //  %r366 = phi i32 [ %r328, %bb_while_5_42_cond ]

        //  %r367 = phi i32 [ %r329, %bb_while_5_42_cond ]

        //  br label %bb_while_5_47_cond


        mov     x15, x11
        mov     x13, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_47_cond
        //bb_while_5_47_cond:

bb_while_5_47_cond:

        //  %r346 = phi i32 [ %r364, %bb_while_5_42_bre ], [ %r355, %bb_while_5_47_whilestms ]

        //  %r347 = phi i32 [ %r365, %bb_while_5_42_bre ], [ %r354, %bb_while_5_47_whilestms ]

        //  %r348 = phi i32 [ %r366, %bb_while_5_42_bre ], [ %r352, %bb_while_5_47_whilestms ]

        //  %r349 = phi i32 [ %r367, %bb_while_5_42_bre ], [ %r353, %bb_while_5_47_whilestms ]

        //  %r196 = icmp slt i32 %r346, %r280

        ldr     x16, [sp,#48]
        cmp     x15, x16
        //  br i1 %r196, label %bb_while_5_47_whilestms, label %bb_while_5_47_bre


        mov     x14, x15
        mov     x12, x13
        mov     x11, x9
        mov     x10, x8
        b.lt     bb_while_5_47_whilestms
        b     bb_while_5_47_bre
        //bb_while_5_47_whilestms:

bb_while_5_47_whilestms:

        //  %r350 = phi i32 [ %r346, %bb_while_5_47_cond ]

        //  %r351 = phi i32 [ %r347, %bb_while_5_47_cond ]

        //  %r352 = phi i32 [ %r348, %bb_while_5_47_cond ]

        //  %r353 = phi i32 [ %r349, %bb_while_5_47_cond ]

        //  %r198 = getelementptr i32, i32* %r100, i32 %r351

        mov     x8, #8
        mul     x8, x12, x8
        ldr     x16, [sp,#64]
        add     x13, x16, x8
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r350

        mov     x8, #8
        mul     x9, x14, x8
        mov     x0, #-160
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r201 = load i32, i32* %r200

        ldr     x8, [x8]
        //  store i32 %r201, i32* %r198

        str     x8, [x13]
        //  %r203 = add i32 %r351, 1

        mov     x8, #1
        add     x8, x12, x8
        //  %r354 = add i32 %r203, 0

        mov     x8, x8
        //  %r205 = add i32 %r350, 1

        mov     x9, #1
        add     x9, x14, x9
        //  %r355 = add i32 %r205, 0

        mov     x9, x9
        //  br label %bb_while_5_47_cond


        mov     x15, x9
        mov     x13, x8
        mov     x9, x11
        mov     x8, x10
        b     bb_while_5_47_cond
        //bb_while_5_47_bre:

bb_while_5_47_bre:

        //  %r306 = phi i32 [ %r346, %bb_while_5_47_cond ]

        //  %r307 = phi i32 [ %r347, %bb_while_5_47_cond ]

        //  %r308 = phi i32 [ %r348, %bb_while_5_47_cond ]

        //  %r309 = phi i32 [ %r349, %bb_while_5_47_cond ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
MergeSort:

        //bb2:

bb2:

        //  %r372 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x12, x1
        mov     x10, x2
        mov     x8, #0
        mov     x9, x8
        //  %r373 = add i32 0, 0

        mov     x8, #0
        mov     x13, x8
        //  %r374 = add i32 0, 0

        mov     x8, #0
        //  %r375 = add i32 %r207, 0

        mov     x8, x12
        //  %r376 = add i32 0, 0

        mov     x12, #0
        //  %r377 = add i32 %r209, 0

        mov     x12, x10
        //  %r213 = icmp slt i32 %r375, %r377

        cmp     x8, x12
        //  br i1 %r213, label %bb_if_5_57_true, label %bb_if_5_57_false


        b.lt     bb_if_5_57_true
        b     bb_if_5_57_false
        //bb_if_5_57_true:

bb_if_5_57_true:

        //  %r217 = add i32 %r375, %r377

        add     x10, x8, x12
        //  %r218 = sdiv i32 %r217, 2

        mov     x9, #2
        sdiv     x9, x10, x9
        //  %r380 = add i32 %r218, 0

        mov     x10, x9
        //  %r222 = call i32 @MergeSort(i32* %r206, i32 %r375, i32 %r380)

        mov     x0, x11
        mov     x1, x8
        mov     x2, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r381 = add i32 %r222, 0

        //  %r224 = add i32 %r380, 1

        mov     x9, #1
        add     x9, x10, x9
        //  %r382 = add i32 %r224, 0

        mov     x9, x9
        //  %r227 = call i32 @MergeSort(i32* %r206, i32 %r382, i32 %r377)

        mov     x0, x11
        mov     x1, x9
        mov     x2, x12
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r383 = add i32 %r227, 0

        //  %r231 = call i32 @Merge(i32* %r206, i32 %r375, i32 %r380, i32 %r377)

        mov     x0, x11
        mov     x1, x8
        mov     x2, x10
        mov     x3, x12
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     Merge
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r384 = add i32 %r231, 0

        mov     x8, x8
        //  br label %bb_if_5_57_end


        b     bb_if_5_57_end
        //bb_if_5_57_false:

bb_if_5_57_false:

        //  br label %bb_if_5_57_end


        b     bb_if_5_57_end
        //bb_if_5_57_end:

bb_if_5_57_end:

        //  %r378 = phi i32 [ %r384, %bb_if_5_57_true ], [ %r372, %bb_if_5_57_false ]

        //  %r379 = phi i32 [ %r380, %bb_if_5_57_true ], [ %r373, %bb_if_5_57_false ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
main:

        //232:x29,#-80

        //bb3:

bb3:

        //  call void @_sysy_starttime(i32 71)

        mov     x16, #80
        sub     sp, sp, x16
        mov     x8, #71
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
        //  store i32 10, i32* @n

        mov     x9, #10
        adrp     x8, n
        add     x8, x8, #:lo12:n
        str     x9, [x8]
        //  %r232 = alloca [ 10 x i32 ]

        //  %r233 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 0

        mov     x9, #8
        mov     x8, #0
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 4, i32* %r233

        mov     x8, #4
        str     x8, [x9]
        //  %r234 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 1

        mov     x9, #8
        mov     x8, #1
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 3, i32* %r234

        mov     x8, #3
        str     x8, [x9]
        //  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 2

        mov     x9, #8
        mov     x8, #2
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 9, i32* %r235

        mov     x8, #9
        str     x8, [x9]
        //  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 3

        mov     x9, #8
        mov     x8, #3
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 2, i32* %r236

        mov     x8, #2
        str     x8, [x9]
        //  %r237 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 4

        mov     x9, #8
        mov     x8, #4
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 0, i32* %r237

        mov     x8, #0
        str     x8, [x9]
        //  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 5

        mov     x9, #8
        mov     x8, #5
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 1, i32* %r238

        mov     x8, #1
        str     x8, [x9]
        //  %r239 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 6

        mov     x9, #8
        mov     x8, #6
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 6, i32* %r239

        mov     x8, #6
        str     x8, [x9]
        //  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 7

        mov     x9, #8
        mov     x8, #7
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 5, i32* %r240

        mov     x8, #5
        str     x8, [x9]
        //  %r241 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 8

        mov     x9, #8
        mov     x8, #8
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 7, i32* %r241

        mov     x8, #7
        str     x8, [x9]
        //  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 9

        mov     x9, #8
        mov     x8, #9
        mul     x9, x8, x9
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  store i32 8, i32* %r242

        mov     x8, #8
        str     x8, [x9]
        //  %r387 = add i32 0, 0

        mov     x8, #0
        //  %r388 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r389 = add i32 0, 0

        mov     x9, #0
        //  %r245 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x10, [x9]
        //  %r246 = sub i32 %r245, 1

        mov     x9, #1
        sub     x9, x10, x9
        //  %r390 = add i32 %r246, 0

        mov     x11, x9
        //  %r247 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x9, x9, x10
        //  %r250 = call i32 @MergeSort(i32* %r247, i32 %r388, i32 %r390)

        mov     x0, x9
        mov     x1, x8
        mov     x2, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     MergeSort
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r391 = add i32 %r250, 0

        mov     x8, x8
        //  br label %bb_while_5_81_cond


        mov     x10, x8
        mov     x9, x11
        b     bb_while_5_81_cond
        //bb_while_5_81_cond:

bb_while_5_81_cond:

        //  %r399 = phi i32 [ %r391, %bb3 ], [ %r398, %bb_while_5_81_whilestms ]

        //  %r400 = phi i32 [ %r390, %bb3 ], [ %r397, %bb_while_5_81_whilestms ]

        //  %r252 = load i32, i32* @n

        adrp     x8, n
        add     x8, x8, #:lo12:n
        ldr     x8, [x8]
        //  %r253 = icmp slt i32 %r399, %r252

        cmp     x10, x8
        //  br i1 %r253, label %bb_while_5_81_whilestms, label %bb_while_5_81_bre


        mov     x8, x10
        b.lt     bb_while_5_81_whilestms
        b     bb_while_5_81_bre
        //bb_while_5_81_whilestms:

bb_while_5_81_whilestms:

        //  %r394 = phi i32 [ %r399, %bb_while_5_81_cond ]

        //  %r395 = phi i32 [ %r400, %bb_while_5_81_cond ]

        //  %r255 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 %r394

        mov     x9, #8
        mul     x10, x8, x9
        mov     x0, #-80
        add     x9, x29, x0
        add     x9, x9, x10
        //  %r256 = load i32, i32* %r255

        ldr     x9, [x9]
        //  %r396 = add i32 %r256, 0

        mov     x9, x9
        //  call void @putint(i32 %r396)

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
        //  %r397 = add i32 10, 0

        mov     x9, #10
        mov     x11, x9
        //  call void @putch(i32 %r397)

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
        //  %r260 = add i32 %r394, 1

        mov     x9, #1
        add     x8, x8, x9
        //  %r398 = add i32 %r260, 0

        mov     x8, x8
        //  br label %bb_while_5_81_cond


        mov     x10, x8
        mov     x9, x11
        b     bb_while_5_81_cond
        //bb_while_5_81_bre:

bb_while_5_81_bre:

        //  %r392 = phi i32 [ %r399, %bb_while_5_81_cond ]

        //  %r393 = phi i32 [ %r400, %bb_while_5_81_cond ]

        //  call void @_sysy_stoptime(i32 97)

        mov     x8, #97
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
