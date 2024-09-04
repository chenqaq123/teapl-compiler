.section .data
.global    n
.global    m
.global    to
.global    next
.global    head
.global    cnt
.global    que
.global    h
.global    tail
.global    inq
n:
        .quad   0
m:
        .quad   0
to:
        .zero   40040
next:
        .zero   40040
head:
        .zero   8040
cnt:
        .quad   0
que:
        .zero   8040
h:
        .quad   0
tail:
        .quad   0
inq:
        .zero   8040
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global quickread
.global addedge
.global init
.global inqueue
.global popqueue
.global same
.global main
quickread:

        //bb1:

bb1:

        //  %r257 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        sub     sp, sp, #8
        mov     x8, #0
        //  %r101 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r258 = add i32 %r101, 0

        mov     x10, x8
        //  %r259 = add i32 0, 0

        mov     x8, #0
        //  %r260 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r261 = add i32 0, 0

        mov     x9, #0
        //  %r262 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_5_cond


        mov     x11, x10
        mov     x10, x9
        b     bb_while_5_5_cond
        //bb_while_5_5_cond:

bb_while_5_5_cond:

        //  %r291 = phi i32 [ %r258, %bb1 ], [ %r284, %bb_if_9_6_end ]

        //  %r292 = phi i32 [ %r262, %bb1 ], [ %r283, %bb_if_9_6_end ]

        //  %r105 = icmp slt i32 %r291, 48

        mov     x9, #48
        cmp     x11, x9
        //  br i1 %r105, label %bb_while_5_5_whilestms, label %bb25_5_next


        mov     x13, x11
        mov     x12, x10
        mov     x11, x11
        mov     x10, x10
        b.lt     bb_while_5_5_whilestms
        b     bb25_5_next
        //bb25_5_next:

bb25_5_next:

        //  %r289 = phi i32 [ %r291, %bb_while_5_5_cond ]

        //  %r290 = phi i32 [ %r292, %bb_while_5_5_cond ]

        //  %r107 = icmp sgt i32 %r289, 57

        mov     x9, #57
        cmp     x13, x9
        //  br i1 %r107, label %bb_while_5_5_whilestms, label %bb_while_5_5_bre


        mov     x11, x13
        mov     x10, x12
        mov     x13, x13
        mov     x9, x12
        b.gt     bb_while_5_5_whilestms
        b     bb_while_5_5_bre
        //bb_while_5_5_whilestms:

bb_while_5_5_whilestms:

        //  %r287 = phi i32 [ %r291, %bb_while_5_5_cond ], [ %r289, %bb25_5_next ]

        //  %r288 = phi i32 [ %r292, %bb_while_5_5_cond ], [ %r290, %bb25_5_next ]

        //  %r109 = icmp eq i32 %r287, 45

        mov     x9, #45
        cmp     x11, x9
        //  br i1 %r109, label %bb_if_9_6_true, label %bb_if_9_6_false


        mov     x12, x11
        mov     x11, x11
        mov     x9, x10
        b.eq     bb_if_9_6_true
        b     bb_if_9_6_false
        //bb_if_9_6_true:

bb_if_9_6_true:

        //  %r268 = phi i32 [ %r287, %bb_while_5_5_whilestms ]

        //  %r269 = phi i32 [ %r288, %bb_while_5_5_whilestms ]

        //  %r270 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb_if_9_6_end


        mov     x10, x9
        b     bb_if_9_6_end
        //bb_if_9_6_false:

bb_if_9_6_false:

        //  %r285 = phi i32 [ %r287, %bb_while_5_5_whilestms ]

        //  %r286 = phi i32 [ %r288, %bb_while_5_5_whilestms ]

        //  br label %bb_if_9_6_end


        mov     x10, x9
        b     bb_if_9_6_end
        //bb_if_9_6_end:

bb_if_9_6_end:

        //  %r282 = phi i32 [ %r268, %bb_if_9_6_true ], [ %r285, %bb_if_9_6_false ]

        //  %r283 = phi i32 [ %r270, %bb_if_9_6_true ], [ %r286, %bb_if_9_6_false ]

        //  %r110 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r284 = add i32 %r110, 0

        mov     x9, x9
        //  br label %bb_while_5_5_cond


        mov     x11, x9
        mov     x10, x10
        b     bb_while_5_5_cond
        //bb_while_5_5_bre:

bb_while_5_5_bre:

        //  %r280 = phi i32 [ %r289, %bb25_5_next ]

        //  %r281 = phi i32 [ %r290, %bb25_5_next ]

        //  br label %bb_while_5_11_cond


        mov     x13, x13
        mov     x12, x8
        mov     x11, x9
        b     bb_while_5_11_cond
        //bb_while_5_11_cond:

