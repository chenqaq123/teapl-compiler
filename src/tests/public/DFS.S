.section .data
.global    n
.global    m
.global    to
.global    next
.global    head
.global    cnt
.global    vis
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
vis:
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
.global clear
.global same
.global main
quickread:

        //bb1:

bb1:

        //  %r232 = add i32 0, 0

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
        //  %r233 = add i32 %r101, 0

        mov     x10, x8
        //  %r234 = add i32 0, 0

        mov     x8, #0
        //  %r235 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r236 = add i32 0, 0

        mov     x9, #0
        //  %r237 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_5_cond


        mov     x11, x10
        mov     x10, x9
        b     bb_while_5_5_cond
        //bb_while_5_5_cond:

bb_while_5_5_cond:

        //  %r272 = phi i32 [ %r233, %bb1 ], [ %r251, %bb_if_9_6_end ]

        //  %r273 = phi i32 [ %r237, %bb1 ], [ %r250, %bb_if_9_6_end ]

        //  %r105 = icmp slt i32 %r272, 48

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

        //  %r270 = phi i32 [ %r272, %bb_while_5_5_cond ]

        //  %r271 = phi i32 [ %r273, %bb_while_5_5_cond ]

        //  %r107 = icmp sgt i32 %r270, 57

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

        //  %r268 = phi i32 [ %r272, %bb_while_5_5_cond ], [ %r270, %bb25_5_next ]

        //  %r269 = phi i32 [ %r273, %bb_while_5_5_cond ], [ %r271, %bb25_5_next ]

        //  %r109 = icmp eq i32 %r268, 45

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

        //  %r265 = phi i32 [ %r268, %bb_while_5_5_whilestms ]

        //  %r266 = phi i32 [ %r269, %bb_while_5_5_whilestms ]

        //  %r267 = add i32 1, 0

        mov     x9, #1
        mov     x9, x9
        //  br label %bb_if_9_6_end


        mov     x10, x9
        b     bb_if_9_6_end
        //bb_if_9_6_false:

bb_if_9_6_false:

        //  %r247 = phi i32 [ %r268, %bb_while_5_5_whilestms ]

        //  %r248 = phi i32 [ %r269, %bb_while_5_5_whilestms ]

        //  br label %bb_if_9_6_end


        mov     x10, x9
        b     bb_if_9_6_end
        //bb_if_9_6_end:

bb_if_9_6_end:

        //  %r249 = phi i32 [ %r265, %bb_if_9_6_true ], [ %r247, %bb_if_9_6_false ]

        //  %r250 = phi i32 [ %r267, %bb_if_9_6_true ], [ %r248, %bb_if_9_6_false ]

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
        //  %r251 = add i32 %r110, 0

        mov     x9, x9
        //  br label %bb_while_5_5_cond


        mov     x11, x9
        mov     x10, x10
        b     bb_while_5_5_cond
        //bb_while_5_5_bre:

bb_while_5_5_bre:

        //  %r263 = phi i32 [ %r270, %bb25_5_next ]

        //  %r264 = phi i32 [ %r271, %bb25_5_next ]

        //  br label %bb_while_5_11_cond


        mov     x13, x13
        mov     x12, x8
        mov     x11, x9
        b     bb_while_5_11_cond
        //bb_while_5_11_cond:

bb_while_5_11_cond:

        //  %r260 = phi i32 [ %r263, %bb_while_5_5_bre ], [ %r256, %bb_while_5_11_whilestms ]

        //  %r261 = phi i32 [ %r235, %bb_while_5_5_bre ], [ %r255, %bb_while_5_11_whilestms ]

        //  %r262 = phi i32 [ %r264, %bb_while_5_5_bre ], [ %r254, %bb_while_5_11_whilestms ]

        //  %r112 = icmp sge i32 %r260, 48

        mov     x8, #48
        cmp     x13, x8
        //  br i1 %r112, label %bb26_11_next, label %bb_while_5_11_bre


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x16, x13
        str     x16, [sp]
        mov     x15, x12
        mov     x14, x11
        b.ge     bb26_11_next
        b     bb_while_5_11_bre
        //bb26_11_next:

bb26_11_next:

        //  %r257 = phi i32 [ %r260, %bb_while_5_11_cond ]

        //  %r258 = phi i32 [ %r261, %bb_while_5_11_cond ]

        //  %r259 = phi i32 [ %r262, %bb_while_5_11_cond ]

        //  %r114 = icmp sle i32 %r257, 57

        mov     x11, #57
        cmp     x10, x11
        //  br i1 %r114, label %bb_while_5_11_whilestms, label %bb_while_5_11_bre


        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        mov     x16, x10
        str     x16, [sp]
        mov     x15, x9
        mov     x14, x8
        b.le     bb_while_5_11_whilestms
        b     bb_while_5_11_bre
        //bb_while_5_11_whilestms:

bb_while_5_11_whilestms:

        //  %r252 = phi i32 [ %r257, %bb26_11_next ]

        //  %r253 = phi i32 [ %r258, %bb26_11_next ]

        //  %r254 = phi i32 [ %r259, %bb26_11_next ]

        //  %r116 = mul i32 %r253, 10

        mov     x8, #10
        mul     x8, x12, x8
        //  %r118 = add i32 %r116, %r252

        add     x9, x8, x13
        //  %r119 = sub i32 %r118, 48

        mov     x8, #48
        sub     x8, x9, x8
        //  %r255 = add i32 %r119, 0

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
        //  %r256 = add i32 %r120, 0

        mov     x8, x8
        //  br label %bb_while_5_11_cond


        mov     x13, x8
        mov     x12, x9
        mov     x11, x11
        b     bb_while_5_11_cond
        //bb_while_5_11_bre:

bb_while_5_11_bre:

        //  %r238 = phi i32 [ %r260, %bb_while_5_11_cond ], [ %r257, %bb26_11_next ]

        //  %r239 = phi i32 [ %r261, %bb_while_5_11_cond ], [ %r258, %bb26_11_next ]

        //  %r240 = phi i32 [ %r262, %bb_while_5_11_cond ], [ %r259, %bb26_11_next ]

        //  %r122 = icmp ne i32 %r240, 0

        mov     x8, #0
        cmp     x14, x8
        //  br i1 %r122, label %bb_if_5_15_true, label %bb_if_5_15_false


        mov     x9, x15
        mov     x8, x15
        b.ne     bb_if_5_15_true
        b     bb_if_5_15_false
        //bb_if_5_15_true:

bb_if_5_15_true:

        //  %r244 = phi i32 [ %r238, %bb_while_5_11_bre ]

        //  %r245 = phi i32 [ %r239, %bb_while_5_11_bre ]

        //  %r246 = phi i32 [ %r240, %bb_while_5_11_bre ]

        //  %r124 = sub i32 0, %r245

        mov     x8, #0
        sub     x8, x8, x9
        //  ret i32 %r124

        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_15_false:

bb_if_5_15_false:

        //  %r241 = phi i32 [ %r238, %bb_while_5_11_bre ]

        //  %r242 = phi i32 [ %r239, %bb_while_5_11_bre ]

        //  %r243 = phi i32 [ %r240, %bb_while_5_11_bre ]

        //  ret i32 %r242

        mov     x0, x8
        mov     sp, x29
        ret
addedge:

        //bb2:

bb2:

        //  %r276 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r277 = add i32 %r126, 0

        mov     x9, x9
        //  %r278 = add i32 0, 0

        mov     x8, #0
        //  %r279 = add i32 %r128, 0

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
        //  store i32 %r279, i32* %r131

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
        //  %r136 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r277

        mov     x10, #8
        mul     x11, x9, x10
        adrp     x10, head
        add     x10, x10, #:lo12:head
        add     x10, x10, x11
        //  %r137 = load i32, i32* %r136

        ldr     x10, [x10]
        //  store i32 %r137, i32* %r134

        str     x10, [x12]
        //  %r139 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r277

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
        //  store i32 %r277, i32* %r144

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
        //  %r149 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r279

        mov     x9, #8
        mul     x10, x8, x9
        adrp     x9, head
        add     x9, x9, #:lo12:head
        add     x9, x9, x10
        //  %r150 = load i32, i32* %r149

        ldr     x9, [x9]
        //  store i32 %r150, i32* %r147

        str     x9, [x11]
        //  %r152 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r279

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

        //  %r281 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #0
        //  %r282 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_43_cond


        mov     x9, x8
        b     bb_while_5_43_cond
        //bb_while_5_43_cond:

