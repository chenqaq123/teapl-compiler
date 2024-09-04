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
.global swap
.global heap_ajust
.global heap_sort
.global main
swap:

        //bb1:

bb1:

        //  %r223 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x10, x1
        mov     x9, x2
        mov     x8, #0
        //  %r224 = add i32 %r101, 0

        mov     x10, x10
        //  %r225 = add i32 0, 0

        mov     x8, #0
        //  %r226 = add i32 %r103, 0

        mov     x9, x9
        //  %r227 = add i32 0, 0

        mov     x8, #0
        //  %r107 = getelementptr i32, i32* %r100, i32 %r224

        mov     x8, #8
        mul     x8, x10, x8
        add     x8, x11, x8
        //  %r108 = load i32, i32* %r107

        ldr     x8, [x8]
        //  %r228 = add i32 %r108, 0

        mov     x8, x8
        //  %r110 = getelementptr i32, i32* %r100, i32 %r224

        mov     x12, #8
        mul     x10, x10, x12
        add     x12, x11, x10
        //  %r112 = getelementptr i32, i32* %r100, i32 %r226

        mov     x10, #8
        mul     x10, x9, x10
        add     x10, x11, x10
        //  %r113 = load i32, i32* %r112

        ldr     x10, [x10]
        //  store i32 %r113, i32* %r110

        str     x10, [x12]
        //  %r115 = getelementptr i32, i32* %r100, i32 %r226

        mov     x10, #8
        mul     x9, x9, x10
        add     x9, x11, x9
        //  store i32 %r228, i32* %r115

        str     x8, [x9]
        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
heap_ajust:

        //bb2:

bb2:

        //  %r234 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        sub     sp, sp, #24
        mov     x16, x0
        str     x16, [sp,#16]
        mov     x9, x1
        mov     x11, x2
        mov     x8, #0
        mov     x10, x8
        //  %r235 = add i32 0, 0

        mov     x8, #0
        //  %r236 = add i32 %r118, 0

        mov     x9, x9
        //  %r237 = add i32 0, 0

        mov     x8, #0
        //  %r238 = add i32 %r120, 0

        mov     x16, x11
        str     x16, [sp,#8]
        //  %r239 = add i32 0, 0

        mov     x8, #0
        //  %r240 = add i32 %r236, 0

        mov     x8, x9
        //  %r241 = add i32 0, 0

        mov     x9, #0
        //  %r126 = mul i32 %r240, 2

        mov     x9, #2
        mul     x11, x8, x9
        //  %r127 = add i32 %r126, 1

        mov     x9, #1
        add     x9, x11, x9
        //  %r242 = add i32 %r127, 0

        mov     x9, x9
        //  br label %bb_while_5_14_cond


        mov     x9, x9
        mov     x8, x8
        mov     x11, x10
        b     bb_while_5_14_cond
        //bb_while_5_14_cond:

bb_while_5_14_cond:

        //  %r272 = phi i32 [ %r242, %bb2 ], [ %r243, %bb_if_9_18_end ]

        //  %r273 = phi i32 [ %r240, %bb2 ], [ %r244, %bb_if_9_18_end ]

        //  %r274 = phi i32 [ %r234, %bb2 ], [ %r245, %bb_if_9_18_end ]

        //  %r130 = add i32 %r238, 1

        mov     x10, #1
        ldr     x16, [sp,#8]
        add     x10, x16, x10
        //  %r131 = icmp slt i32 %r272, %r130

        cmp     x9, x10
        //  br i1 %r131, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre


        mov     x13, x9
        mov     x12, x8
        b.lt     bb_while_5_14_whilestms
        b     bb_while_5_14_bre
        //bb_while_5_14_whilestms:

bb_while_5_14_whilestms:

        //  %r268 = phi i32 [ %r272, %bb_while_5_14_cond ]

        //  %r269 = phi i32 [ %r273, %bb_while_5_14_cond ]

        //  %r270 = phi i32 [ %r274, %bb_while_5_14_cond ]

        //  %r134 = add i32 %r268, 1

        mov     x8, #1
        add     x8, x13, x8
        //  %r271 = add i32 %r134, 0

        mov     x11, x8
        //  %r137 = icmp slt i32 %r268, %r238

        ldr     x16, [sp,#8]
        cmp     x13, x16
        //  br i1 %r137, label %bb26_16_next, label %bb_if_9_16_false


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x16, x13
        str     x16, [sp]
        mov     x15, x12
        mov     x14, x11
        b.lt     bb26_16_next
        b     bb_if_9_16_false
        //bb26_16_next:

bb26_16_next:

        //  %r259 = phi i32 [ %r268, %bb_while_5_14_whilestms ]

        //  %r260 = phi i32 [ %r269, %bb_while_5_14_whilestms ]

        //  %r261 = phi i32 [ %r271, %bb_while_5_14_whilestms ]

        //  %r139 = getelementptr i32, i32* %r117, i32 %r259

        mov     x11, #8
        mul     x11, x10, x11
        ldr     x16, [sp,#16]
        add     x11, x16, x11
        //  %r140 = load i32, i32* %r139

        ldr     x11, [x11]
        //  %r142 = getelementptr i32, i32* %r117, i32 %r261

        mov     x12, #8
        mul     x12, x8, x12
        ldr     x16, [sp,#16]
        add     x12, x16, x12
        //  %r143 = load i32, i32* %r142

        ldr     x12, [x12]
        //  %r144 = icmp slt i32 %r140, %r143

        cmp     x11, x12
        //  br i1 %r144, label %bb_if_9_16_true, label %bb_if_9_16_false


        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        mov     x16, x10
        str     x16, [sp]
        mov     x15, x9
        mov     x14, x8
        b.lt     bb_if_9_16_true
        b     bb_if_9_16_false
        //bb_if_9_16_true:

bb_if_9_16_true:

        //  %r255 = phi i32 [ %r259, %bb26_16_next ]

        //  %r256 = phi i32 [ %r260, %bb26_16_next ]

        //  %r257 = phi i32 [ %r261, %bb26_16_next ]

        //  %r146 = add i32 %r255, 1

        mov     x8, #1
        add     x8, x13, x8
        //  %r258 = add i32 %r146, 0

        mov     x8, x8
        //  br label %bb_if_9_16_end


        mov     x8, x8
        mov     x10, x12
        mov     x9, x11
        b     bb_if_9_16_end
        //bb_if_9_16_false:

bb_if_9_16_false:

        //  %r252 = phi i32 [ %r268, %bb_while_5_14_whilestms ], [ %r259, %bb26_16_next ]

        //  %r253 = phi i32 [ %r269, %bb_while_5_14_whilestms ], [ %r260, %bb26_16_next ]

        //  %r254 = phi i32 [ %r271, %bb_while_5_14_whilestms ], [ %r261, %bb26_16_next ]

        //  br label %bb_if_9_16_end


        ldr     x16, [sp]
        mov     x8, x16
        mov     x10, x15
        mov     x9, x14
        b     bb_if_9_16_end
        //bb_if_9_16_end:

bb_if_9_16_end:

        //  %r249 = phi i32 [ %r258, %bb_if_9_16_true ], [ %r252, %bb_if_9_16_false ]

        //  %r250 = phi i32 [ %r256, %bb_if_9_16_true ], [ %r253, %bb_if_9_16_false ]

        //  %r251 = phi i32 [ %r257, %bb_if_9_16_true ], [ %r254, %bb_if_9_16_false ]

        //  %r148 = getelementptr i32, i32* %r117, i32 %r250

        mov     x11, #8
        mul     x11, x10, x11
        ldr     x16, [sp,#16]
        add     x11, x16, x11
        //  %r149 = load i32, i32* %r148

        ldr     x11, [x11]
        //  %r151 = getelementptr i32, i32* %r117, i32 %r249

        mov     x12, #8
        mul     x12, x8, x12
        ldr     x16, [sp,#16]
        add     x12, x16, x12
        //  %r152 = load i32, i32* %r151

        ldr     x12, [x12]
        //  %r153 = icmp sgt i32 %r149, %r152

        cmp     x11, x12
        //  br i1 %r153, label %bb_if_9_18_true, label %bb_if_9_18_false


        mov     x11, x8
        mov     x8, x10
        mov     x10, x9
        b.gt     bb_if_9_18_true
        b     bb_if_9_18_false
        //bb_if_9_18_true:

bb_if_9_18_true:

        //  %r246 = phi i32 [ %r249, %bb_if_9_16_end ]

        //  %r247 = phi i32 [ %r250, %bb_if_9_16_end ]

        //  %r248 = phi i32 [ %r251, %bb_if_9_16_end ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_9_18_false:

bb_if_9_18_false:

        //  %r262 = phi i32 [ %r249, %bb_if_9_16_end ]

        //  %r263 = phi i32 [ %r250, %bb_if_9_16_end ]

        //  %r264 = phi i32 [ %r251, %bb_if_9_16_end ]

        //  %r156 = call i32 @swap(i32* %r117, i32 %r263, i32 %r262)

        ldr     x16, [sp,#16]
        mov     x0, x16
        mov     x1, x8
        mov     x2, x11
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r265 = add i32 %r156, 0

        //  %r266 = add i32 %r262, 0

        mov     x9, x11
        //  %r159 = mul i32 %r266, 2

        mov     x8, #2
        mul     x11, x9, x8
        //  %r160 = add i32 %r159, 1

        mov     x8, #1
        add     x8, x11, x8
        //  %r267 = add i32 %r160, 0

        mov     x8, x8
        //  br label %bb_if_9_18_end


        mov     x11, x8
        mov     x8, x9
        mov     x10, x10
        b     bb_if_9_18_end
        //bb_if_9_18_end:

bb_if_9_18_end:

        //  %r243 = phi i32 [ %r267, %bb_if_9_18_false ]

        //  %r244 = phi i32 [ %r266, %bb_if_9_18_false ]

        //  %r245 = phi i32 [ %r264, %bb_if_9_18_false ]

        //  br label %bb_while_5_14_cond


        mov     x9, x11
        mov     x8, x8
        mov     x11, x10
        b     bb_while_5_14_cond
        //bb_while_5_14_bre:

bb_while_5_14_bre:

        //  %r275 = phi i32 [ %r272, %bb_while_5_14_cond ]

        //  %r276 = phi i32 [ %r273, %bb_while_5_14_cond ]

        //  %r277 = phi i32 [ %r274, %bb_while_5_14_cond ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
heap_sort:

        //bb3:

bb3:

        //  %r282 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x11, x0
        mov     x9, x1
        mov     x8, #0
        mov     x10, x8
        //  %r283 = add i32 0, 0

        mov     x8, #0
        //  %r284 = add i32 %r162, 0

        mov     x9, x9
        //  %r285 = add i32 0, 0

        mov     x8, #0
        //  %r286 = add i32 0, 0

        mov     x8, #0
        mov     x12, x8
        //  %r167 = sdiv i32 %r284, 2

        mov     x8, #2
        sdiv     x13, x9, x8
        //  %r168 = sub i32 %r167, 1

        mov     x8, #1
        sub     x8, x13, x8
        //  %r287 = add i32 %r168, 0

        mov     x8, x8
        //  br label %bb_while_5_32_cond


        mov     x14, x8
        mov     x13, x12
        b     bb_while_5_32_cond
        //bb_while_5_32_cond:

bb_while_5_32_cond:

        //  %r307 = phi i32 [ %r287, %bb3 ], [ %r306, %bb_while_5_32_whilestms ]

        //  %r308 = phi i32 [ %r286, %bb3 ], [ %r305, %bb_while_5_32_whilestms ]

        //  %r170 = sub i32 0, 1

        mov     x12, #0
        mov     x8, #1
        sub     x8, x12, x8
        //  %r171 = icmp sgt i32 %r307, %r170

        cmp     x14, x8
        //  br i1 %r171, label %bb_while_5_32_whilestms, label %bb_while_5_32_bre


        mov     x8, x14
        mov     x12, x13
        b.gt     bb_while_5_32_whilestms
        b     bb_while_5_32_bre
        //bb_while_5_32_whilestms:

bb_while_5_32_whilestms:

        //  %r302 = phi i32 [ %r307, %bb_while_5_32_cond ]

        //  %r303 = phi i32 [ %r308, %bb_while_5_32_cond ]

        //  %r173 = sub i32 %r284, 1

        mov     x12, #1
        sub     x12, x9, x12
        //  %r304 = add i32 %r173, 0

        mov     x12, x12
        //  %r176 = call i32 @heap_ajust(i32* %r161, i32 %r302, i32 %r304)

        mov     x0, x11
        mov     x1, x8
        mov     x2, x12
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x12, x0
        //  %r305 = add i32 %r176, 0

        mov     x13, x12
        //  %r178 = sub i32 %r302, 1

        mov     x12, #1
        sub     x8, x8, x12
        //  %r306 = add i32 %r178, 0

        mov     x8, x8
        //  br label %bb_while_5_32_cond


        mov     x14, x8
        mov     x13, x13
        b     bb_while_5_32_cond
        //bb_while_5_32_bre:

bb_while_5_32_bre:

        //  %r299 = phi i32 [ %r307, %bb_while_5_32_cond ]

        //  %r300 = phi i32 [ %r308, %bb_while_5_32_cond ]

        //  %r180 = sub i32 %r284, 1

        mov     x8, #1
        sub     x8, x9, x8
        //  %r301 = add i32 %r180, 0

        mov     x8, x8
        //  br label %bb_while_5_38_cond


        mov     x13, x8
        mov     x12, x12
        mov     x10, x10
        b     bb_while_5_38_cond
        //bb_while_5_38_cond:

bb_while_5_38_cond:

        //  %r309 = phi i32 [ %r301, %bb_while_5_32_bre ], [ %r298, %bb_while_5_38_whilestms ]

        //  %r310 = phi i32 [ %r300, %bb_while_5_32_bre ], [ %r297, %bb_while_5_38_whilestms ]

        //  %r311 = phi i32 [ %r282, %bb_while_5_32_bre ], [ %r294, %bb_while_5_38_whilestms ]

        //  %r182 = icmp sgt i32 %r309, 0

        mov     x8, #0
        cmp     x13, x8
        //  br i1 %r182, label %bb_while_5_38_whilestms, label %bb_while_5_38_bre


        mov     x9, x13
        b.gt     bb_while_5_38_whilestms
        b     bb_while_5_38_bre
        //bb_while_5_38_whilestms:

bb_while_5_38_whilestms:

        //  %r291 = phi i32 [ %r309, %bb_while_5_38_cond ]

        //  %r292 = phi i32 [ %r310, %bb_while_5_38_cond ]

        //  %r293 = phi i32 [ %r311, %bb_while_5_38_cond ]

        //  %r294 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r186 = call i32 @swap(i32* %r161, i32 %r294, i32 %r291)

        mov     x0, x11
        mov     x1, x8
        mov     x2, x9
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     swap
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x10, x0
        //  %r295 = add i32 %r186, 0

        //  %r188 = sub i32 %r291, 1

        mov     x10, #1
        sub     x10, x9, x10
        //  %r296 = add i32 %r188, 0

        mov     x10, x10
        //  %r191 = call i32 @heap_ajust(i32* %r161, i32 %r294, i32 %r296)

        mov     x0, x11
        mov     x1, x8
        mov     x2, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_ajust
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x10, x0
        //  %r297 = add i32 %r191, 0

        mov     x12, x10
        //  %r193 = sub i32 %r291, 1

        mov     x10, #1
        sub     x9, x9, x10
        //  %r298 = add i32 %r193, 0

        mov     x9, x9
        //  br label %bb_while_5_38_cond


        mov     x13, x9
        mov     x12, x12
        mov     x10, x8
        b     bb_while_5_38_cond
        //bb_while_5_38_bre:

bb_while_5_38_bre:

        //  %r288 = phi i32 [ %r309, %bb_while_5_38_cond ]

        //  %r289 = phi i32 [ %r310, %bb_while_5_38_cond ]

        //  %r290 = phi i32 [ %r311, %bb_while_5_38_cond ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
main:

        //194:x29,#-80

        //bb4:

bb4:

        //  %r314 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, x16
        mov     x8, #0
        mov     x8, x8
        //  call void @_sysy_starttime(i32 50)

        mov     x9, #50
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
        //  store i32 10, i32* @n

        mov     x10, #10
        adrp     x9, n
        add     x9, x9, #:lo12:n
        str     x10, [x9]
        //  %r194 = alloca [ 10 x i32 ]

        //  %r195 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 4, i32* %r195

        mov     x9, #4
        str     x9, [x10]
        //  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 1

        mov     x10, #8
        mov     x9, #1
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 3, i32* %r196

        mov     x9, #3
        str     x9, [x10]
        //  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 2

        mov     x10, #8
        mov     x9, #2
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 9, i32* %r197

        mov     x9, #9
        str     x9, [x10]
        //  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 3

        mov     x10, #8
        mov     x9, #3
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 2, i32* %r198

        mov     x9, #2
        str     x9, [x10]
        //  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 4

        mov     x10, #8
        mov     x9, #4
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 0, i32* %r199

        mov     x9, #0
        str     x9, [x10]
        //  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 5

        mov     x10, #8
        mov     x9, #5
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 1, i32* %r200

        mov     x9, #1
        str     x9, [x10]
        //  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 6

        mov     x10, #8
        mov     x9, #6
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 6, i32* %r201

        mov     x9, #6
        str     x9, [x10]
        //  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 7

        mov     x10, #8
        mov     x9, #7
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 5, i32* %r202

        mov     x9, #5
        str     x9, [x10]
        //  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 8

        mov     x10, #8
        mov     x9, #8
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 7, i32* %r203

        mov     x9, #7
        str     x9, [x10]
        //  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 9

        mov     x10, #8
        mov     x9, #9
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  store i32 8, i32* %r204

        mov     x9, #8
        str     x9, [x10]
        //  %r315 = add i32 0, 0

        mov     x9, #0
        //  %r316 = add i32 0, 0

        mov     x9, #0
        //  %r206 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 0

        mov     x10, #8
        mov     x9, #0
        mul     x10, x9, x10
        mov     x0, #-80
        add     x9, x29, x0
        add     x10, x9, x10
        //  %r207 = load i32, i32* @n

        adrp     x9, n
        add     x9, x9, #:lo12:n
        ldr     x9, [x9]
        //  %r208 = call i32 @heap_sort(i32* %r206, i32 %r207)

        mov     x0, x10
        mov     x1, x9
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     heap_sort
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r317 = add i32 %r208, 0

        mov     x9, x9
        //  br label %bb_while_5_58_cond


        mov     x10, x9
        mov     x9, x8
        b     bb_while_5_58_cond
        //bb_while_5_58_cond:

bb_while_5_58_cond:

        //  %r325 = phi i32 [ %r317, %bb4 ], [ %r324, %bb_while_5_58_whilestms ]

        //  %r326 = phi i32 [ %r314, %bb4 ], [ %r323, %bb_while_5_58_whilestms ]

        //  %r210 = load i32, i32* @n

        adrp     x8, n
        add     x8, x8, #:lo12:n
        ldr     x8, [x8]
        //  %r211 = icmp slt i32 %r325, %r210

        cmp     x10, x8
        //  br i1 %r211, label %bb_while_5_58_whilestms, label %bb_while_5_58_bre


        mov     x8, x10
        b.lt     bb_while_5_58_whilestms
        b     bb_while_5_58_bre
        //bb_while_5_58_whilestms:

bb_while_5_58_whilestms:

        //  %r320 = phi i32 [ %r325, %bb_while_5_58_cond ]

        //  %r321 = phi i32 [ %r326, %bb_while_5_58_cond ]

        //  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 %r320

        mov     x9, #8
        mul     x10, x8, x9
        mov     x0, #-80
        add     x9, x29, x0
        add     x9, x9, x10
        //  %r215 = load i32, i32* %r214

        ldr     x9, [x9]
        //  %r322 = add i32 %r215, 0

        mov     x9, x9
        //  call void @putint(i32 %r322)

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
        //  %r323 = add i32 10, 0

        mov     x9, #10
        mov     x11, x9
        //  call void @putch(i32 %r323)

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
        //  %r219 = add i32 %r320, 1

        mov     x9, #1
        add     x8, x8, x9
        //  %r324 = add i32 %r219, 0

        mov     x8, x8
        //  br label %bb_while_5_58_cond


        mov     x10, x8
        mov     x9, x11
        b     bb_while_5_58_cond
        //bb_while_5_58_bre:

bb_while_5_58_bre:

        //  %r318 = phi i32 [ %r325, %bb_while_5_58_cond ]

        //  %r319 = phi i32 [ %r326, %bb_while_5_58_cond ]

        //  call void @_sysy_stoptime(i32 66)

        mov     x8, #66
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