bb_while_5_11_cond:

        //  %r277 = phi i32 [ %r280, %bb_while_5_5_bre ], [ %r267, %bb_while_5_11_whilestms ]

        //  %r278 = phi i32 [ %r260, %bb_while_5_5_bre ], [ %r266, %bb_while_5_11_whilestms ]

        //  %r279 = phi i32 [ %r281, %bb_while_5_5_bre ], [ %r265, %bb_while_5_11_whilestms ]

        //  %r112 = icmp sge i32 %r277, 48

        mov     x8, #48
        cmp     x13, x8
        //  br i1 %r112, label %bb26_11_next, label %bb_while_5_11_bre


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.ge     bb26_11_next
        b     bb_while_5_11_bre
        //bb26_11_next:

bb26_11_next:

        //  %r274 = phi i32 [ %r277, %bb_while_5_11_cond ]

        //  %r275 = phi i32 [ %r278, %bb_while_5_11_cond ]

        //  %r276 = phi i32 [ %r279, %bb_while_5_11_cond ]

        //  %r114 = icmp sle i32 %r274, 57

        mov     x11, #57
        cmp     x10, x11
        //  br i1 %r114, label %bb_while_5_11_whilestms, label %bb_while_5_11_bre


        mov     x16, x10
        str     x16, [sp]
        mov     x15, x9
        mov     x14, x8
        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        b.le     bb_while_5_11_whilestms
        b     bb_while_5_11_bre
        //bb_while_5_11_whilestms:

bb_while_5_11_whilestms:

        //  %r263 = phi i32 [ %r274, %bb26_11_next ]

        //  %r264 = phi i32 [ %r275, %bb26_11_next ]

        //  %r265 = phi i32 [ %r276, %bb26_11_next ]

        //  %r116 = mul i32 %r264, 10

        mov     x8, #10
        mul     x8, x15, x8
        //  %r118 = add i32 %r116, %r263

        ldr     x16, [sp]
        add     x9, x8, x16
        //  %r119 = sub i32 %r118, 48

        mov     x8, #48
        sub     x8, x9, x8
        //  %r266 = add i32 %r119, 0

        mov     x9, x8
        //  %r120 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r267 = add i32 %r120, 0

        mov     x8, x8
        //  br label %bb_while_5_11_cond


        mov     x13, x8
        mov     x12, x9
        mov     x11, x14
        b     bb_while_5_11_cond
        //bb_while_5_11_bre:

bb_while_5_11_bre:

        //  %r271 = phi i32 [ %r277, %bb_while_5_11_cond ], [ %r274, %bb26_11_next ]

        //  %r272 = phi i32 [ %r278, %bb_while_5_11_cond ], [ %r275, %bb26_11_next ]

        //  %r273 = phi i32 [ %r279, %bb_while_5_11_cond ], [ %r276, %bb26_11_next ]

        //  %r122 = icmp ne i32 %r273, 0

        mov     x8, #0
        cmp     x11, x8
        //  br i1 %r122, label %bb_if_5_15_true, label %bb_if_5_15_false


        mov     x9, x12
        mov     x8, x12
        b.ne     bb_if_5_15_true
        b     bb_if_5_15_false
        //bb_if_5_15_true:

bb_if_5_15_true:

        //  %r296 = phi i32 [ %r271, %bb_while_5_11_bre ]

        //  %r297 = phi i32 [ %r272, %bb_while_5_11_bre ]

        //  %r298 = phi i32 [ %r273, %bb_while_5_11_bre ]

        //  %r124 = sub i32 0, %r297

        mov     x8, #0
        sub     x8, x8, x9
        //  ret i32 %r124

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_15_false:

bb_if_5_15_false:

        //  %r293 = phi i32 [ %r271, %bb_while_5_11_bre ]

        //  %r294 = phi i32 [ %r272, %bb_while_5_11_bre ]

        //  %r295 = phi i32 [ %r273, %bb_while_5_11_bre ]

        //  ret i32 %r294

        mov     x0, x8
        mov     sp, x29
        ret
addedge:

        //bb2:

bb2:

        //  %r301 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r302 = add i32 %r126, 0

        mov     x9, x9
        //  %r303 = add i32 0, 0

        mov     x8, #0
        //  %r304 = add i32 %r128, 0

        mov     x8, x10
        //  %r130 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x11, [x10]
        //  %r131 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r130

        mov     x10, #8
        mul     x11, x11, x10
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x10, x10, x11
        //  store i32 %r304, i32* %r131

        str     x8, [x10]
        //  %r133 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x11, [x10]
        //  %r134 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r133

        mov     x10, #8
        mul     x11, x11, x10
        adrp     x10, next
        add     x10, x10, #:lo12:next
        add     x12, x10, x11
        //  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r302

        mov     x10, #8
        mul     x11, x9, x10
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x11
        //  %r137 = load i32, i32* %r136

        ldr     x10, [x10]
        //  store i32 %r137, i32* %r134

        str     x10, [x12]
        //  %r139 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r302

        mov     x10, #8
        mul     x11, x9, x10
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x11, x10, x11
        //  %r140 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x10, [x10]
        //  store i32 %r140, i32* %r139

        str     x10, [x11]
        //  %r141 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x11, [x10]
        //  %r142 = add i32 %r141, 1

        mov     x10, #1
        add     x11, x11, x10
        //  store i32 %r142, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        str     x11, [x10]
        //  %r143 = load i32, i32* @cnt

        adrp     x10, cnt
        add     x10, x10, #:lo12:cnt
        ldr     x11, [x10]
        //  %r144 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r143

        mov     x10, #8
        mul     x11, x11, x10
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x10, x10, x11
        //  store i32 %r302, i32* %r144

        str     x9, [x10]
        //  %r146 = load i32, i32* @cnt

        adrp     x9, cnt
        add     x9, x9, #:lo12:cnt
        ldr     x10, [x9]
        //  %r147 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r146

        mov     x9, #8
        mul     x10, x10, x9
        adrp     x9, next
        add     x9, x9, #:lo12:next
        add     x11, x9, x10
        //  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r304

        mov     x9, #8
        mul     x10, x8, x9
        adrp     x9, head
        add     x9, x9, #:lo12:head
        add     x9, x9, x10
        //  %r150 = load i32, i32* %r149

        ldr     x9, [x9]
        //  store i32 %r150, i32* %r147

        str     x9, [x11]
        //  %r152 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r304

        mov     x9, #8
        mul     x9, x8, x9
        adrp     x8, head
        add     x8, x8, #:lo12:head
        add     x9, x8, x9
        //  %r153 = load i32, i32* @cnt

        adrp     x8, cnt
        add     x8, x8, #:lo12:cnt
        ldr     x8, [x8]
        //  store i32 %r153, i32* %r152

        str     x8, [x9]
        //  %r154 = load i32, i32* @cnt

        adrp     x8, cnt
        add     x8, x8, #:lo12:cnt
        ldr     x9, [x8]
        //  %r155 = add i32 %r154, 1

        mov     x8, #1
        add     x9, x9, x8
        //  store i32 %r155, i32* @cnt

        adrp     x8, cnt
        add     x8, x8, #:lo12:cnt
        str     x9, [x8]
        //  ret void

        mov     sp, x29
        ret
init:

        //bb3:

bb3:

        //  %r306 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #0
        //  %r307 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_46_cond


        mov     x9, x8
        b     bb_while_5_46_cond
        //bb_while_5_46_cond:

bb_while_5_46_cond:

        //  %r311 = phi i32 [ %r307, %bb3 ], [ %r310, %bb_while_5_46_whilestms ]

        //  %r158 = icmp slt i32 %r311, 1005

        mov     x8, #1005
        cmp     x9, x8
        //  br i1 %r158, label %bb_while_5_46_whilestms, label %bb_while_5_46_bre


        mov     x10, x9
        b.lt     bb_while_5_46_whilestms
        b     bb_while_5_46_bre
        //bb_while_5_46_whilestms:

bb_while_5_46_whilestms:

        //  %r309 = phi i32 [ %r311, %bb_while_5_46_cond ]

        //  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r309

        mov     x8, #8
        mul     x9, x10, x8
        adrp     x8, head
        add     x8, x8, #:lo12:head
        add     x11, x8, x9
        //  %r161 = sub i32 0, 1

        mov     x9, #0
        mov     x8, #1
        sub     x8, x9, x8
        //  store i32 %r161, i32* %r160

        str     x8, [x11]
        //  %r163 = add i32 %r309, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r310 = add i32 %r163, 0

        mov     x8, x8
        //  br label %bb_while_5_46_cond


        mov     x9, x8
        b     bb_while_5_46_cond
        //bb_while_5_46_bre:

bb_while_5_46_bre:

        //  %r308 = phi i32 [ %r311, %bb_while_5_46_cond ]

        //  ret void

        mov     sp, x29
        ret
inqueue:

        //bb4:

bb4:

        //  %r313 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r314 = add i32 %r164, 0

        mov     x8, x9
        //  %r167 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r314

        mov     x9, #8
        mul     x10, x8, x9
        adrp     x9, inq
        add     x9, x9, #:lo12:inq
        add     x10, x9, x10
        //  store i32 1, i32* %r167

        mov     x9, #1
        str     x9, [x10]
        //  %r168 = load i32, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x10, [x9]
        //  %r169 = add i32 %r168, 1

        mov     x9, #1
        add     x10, x10, x9
        //  store i32 %r169, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        str     x10, [x9]
        //  %r170 = load i32, i32* @tail

        adrp     x9, tail
        add     x9, x9, #:lo12:tail
        ldr     x10, [x9]
        //  %r171 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r170

        mov     x9, #8
        mul     x10, x10, x9
        adrp     x9, que
        add     x9, x9, #:lo12:que
        add     x9, x9, x10
        //  store i32 %r314, i32* %r171

        str     x8, [x9]
        //  ret void

        mov     sp, x29
        ret
popqueue:

        //bb5:

bb5:

        //  %r173 = load i32, i32* @h

        mov     x16, #0
        sub     sp, sp, x16
        adrp     x8, h
        add     x8, x8, #:lo12:h
        ldr     x9, [x8]
        //  %r174 = add i32 %r173, 1

        mov     x8, #1
        add     x9, x9, x8
        //  store i32 %r174, i32* @h

        adrp     x8, h
        add     x8, x8, #:lo12:h
        str     x9, [x8]
        //  %r316 = add i32 0, 0

        mov     x8, #0
        //  %r176 = load i32, i32* @h

        adrp     x8, h
        add     x8, x8, #:lo12:h
        ldr     x9, [x8]
        //  %r177 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r176

        mov     x8, #8
        mul     x9, x9, x8
        adrp     x8, que
        add     x8, x8, #:lo12:que
        add     x8, x8, x9
        //  %r178 = load i32, i32* %r177

        ldr     x8, [x8]
        //  %r317 = add i32 %r178, 0

        //  %r179 = load i32, i32* @h

        adrp     x8, h
        add     x8, x8, #:lo12:h
        ldr     x9, [x8]
        //  %r180 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r179

        mov     x8, #8
        mul     x9, x9, x8
        adrp     x8, que
        add     x8, x8, #:lo12:que
        add     x8, x8, x9
        //  %r181 = load i32, i32* %r180

        ldr     x8, [x8]
        //  ret i32 %r181

        mov     x0, x8
        mov     sp, x29
        ret
same:

        //bb6:

bb6:

        //  %r324 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        sub     sp, sp, #16
        mov     x10, x0
        mov     x9, x1
        mov     x8, #0
        //  %r325 = add i32 %r182, 0

        mov     x10, x10
        //  %r326 = add i32 0, 0

        mov     x8, #0
        //  %r327 = add i32 %r184, 0

        mov     x16, x9
        str     x16, [sp,#8]
        //  store i32 0, i32* @h

        mov     x9, #0
        adrp     x8, h
        add     x8, x8, #:lo12:h
        str     x9, [x8]
        //  store i32 0, i32* @tail

        mov     x9, #0
        adrp     x8, tail
        add     x8, x8, #:lo12:tail
        str     x9, [x8]
        //  call void @inqueue(i32 %r325)

        mov     x0, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r328 = add i32 0, 0

        mov     x8, #0
        //  %r329 = add i32 0, 0

        mov     x8, #0
        mov     x12, x8
        //  %r330 = add i32 0, 0

        mov     x8, #0
        //  %r331 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r332 = add i32 0, 0

        mov     x9, #0
        //  %r333 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  %r334 = add i32 0, 0

        mov     x9, #0
        //  %r335 = add i32 0, 0

        mov     x9, #0
        mov     x11, x9
        //  br label %bb_while_5_72_cond


        mov     x10, x10
        mov     x9, x8
        mov     x11, x11
        mov     x12, x12
        b     bb_while_5_72_cond
        //bb_while_5_72_cond:

bb_while_5_72_cond:

        //  %r346 = phi i32 [ %r333, %bb6 ], [ %r395, %bb_while_9_78_bre ]

        //  %r347 = phi i32 [ %r331, %bb6 ], [ %r396, %bb_while_9_78_bre ]

        //  %r348 = phi i32 [ %r335, %bb6 ], [ %r397, %bb_while_9_78_bre ]

        //  %r349 = phi i32 [ %r329, %bb6 ], [ %r398, %bb_while_9_78_bre ]

        //  %r191 = load i32, i32* @h

        adrp     x8, h
        add     x8, x8, #:lo12:h
        ldr     x13, [x8]
        //  %r192 = load i32, i32* @tail

        adrp     x8, tail
        add     x8, x8, #:lo12:tail
        ldr     x8, [x8]
        //  %r193 = icmp slt i32 %r191, %r192

        cmp     x13, x8
        //  br i1 %r193, label %bb_while_5_72_whilestms, label %bb_while_5_72_bre


        mov     x8, x10
        mov     x14, x11
        mov     x13, x12
        mov     x9, x9
        mov     x11, x11
        mov     x10, x12
        b.lt     bb_while_5_72_whilestms
        b     bb_while_5_72_bre
        //bb_while_5_72_whilestms:

bb_while_5_72_whilestms:

        //  %r350 = phi i32 [ %r346, %bb_while_5_72_cond ]

        //  %r351 = phi i32 [ %r347, %bb_while_5_72_cond ]

        //  %r352 = phi i32 [ %r348, %bb_while_5_72_cond ]

        //  %r353 = phi i32 [ %r349, %bb_while_5_72_cond ]

        //  %r194 = call i32 @popqueue()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     popqueue
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r354 = add i32 %r194, 0

        mov     x12, x9
        //  %r197 = icmp eq i32 %r354, %r327

        ldr     x16, [sp,#8]
        cmp     x12, x16
        //  br i1 %r197, label %bb_if_9_74_true, label %bb_if_9_74_false


        mov     x11, x8
        mov     x10, x12
        mov     x9, x14
        mov     x8, x8
        mov     x12, x12
        mov     x14, x14
        mov     x13, x13
        b.eq     bb_if_9_74_true
        b     bb_if_9_74_false
        //bb_if_9_74_true:

bb_if_9_74_true:

        //  %r363 = phi i32 [ %r350, %bb_while_5_72_whilestms ]

        //  %r364 = phi i32 [ %r354, %bb_while_5_72_whilestms ]

        //  %r365 = phi i32 [ %r352, %bb_while_5_72_whilestms ]

        //  %r366 = phi i32 [ %r353, %bb_while_5_72_whilestms ]

        //  %r367 = add i32 1, 0

        mov     x8, #1
        mov     x8, x8
        //  br label %bb_if_9_74_end


        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_if_9_74_end
        //bb_if_9_74_false:

bb_if_9_74_false:

        //  %r368 = phi i32 [ %r350, %bb_while_5_72_whilestms ]

        //  %r369 = phi i32 [ %r354, %bb_while_5_72_whilestms ]

        //  %r370 = phi i32 [ %r352, %bb_while_5_72_whilestms ]

        //  %r371 = phi i32 [ %r353, %bb_while_5_72_whilestms ]

        //  br label %bb_if_9_74_end


        mov     x10, x12
        mov     x9, x14
        mov     x8, x13
        b     bb_if_9_74_end
        //bb_if_9_74_end:

bb_if_9_74_end:

        //  %r377 = phi i32 [ %r363, %bb_if_9_74_true ], [ %r368, %bb_if_9_74_false ]

        //  %r378 = phi i32 [ %r364, %bb_if_9_74_true ], [ %r369, %bb_if_9_74_false ]

        //  %r379 = phi i32 [ %r365, %bb_if_9_74_true ], [ %r370, %bb_if_9_74_false ]

        //  %r380 = phi i32 [ %r367, %bb_if_9_74_true ], [ %r371, %bb_if_9_74_false ]

        //  %r199 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r378

        mov     x11, #8
        mul     x12, x10, x11
        adrp     x11, head
        add     x11, x11, #:lo12:head
        add     x11, x11, x12
        //  %r200 = load i32, i32* %r199

        ldr     x11, [x11]
        //  %r381 = add i32 %r200, 0

        mov     x11, x11
        //  br label %bb_while_9_78_cond


        mov     x14, x11
        mov     x13, x10
        mov     x12, x9
        mov     x8, x8
        b     bb_while_9_78_cond
        //bb_while_9_78_cond:

bb_while_9_78_cond:

        //  %r382 = phi i32 [ %r381, %bb_if_9_74_end ], [ %r394, %bb_if_13_80_end ]

        //  %r383 = phi i32 [ %r378, %bb_if_9_74_end ], [ %r391, %bb_if_13_80_end ]

        //  %r384 = phi i32 [ %r379, %bb_if_9_74_end ], [ %r392, %bb_if_13_80_end ]

        //  %r385 = phi i32 [ %r380, %bb_if_9_74_end ], [ %r393, %bb_if_13_80_end ]

        //  %r202 = sub i32 0, 1

        mov     x10, #0
        mov     x9, #1
        sub     x9, x10, x9
        //  %r203 = icmp ne i32 %r382, %r202

        cmp     x14, x9
        //  br i1 %r203, label %bb_while_9_78_whilestms, label %bb_while_9_78_bre


        mov     x11, x14
        mov     x10, x13
        mov     x9, x8
        mov     x14, x14
        mov     x13, x13
        mov     x12, x12
        mov     x8, x8
        b.ne     bb_while_9_78_whilestms
        b     bb_while_9_78_bre
        //bb_while_9_78_whilestms:

bb_while_9_78_whilestms:

        //  %r372 = phi i32 [ %r382, %bb_while_9_78_cond ]

        //  %r373 = phi i32 [ %r383, %bb_while_9_78_cond ]

        //  %r374 = phi i32 [ %r384, %bb_while_9_78_cond ]

        //  %r375 = phi i32 [ %r385, %bb_while_9_78_cond ]

        //  %r205 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r372

        mov     x8, #8
        mul     x12, x11, x8
        adrp     x8, to
        add     x8, x8, #:lo12:to
        add     x8, x8, x12
        //  %r206 = load i32, i32* %r205

        ldr     x8, [x8]
        //  %r376 = add i32 %r206, 0

        mov     x8, x8
        //  %r208 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r376

        mov     x12, #8
        mul     x13, x8, x12
        adrp     x12, inq
        add     x12, x12, #:lo12:inq
        add     x12, x12, x13
        //  %r209 = load i32, i32* %r208

        ldr     x13, [x12]
        //  %r210 = icmp eq i32 %r209, 0

        mov     x12, #0
        cmp     x13, x12
        //  br i1 %r210, label %bb_if_13_80_true, label %bb_if_13_80_false


        mov     x16, x11
        str     x16, [sp]
        mov     x15, x10
        mov     x14, x8
        mov     x13, x9
        mov     x12, x11
        mov     x11, x10
        mov     x10, x8
        mov     x8, x9
        b.eq     bb_if_13_80_true
        b     bb_if_13_80_false
        //bb_if_13_80_true:

bb_if_13_80_true:

        //  %r355 = phi i32 [ %r372, %bb_while_9_78_whilestms ]

        //  %r356 = phi i32 [ %r373, %bb_while_9_78_whilestms ]

        //  %r357 = phi i32 [ %r376, %bb_while_9_78_whilestms ]

        //  %r358 = phi i32 [ %r375, %bb_while_9_78_whilestms ]

        //  %r212 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r355

        mov     x8, #8
        ldr     x16, [sp]
        mul     x9, x16, x8
        adrp     x8, to
        add     x8, x8, #:lo12:to
        add     x8, x8, x9
        //  %r213 = load i32, i32* %r212

        ldr     x8, [x8]
        //  call void @inqueue(i32 %r213)

        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     inqueue
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_if_13_80_end


        ldr     x16, [sp]
        mov     x9, x16
        mov     x11, x15
        mov     x10, x14
        mov     x8, x13
        b     bb_if_13_80_end
        //bb_if_13_80_false:

bb_if_13_80_false:

        //  %r359 = phi i32 [ %r372, %bb_while_9_78_whilestms ]

        //  %r360 = phi i32 [ %r373, %bb_while_9_78_whilestms ]

        //  %r361 = phi i32 [ %r376, %bb_while_9_78_whilestms ]

        //  %r362 = phi i32 [ %r375, %bb_while_9_78_whilestms ]

        //  br label %bb_if_13_80_end


        mov     x9, x12
        mov     x11, x11
        mov     x10, x10
        mov     x8, x8
        b     bb_if_13_80_end
        //bb_if_13_80_end:

bb_if_13_80_end:

        //  %r390 = phi i32 [ %r355, %bb_if_13_80_true ], [ %r359, %bb_if_13_80_false ]

        //  %r391 = phi i32 [ %r356, %bb_if_13_80_true ], [ %r360, %bb_if_13_80_false ]

        //  %r392 = phi i32 [ %r357, %bb_if_13_80_true ], [ %r361, %bb_if_13_80_false ]

        //  %r393 = phi i32 [ %r358, %bb_if_13_80_true ], [ %r362, %bb_if_13_80_false ]

        //  %r215 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r390

        mov     x12, #8
        mul     x12, x9, x12
        adrp     x9, next
        add     x9, x9, #:lo12:next
        add     x9, x9, x12
        //  %r216 = load i32, i32* %r215

        ldr     x9, [x9]
        //  %r394 = add i32 %r216, 0

        mov     x9, x9
        //  br label %bb_while_9_78_cond


        mov     x14, x9
        mov     x13, x11
        mov     x12, x10
        mov     x8, x8
        b     bb_while_9_78_cond
        //bb_while_9_78_bre:

bb_while_9_78_bre:

        //  %r395 = phi i32 [ %r382, %bb_while_9_78_cond ]

        //  %r396 = phi i32 [ %r383, %bb_while_9_78_cond ]

        //  %r397 = phi i32 [ %r384, %bb_while_9_78_cond ]

        //  %r398 = phi i32 [ %r385, %bb_while_9_78_cond ]

        //  br label %bb_while_5_72_cond


        mov     x10, x14
        mov     x9, x13
        mov     x11, x12
        mov     x12, x8
        b     bb_while_5_72_cond
        //bb_while_5_72_bre:

bb_while_5_72_bre:

        //  %r399 = phi i32 [ %r346, %bb_while_5_72_cond ]

        //  %r400 = phi i32 [ %r347, %bb_while_5_72_cond ]

        //  %r401 = phi i32 [ %r348, %bb_while_5_72_cond ]

        //  %r402 = phi i32 [ %r349, %bb_while_5_72_cond ]

        //  %r403 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_87_cond


        mov     x12, x8
        mov     x9, x9
        mov     x8, x11
        mov     x14, x10
        b     bb_while_5_87_cond
        //bb_while_5_87_cond:

bb_while_5_87_cond:

        //  %r342 = phi i32 [ %r403, %bb_while_5_72_bre ], [ %r341, %bb_while_5_87_whilestms ]

        //  %r343 = phi i32 [ %r400, %bb_while_5_72_bre ], [ %r337, %bb_while_5_87_whilestms ]

        //  %r344 = phi i32 [ %r401, %bb_while_5_72_bre ], [ %r340, %bb_while_5_87_whilestms ]

        //  %r345 = phi i32 [ %r402, %bb_while_5_72_bre ], [ %r339, %bb_while_5_87_whilestms ]

        //  %r218 = load i32, i32* @tail

        adrp     x10, tail
        add     x10, x10, #:lo12:tail
        ldr     x10, [x10]
        //  %r219 = icmp sle i32 %r342, %r218

        cmp     x12, x10
        //  br i1 %r219, label %bb_while_5_87_whilestms, label %bb_while_5_87_bre


        mov     x13, x12
        mov     x11, x9
        mov     x10, x14
        mov     x8, x14
        b.le     bb_while_5_87_whilestms
        b     bb_while_5_87_bre
        //bb_while_5_87_whilestms:

bb_while_5_87_whilestms:

        //  %r336 = phi i32 [ %r342, %bb_while_5_87_cond ]

        //  %r337 = phi i32 [ %r343, %bb_while_5_87_cond ]

        //  %r338 = phi i32 [ %r344, %bb_while_5_87_cond ]

        //  %r339 = phi i32 [ %r345, %bb_while_5_87_cond ]

        //  %r221 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32 0, i32 %r336

        mov     x8, #8
        mul     x9, x13, x8
        adrp     x8, que
        add     x8, x8, #:lo12:que
        add     x8, x8, x9
        //  %r222 = load i32, i32* %r221

        ldr     x8, [x8]
        //  %r340 = add i32 %r222, 0

        mov     x8, x8
        //  %r224 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32 0, i32 %r340

        mov     x9, #8
        mul     x12, x8, x9
        adrp     x9, inq
        add     x9, x9, #:lo12:inq
        add     x12, x9, x12
        //  store i32 0, i32* %r224

        mov     x9, #0
        str     x9, [x12]
        //  %r226 = add i32 %r336, 1

        mov     x9, #1
        add     x9, x13, x9
        //  %r341 = add i32 %r226, 0

        mov     x9, x9
        //  br label %bb_while_5_87_cond


        mov     x12, x9
        mov     x9, x11
        mov     x8, x8
        mov     x14, x10
        b     bb_while_5_87_cond
        //bb_while_5_87_bre:

bb_while_5_87_bre:

        //  %r386 = phi i32 [ %r342, %bb_while_5_87_cond ]

        //  %r387 = phi i32 [ %r343, %bb_while_5_87_cond ]

        //  %r388 = phi i32 [ %r344, %bb_while_5_87_cond ]

        //  %r389 = phi i32 [ %r345, %bb_while_5_87_cond ]

        //  ret i32 %r389

        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb7:

bb7:

        //  %r228 = call i32 @quickread()

        mov     x16, #0
        sub     sp, sp, x16
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  store i32 %r228, i32* @n

        adrp     x8, n
        add     x8, x8, #:lo12:n
        str     x9, [x8]
        //  %r229 = call i32 @quickread()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  store i32 %r229, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        str     x9, [x8]
        //  call void @_sysy_starttime(i32 97)

        mov     x8, #97
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
        //  call void @init()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     init
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r407 = add i32 0, 0

        mov     x8, #0
        //  %r408 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r409 = add i32 0, 0

        mov     x9, #0
        //  %r410 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  %r411 = add i32 0, 0

        mov     x9, #0
        //  %r412 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_102_cond


        mov     x11, x9
        mov     x10, x10
        mov     x9, x8
        b     bb_while_5_102_cond
        //bb_while_5_102_cond:

bb_while_5_102_cond:

        //  %r446 = phi i32 [ %r412, %bb7 ], [ %r440, %bb_if_9_107_end ]

        //  %r447 = phi i32 [ %r410, %bb7 ], [ %r441, %bb_if_9_107_end ]

        //  %r448 = phi i32 [ %r408, %bb7 ], [ %r442, %bb_if_9_107_end ]

        //  %r233 = load i32, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        ldr     x12, [x8]
        //  %r234 = icmp ne i32 %r233, 0

        mov     x8, #0
        cmp     x12, x8
        //  br i1 %r234, label %bb_while_5_102_whilestms, label %bb_while_5_102_bre


        mov     x13, x11
        mov     x12, x10
        b.ne     bb_while_5_102_whilestms
        b     bb_while_5_102_bre
        //bb_while_5_102_whilestms:

bb_while_5_102_whilestms:

        //  %r436 = phi i32 [ %r446, %bb_while_5_102_cond ]

        //  %r437 = phi i32 [ %r447, %bb_while_5_102_cond ]

        //  %r438 = phi i32 [ %r448, %bb_while_5_102_cond ]

        //  %r235 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r439 = add i32 %r235, 0

        mov     x8, x8
        //  br label %bb_while_9_104_cond


        mov     x13, x13
        mov     x12, x12
        mov     x11, x8
        b     bb_while_9_104_cond
        //bb_while_9_104_cond:

bb_while_9_104_cond:

        //  %r443 = phi i32 [ %r436, %bb_while_5_102_whilestms ], [ %r418, %bb_while_9_104_whilestms ]

        //  %r444 = phi i32 [ %r437, %bb_while_5_102_whilestms ], [ %r419, %bb_while_9_104_whilestms ]

        //  %r445 = phi i32 [ %r439, %bb_while_5_102_whilestms ], [ %r421, %bb_while_9_104_whilestms ]

        //  %r237 = icmp ne i32 %r445, 81

        mov     x8, #81
        cmp     x11, x8
        //  br i1 %r237, label %bb30_104_next, label %bb_while_9_104_bre


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.ne     bb30_104_next
        b     bb_while_9_104_bre
        //bb30_104_next:

bb30_104_next:

        //  %r433 = phi i32 [ %r443, %bb_while_9_104_cond ]

        //  %r434 = phi i32 [ %r444, %bb_while_9_104_cond ]

        //  %r435 = phi i32 [ %r445, %bb_while_9_104_cond ]

        //  %r239 = icmp ne i32 %r435, 85

        mov     x11, #85
        cmp     x8, x11
        //  br i1 %r239, label %bb_while_9_104_whilestms, label %bb_while_9_104_bre


        mov     x15, x10
        mov     x14, x9
        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        b.ne     bb_while_9_104_whilestms
        b     bb_while_9_104_bre
        //bb_while_9_104_whilestms:

bb_while_9_104_whilestms:

        //  %r418 = phi i32 [ %r433, %bb30_104_next ]

        //  %r419 = phi i32 [ %r434, %bb30_104_next ]

        //  %r420 = phi i32 [ %r435, %bb30_104_next ]

        //  %r240 = call i32 @getch()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     getch
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r421 = add i32 %r240, 0

        mov     x8, x8
        //  br label %bb_while_9_104_cond


        mov     x13, x15
        mov     x12, x14
        mov     x11, x8
        b     bb_while_9_104_cond
        //bb_while_9_104_bre:

bb_while_9_104_bre:

        //  %r430 = phi i32 [ %r443, %bb_while_9_104_cond ], [ %r433, %bb30_104_next ]

        //  %r431 = phi i32 [ %r444, %bb_while_9_104_cond ], [ %r434, %bb30_104_next ]

        //  %r432 = phi i32 [ %r445, %bb_while_9_104_cond ], [ %r435, %bb30_104_next ]

        //  %r242 = icmp eq i32 %r432, 81

        mov     x8, #81
        cmp     x11, x8
        //  br i1 %r242, label %bb_if_9_107_true, label %bb_if_9_107_false


        mov     x8, x11
        mov     x12, x11
        b.eq     bb_if_9_107_true
        b     bb_if_9_107_false
        //bb_if_9_107_true:

bb_if_9_107_true:

        //  %r413 = phi i32 [ %r430, %bb_while_9_104_bre ]

        //  %r414 = phi i32 [ %r431, %bb_while_9_104_bre ]

        //  %r415 = phi i32 [ %r432, %bb_while_9_104_bre ]

        //  %r243 = call i32 @quickread()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r416 = add i32 %r243, 0

        mov     x12, x9
        //  %r244 = call i32 @quickread()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  %r417 = add i32 %r244, 0

        mov     x10, x9
        //  %r247 = call i32 @same(i32 %r416, i32 %r417)

        mov     x0, x12
        mov     x1, x10
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     same
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x9, x0
        //  call void @putint(i32 %r247)

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
        //  call void @putch(i32 10)

        mov     x9, #10
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
        //  br label %bb_if_9_107_end


        mov     x11, x10
        mov     x10, x12
        mov     x9, x8
        b     bb_if_9_107_end
        //bb_if_9_107_false:

bb_if_9_107_false:

        //  %r422 = phi i32 [ %r430, %bb_while_9_104_bre ]

        //  %r423 = phi i32 [ %r431, %bb_while_9_104_bre ]

        //  %r424 = phi i32 [ %r432, %bb_while_9_104_bre ]

        //  %r248 = call i32 @quickread()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r425 = add i32 %r248, 0

        mov     x9, x8
        //  %r249 = call i32 @quickread()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     quickread
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r426 = add i32 %r249, 0

        mov     x8, x8
        //  call void @addedge(i32 %r425, i32 %r426)

        mov     x0, x9
        mov     x1, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     addedge
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  br label %bb_if_9_107_end


        mov     x11, x8
        mov     x10, x9
        mov     x9, x12
        b     bb_if_9_107_end
        //bb_if_9_107_end:

bb_if_9_107_end:

        //  %r440 = phi i32 [ %r417, %bb_if_9_107_true ], [ %r426, %bb_if_9_107_false ]

        //  %r441 = phi i32 [ %r416, %bb_if_9_107_true ], [ %r425, %bb_if_9_107_false ]

        //  %r442 = phi i32 [ %r415, %bb_if_9_107_true ], [ %r424, %bb_if_9_107_false ]

        //  %r252 = load i32, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        ldr     x12, [x8]
        //  %r253 = sub i32 %r252, 1

        mov     x8, #1
        sub     x12, x12, x8
        //  store i32 %r253, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        str     x12, [x8]
        //  br label %bb_while_5_102_cond


        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        b     bb_while_5_102_cond
        //bb_while_5_102_bre:

bb_while_5_102_bre:

        //  %r427 = phi i32 [ %r446, %bb_while_5_102_cond ]

        //  %r428 = phi i32 [ %r447, %bb_while_5_102_cond ]

        //  %r429 = phi i32 [ %r448, %bb_while_5_102_cond ]

        //  call void @_sysy_stoptime(i32 117)

        mov     x8, #117
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