bb_while_5_43_cond:

        //  %r286 = phi i32 [ %r282, %bb3 ], [ %r285, %bb_while_5_43_whilestms ]

        //  %r158 = icmp slt i32 %r286, 1005

        mov     x8, #1005
        cmp     x9, x8
        //  br i1 %r158, label %bb_while_5_43_whilestms, label %bb_while_5_43_bre


        mov     x10, x9
        b.lt     bb_while_5_43_whilestms
        b     bb_while_5_43_bre
        //bb_while_5_43_whilestms:

bb_while_5_43_whilestms:

        //  %r284 = phi i32 [ %r286, %bb_while_5_43_cond ]

        //  %r160 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r284

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
        //  %r163 = add i32 %r284, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r285 = add i32 %r163, 0

        mov     x8, x8
        //  br label %bb_while_5_43_cond


        mov     x9, x8
        b     bb_while_5_43_cond
        //bb_while_5_43_bre:

bb_while_5_43_bre:

        //  %r283 = phi i32 [ %r286, %bb_while_5_43_cond ]

        //  ret void

        mov     sp, x29
        ret
clear:

        //bb4:

bb4:

        //  %r288 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #0
        //  %r289 = add i32 1, 0

        mov     x8, #1
        mov     x8, x8
        //  br label %bb_while_5_51_cond


        mov     x9, x8
        b     bb_while_5_51_cond
        //bb_while_5_51_cond:

bb_while_5_51_cond:

        //  %r293 = phi i32 [ %r289, %bb4 ], [ %r292, %bb_while_5_51_whilestms ]

        //  %r166 = load i32, i32* @n

        adrp     x8, n
        add     x8, x8, #:lo12:n
        ldr     x8, [x8]
        //  %r167 = icmp sle i32 %r293, %r166

        cmp     x9, x8
        //  br i1 %r167, label %bb_while_5_51_whilestms, label %bb_while_5_51_bre


        mov     x10, x9
        b.le     bb_while_5_51_whilestms
        b     bb_while_5_51_bre
        //bb_while_5_51_whilestms:

bb_while_5_51_whilestms:

        //  %r291 = phi i32 [ %r293, %bb_while_5_51_cond ]

        //  %r169 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r291

        mov     x8, #8
        mul     x9, x10, x8
        adrp     x8, vis
        add     x8, x8, #:lo12:vis
        add     x9, x8, x9
        //  store i32 0, i32* %r169

        mov     x8, #0
        str     x8, [x9]
        //  %r171 = add i32 %r291, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r292 = add i32 %r171, 0

        mov     x8, x8
        //  br label %bb_while_5_51_cond


        mov     x9, x8
        b     bb_while_5_51_cond
        //bb_while_5_51_bre:

bb_while_5_51_bre:

        //  %r290 = phi i32 [ %r293, %bb_while_5_51_cond ]

        //  ret void

        mov     sp, x29
        ret
same:

        //bb5:

bb5:

        //  %r298 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x11, x1
        mov     x8, #0
        mov     x10, x8
        //  %r299 = add i32 0, 0

        mov     x8, #0
        //  %r300 = add i32 0, 0

        mov     x8, #0
        //  %r301 = add i32 %r172, 0

        mov     x8, x9
        //  %r302 = add i32 0, 0

        mov     x9, #0
        //  %r303 = add i32 %r174, 0

        mov     x9, x11
        //  %r177 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r301

        mov     x11, #8
        mul     x12, x8, x11
        adrp     x11, vis
        add     x11, x11, #:lo12:vis
        add     x12, x11, x12
        //  store i32 1, i32* %r177

        mov     x11, #1
        str     x11, [x12]
        //  %r180 = icmp eq i32 %r301, %r303

        cmp     x8, x9
        //  br i1 %r180, label %bb_if_5_59_true, label %bb_if_5_59_false


        b.eq     bb_if_5_59_true
        b     bb_if_5_59_false
        //bb_if_5_59_true:

bb_if_5_59_true:

        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_5_59_false:

bb_if_5_59_false:

        //  br label %bb_if_5_59_end


        b     bb_if_5_59_end
        //bb_if_5_59_end:

bb_if_5_59_end:

        //  %r183 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32 0, i32 %r301

        mov     x11, #8
        mul     x11, x8, x11
        adrp     x8, head
        add     x8, x8, #:lo12:head
        add     x8, x8, x11
        //  %r184 = load i32, i32* %r183

        ldr     x8, [x8]
        //  %r318 = add i32 %r184, 0

        mov     x8, x8
        //  br label %bb_while_5_63_cond


        mov     x12, x8
        mov     x11, x10
        b     bb_while_5_63_cond
        //bb_while_5_63_cond:

bb_while_5_63_cond:

        //  %r319 = phi i32 [ %r318, %bb_if_5_59_end ], [ %r308, %bb_if_9_65_end ]

        //  %r320 = phi i32 [ %r298, %bb_if_5_59_end ], [ %r307, %bb_if_9_65_end ]

        //  %r186 = sub i32 0, 1

        mov     x10, #0
        mov     x8, #1
        sub     x8, x10, x8
        //  %r187 = icmp ne i32 %r319, %r186

        cmp     x12, x8
        //  br i1 %r187, label %bb_while_5_63_whilestms, label %bb_while_5_63_bre


        mov     x8, x12
        b.ne     bb_while_5_63_whilestms
        b     bb_while_5_63_bre
        //bb_while_5_63_whilestms:

bb_while_5_63_whilestms:

        //  %r315 = phi i32 [ %r319, %bb_while_5_63_cond ]

        //  %r316 = phi i32 [ %r320, %bb_while_5_63_cond ]

        //  %r190 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32 0, i32 %r315

        mov     x10, #8
        mul     x11, x8, x10
        adrp     x10, to
        add     x10, x10, #:lo12:to
        add     x10, x10, x11
        //  %r191 = load i32, i32* %r190

        ldr     x10, [x10]
        //  %r317 = add i32 %r191, 0

        mov     x12, x10
        //  %r193 = getelementptr [1005 x i32 ], [1005 x i32 ]* @vis, i32 0, i32 %r317

        mov     x10, #8
        mul     x11, x12, x10
        adrp     x10, vis
        add     x10, x10, #:lo12:vis
        add     x10, x10, x11
        //  %r194 = load i32, i32* %r193

        ldr     x11, [x10]
        //  %r195 = icmp eq i32 %r194, 0

        mov     x10, #0
        cmp     x11, x10
        //  br i1 %r195, label %bb26_65_next, label %bb_if_9_65_false


        mov     x11, x8
        mov     x10, x12
        mov     x13, x8
        mov     x8, x12
        b.eq     bb26_65_next
        b     bb_if_9_65_false
        //bb26_65_next:

bb26_65_next:

        //  %r313 = phi i32 [ %r315, %bb_while_5_63_whilestms ]

        //  %r314 = phi i32 [ %r317, %bb_while_5_63_whilestms ]

        //  %r198 = call i32 @same(i32 %r314, i32 %r303)

        mov     x0, x10
        mov     x1, x9
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
        mov     x12, x0
        //  %r199 = icmp ne i32 %r198, 0

        mov     x8, #0
        cmp     x12, x8
        //  br i1 %r199, label %bb_if_9_65_true, label %bb_if_9_65_false


        mov     x13, x11
        mov     x8, x10
        b.ne     bb_if_9_65_true
        b     bb_if_9_65_false
        //bb_if_9_65_true:

bb_if_9_65_true:

        //  %r311 = phi i32 [ %r313, %bb26_65_next ]

        //  %r312 = phi i32 [ %r314, %bb26_65_next ]

        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
        //bb_if_9_65_false:

bb_if_9_65_false:

        //  %r309 = phi i32 [ %r315, %bb_while_5_63_whilestms ], [ %r313, %bb26_65_next ]

        //  %r310 = phi i32 [ %r317, %bb_while_5_63_whilestms ], [ %r314, %bb26_65_next ]

        //  br label %bb_if_9_65_end


        mov     x10, x13
        mov     x11, x8
        b     bb_if_9_65_end
        //bb_if_9_65_end:

bb_if_9_65_end:

        //  %r306 = phi i32 [ %r309, %bb_if_9_65_false ]

        //  %r307 = phi i32 [ %r310, %bb_if_9_65_false ]

        //  %r201 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32 0, i32 %r306

        mov     x8, #8
        mul     x10, x10, x8
        adrp     x8, next
        add     x8, x8, #:lo12:next
        add     x8, x8, x10
        //  %r202 = load i32, i32* %r201

        ldr     x8, [x8]
        //  %r308 = add i32 %r202, 0

        mov     x8, x8
        //  br label %bb_while_5_63_cond


        mov     x12, x8
        mov     x11, x11
        b     bb_while_5_63_cond
        //bb_while_5_63_bre:

bb_while_5_63_bre:

        //  %r304 = phi i32 [ %r319, %bb_while_5_63_cond ]

        //  %r305 = phi i32 [ %r320, %bb_while_5_63_cond ]

        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb6:

bb6:

        //  call void @_sysy_starttime(i32 74)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #74
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
        //  %r203 = call i32 @quickread()

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
        //  store i32 %r203, i32* @n

        adrp     x8, n
        add     x8, x8, #:lo12:n
        str     x9, [x8]
        //  %r204 = call i32 @quickread()

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
        //  store i32 %r204, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        str     x9, [x8]
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
        //  %r324 = add i32 0, 0

        mov     x8, #0
        //  %r325 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  %r326 = add i32 0, 0

        mov     x9, #0
        //  %r327 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  %r328 = add i32 0, 0

        mov     x9, #0
        //  %r329 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  br label %bb_while_5_80_cond


        mov     x11, x9
        mov     x10, x10
        mov     x9, x8
        b     bb_while_5_80_cond
        //bb_while_5_80_cond:

bb_while_5_80_cond:

        //  %r363 = phi i32 [ %r329, %bb6 ], [ %r357, %bb_if_9_85_end ]

        //  %r364 = phi i32 [ %r327, %bb6 ], [ %r358, %bb_if_9_85_end ]

        //  %r365 = phi i32 [ %r325, %bb6 ], [ %r359, %bb_if_9_85_end ]

        //  %r208 = load i32, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        ldr     x12, [x8]
        //  %r209 = icmp ne i32 %r208, 0

        mov     x8, #0
        cmp     x12, x8
        //  br i1 %r209, label %bb_while_5_80_whilestms, label %bb_while_5_80_bre


        mov     x13, x11
        mov     x12, x10
        b.ne     bb_while_5_80_whilestms
        b     bb_while_5_80_bre
        //bb_while_5_80_whilestms:

bb_while_5_80_whilestms:

        //  %r350 = phi i32 [ %r363, %bb_while_5_80_cond ]

        //  %r351 = phi i32 [ %r364, %bb_while_5_80_cond ]

        //  %r352 = phi i32 [ %r365, %bb_while_5_80_cond ]

        //  %r210 = call i32 @getch()

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
        //  %r353 = add i32 %r210, 0

        mov     x8, x8
        //  br label %bb_while_9_82_cond


        mov     x13, x13
        mov     x12, x12
        mov     x11, x8
        b     bb_while_9_82_cond
        //bb_while_9_82_cond:

bb_while_9_82_cond:

        //  %r360 = phi i32 [ %r350, %bb_while_5_80_whilestms ], [ %r340, %bb_while_9_82_whilestms ]

        //  %r361 = phi i32 [ %r351, %bb_while_5_80_whilestms ], [ %r341, %bb_while_9_82_whilestms ]

        //  %r362 = phi i32 [ %r353, %bb_while_5_80_whilestms ], [ %r343, %bb_while_9_82_whilestms ]

        //  %r212 = icmp ne i32 %r362, 81

        mov     x8, #81
        cmp     x11, x8
        //  br i1 %r212, label %bb28_82_next, label %bb_while_9_82_bre


        mov     x10, x13
        mov     x9, x12
        mov     x8, x11
        mov     x13, x13
        mov     x12, x12
        mov     x11, x11
        b.ne     bb28_82_next
        b     bb_while_9_82_bre
        //bb28_82_next:

bb28_82_next:

        //  %r347 = phi i32 [ %r360, %bb_while_9_82_cond ]

        //  %r348 = phi i32 [ %r361, %bb_while_9_82_cond ]

        //  %r349 = phi i32 [ %r362, %bb_while_9_82_cond ]

        //  %r214 = icmp ne i32 %r349, 85

        mov     x11, #85
        cmp     x8, x11
        //  br i1 %r214, label %bb_while_9_82_whilestms, label %bb_while_9_82_bre


        mov     x15, x10
        mov     x14, x9
        mov     x13, x10
        mov     x12, x9
        mov     x11, x8
        b.ne     bb_while_9_82_whilestms
        b     bb_while_9_82_bre
        //bb_while_9_82_whilestms:

bb_while_9_82_whilestms:

        //  %r340 = phi i32 [ %r347, %bb28_82_next ]

        //  %r341 = phi i32 [ %r348, %bb28_82_next ]

        //  %r342 = phi i32 [ %r349, %bb28_82_next ]

        //  %r215 = call i32 @getch()

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
        //  %r343 = add i32 %r215, 0

        mov     x8, x8
        //  br label %bb_while_9_82_cond


        mov     x13, x15
        mov     x12, x14
        mov     x11, x8
        b     bb_while_9_82_cond
        //bb_while_9_82_bre:

bb_while_9_82_bre:

        //  %r344 = phi i32 [ %r360, %bb_while_9_82_cond ], [ %r347, %bb28_82_next ]

        //  %r345 = phi i32 [ %r361, %bb_while_9_82_cond ], [ %r348, %bb28_82_next ]

        //  %r346 = phi i32 [ %r362, %bb_while_9_82_cond ], [ %r349, %bb28_82_next ]

        //  %r217 = icmp eq i32 %r346, 81

        mov     x8, #81
        cmp     x11, x8
        //  br i1 %r217, label %bb_if_9_85_true, label %bb_if_9_85_false


        mov     x8, x11
        mov     x12, x11
        b.eq     bb_if_9_85_true
        b     bb_if_9_85_false
        //bb_if_9_85_true:

bb_if_9_85_true:

        //  %r335 = phi i32 [ %r344, %bb_while_9_82_bre ]

        //  %r336 = phi i32 [ %r345, %bb_while_9_82_bre ]

        //  %r337 = phi i32 [ %r346, %bb_while_9_82_bre ]

        //  %r218 = call i32 @quickread()

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
        //  %r338 = add i32 %r218, 0

        mov     x12, x9
        //  %r219 = call i32 @quickread()

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
        //  %r339 = add i32 %r219, 0

        mov     x10, x9
        //  call void @clear()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     clear
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  %r222 = call i32 @same(i32 %r338, i32 %r339)

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
        //  call void @putint(i32 %r222)

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
        //  br label %bb_if_9_85_end


        mov     x11, x10
        mov     x10, x12
        mov     x9, x8
        b     bb_if_9_85_end
        //bb_if_9_85_false:

bb_if_9_85_false:

        //  %r330 = phi i32 [ %r344, %bb_while_9_82_bre ]

        //  %r331 = phi i32 [ %r345, %bb_while_9_82_bre ]

        //  %r332 = phi i32 [ %r346, %bb_while_9_82_bre ]

        //  %r223 = call i32 @quickread()

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
        //  %r333 = add i32 %r223, 0

        mov     x9, x8
        //  %r224 = call i32 @quickread()

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
        //  %r334 = add i32 %r224, 0

        mov     x8, x8
        //  call void @addedge(i32 %r333, i32 %r334)

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
        //  br label %bb_if_9_85_end


        mov     x11, x8
        mov     x10, x9
        mov     x9, x12
        b     bb_if_9_85_end
        //bb_if_9_85_end:

bb_if_9_85_end:

        //  %r357 = phi i32 [ %r339, %bb_if_9_85_true ], [ %r334, %bb_if_9_85_false ]

        //  %r358 = phi i32 [ %r338, %bb_if_9_85_true ], [ %r333, %bb_if_9_85_false ]

        //  %r359 = phi i32 [ %r337, %bb_if_9_85_true ], [ %r332, %bb_if_9_85_false ]

        //  %r227 = load i32, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        ldr     x12, [x8]
        //  %r228 = sub i32 %r227, 1

        mov     x8, #1
        sub     x12, x12, x8
        //  store i32 %r228, i32* @m

        adrp     x8, m
        add     x8, x8, #:lo12:m
        str     x12, [x8]
        //  br label %bb_while_5_80_cond


        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        b     bb_while_5_80_cond
        //bb_while_5_80_bre:

bb_while_5_80_bre:

        //  %r354 = phi i32 [ %r363, %bb_while_5_80_cond ]

        //  %r355 = phi i32 [ %r364, %bb_while_5_80_cond ]

        //  %r356 = phi i32 [ %r365, %bb_while_5_80_cond ]

        //  call void @_sysy_stoptime(i32 96)

        mov     x8, #96
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
