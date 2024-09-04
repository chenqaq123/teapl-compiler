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

        //102:x29,#-80

        //bb1:

bb1:

        //  %r159 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, #136
        sub     sp, sp, x16
        mov     x8, #0
        //  %r160 = add i32 0, 0

        mov     x8, #0
        //  %r161 = add i32 0, 0

        mov     x8, #0
        //  %r162 = add i32 0, 0

        mov     x8, #0
        //  %r163 = add i32 0, 0

        mov     x8, #0
        //  call void @_sysy_starttime(i32 3)

        mov     x8, #3
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
        //  %r164 = add i32 0, 0

        mov     x8, #0
        //  %r165 = add i32 0, 0

        mov     x8, #0
        //  %r102 = alloca [ 10 x i32 ]

        //  %r166 = add i32 0, 0

        mov     x8, #0
        //  %r167 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_9_cond


        mov     x9, x8
        b     bb_while_5_9_cond
        //bb_while_5_9_cond:

bb_while_5_9_cond:

        //  %r228 = phi i32 [ %r167, %bb1 ], [ %r227, %bb_while_5_9_whilestms ]

        //  %r104 = icmp slt i32 %r228, 10

        mov     x8, #10
        cmp     x9, x8
        //  br i1 %r104, label %bb_while_5_9_whilestms, label %bb_while_5_9_bre


        mov     x10, x9
        mov     x13, x9
        b.lt     bb_while_5_9_whilestms
        b     bb_while_5_9_bre
        //bb_while_5_9_whilestms:

bb_while_5_9_whilestms:

        //  %r226 = phi i32 [ %r228, %bb_while_5_9_cond ]

        //  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r226

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r108 = add i32 %r226, 1

        mov     x8, #1
        add     x8, x10, x8
        //  store i32 %r108, i32* %r106

        str     x8, [x9]
        //  %r110 = add i32 %r226, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r227 = add i32 %r110, 0

        mov     x8, x8
        //  br label %bb_while_5_9_cond


        mov     x9, x8
        b     bb_while_5_9_cond
        //bb_while_5_9_bre:

bb_while_5_9_bre:

        //  %r220 = phi i32 [ %r228, %bb_while_5_9_cond ]

        //  %r221 = add i32 10, 0

        mov     x8, #10
        mov     x8, x8
        //  %r116 = call i32 @getint()

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
        mov     x9, x0
        //  %r222 = add i32 %r116, 0

        mov     x11, x9
        //  %r118 = sub i32 %r221, 1

        mov     x9, #1
        sub     x9, x8, x9
        //  %r223 = add i32 %r118, 0

        mov     x12, x9
        //  %r224 = add i32 0, 0

        mov     x9, #0
        mov     x10, x9
        //  %r121 = add i32 %r223, %r224

        add     x14, x12, x10
        //  %r122 = sdiv i32 %r121, 2

        mov     x9, #2
        sdiv     x9, x14, x9
        //  %r225 = add i32 %r122, 0

        mov     x9, x9
        //  br label %bb_while_5_24_cond


        mov     x15, x11
        mov     x14, x13
        mov     x11, x10
        mov     x10, x12
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_24_cond
        //bb_while_5_24_cond:

bb_while_5_24_cond:

        //  %r214 = phi i32 [ %r222, %bb_while_5_9_bre ], [ %r181, %bb_if_9_27_end ]

        //  %r215 = phi i32 [ %r220, %bb_while_5_9_bre ], [ %r182, %bb_if_9_27_end ]

        //  %r216 = phi i32 [ %r224, %bb_while_5_9_bre ], [ %r183, %bb_if_9_27_end ]

        //  %r217 = phi i32 [ %r223, %bb_while_5_9_bre ], [ %r184, %bb_if_9_27_end ]

        //  %r218 = phi i32 [ %r225, %bb_while_5_9_bre ], [ %r185, %bb_if_9_27_end ]

        //  %r219 = phi i32 [ %r221, %bb_while_5_9_bre ], [ %r186, %bb_if_9_27_end ]

        //  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r218

        mov     x12, #8
        mul     x13, x9, x12
        mov     x0, #-80
        add     x12, x29, x0
        add     x12, x12, x13
        //  %r125 = load i32, i32* %r124

        ldr     x12, [x12]
        //  %r127 = icmp ne i32 %r125, %r214

        cmp     x12, x15
        //  br i1 %r127, label %bb24_24_next, label %bb_while_5_24_bre


        mov     x16, x15
        str     x16, [sp,#24]
        mov     x16, x14
        str     x16, [sp,#16]
        mov     x16, x11
        str     x16, [sp,#8]
        mov     x16, x10
        str     x16, [sp]
        mov     x13, x9
        mov     x12, x8
        mov     x16, x15
        str     x16, [sp,#104]
        mov     x16, x14
        str     x16, [sp,#96]
        mov     x16, x11
        str     x16, [sp,#88]
        mov     x16, x10
        str     x16, [sp,#80]
        mov     x16, x9
        str     x16, [sp,#72]
        mov     x16, x8
        str     x16, [sp,#64]
        b.ne     bb24_24_next
        b     bb_while_5_24_bre
        //bb24_24_next:

bb24_24_next:

        //  %r208 = phi i32 [ %r214, %bb_while_5_24_cond ]

        //  %r209 = phi i32 [ %r215, %bb_while_5_24_cond ]

        //  %r210 = phi i32 [ %r216, %bb_while_5_24_cond ]

        //  %r211 = phi i32 [ %r217, %bb_while_5_24_cond ]

        //  %r212 = phi i32 [ %r218, %bb_while_5_24_cond ]

        //  %r213 = phi i32 [ %r219, %bb_while_5_24_cond ]

        //  %r130 = icmp slt i32 %r210, %r211

        ldr     x16, [sp,#8]
        ldr     x17, [sp]
        cmp     x16, x17
        //  br i1 %r130, label %bb_while_5_24_whilestms, label %bb_while_5_24_bre


        ldr     x16, [sp,#24]
        mov     x15, x16
        ldr     x16, [sp,#16]
        mov     x14, x16
        ldr     x16, [sp,#8]
        mov     x11, x16
        ldr     x16, [sp]
        mov     x9, x16
        mov     x10, x12
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#104]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#96]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#88]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#80]
        mov     x16, x13
        str     x16, [sp,#72]
        mov     x16, x12
        str     x16, [sp,#64]
        b.lt     bb_while_5_24_whilestms
        b     bb_while_5_24_bre
        //bb_while_5_24_whilestms:

bb_while_5_24_whilestms:

        //  %r201 = phi i32 [ %r208, %bb24_24_next ]

        //  %r202 = phi i32 [ %r209, %bb24_24_next ]

        //  %r203 = phi i32 [ %r210, %bb24_24_next ]

        //  %r204 = phi i32 [ %r211, %bb24_24_next ]

        //  %r205 = phi i32 [ %r212, %bb24_24_next ]

        //  %r206 = phi i32 [ %r213, %bb24_24_next ]

        //  %r133 = add i32 %r204, %r203

        add     x12, x9, x11
        //  %r134 = sdiv i32 %r133, 2

        mov     x8, #2
        sdiv     x8, x12, x8
        //  %r207 = add i32 %r134, 0

        mov     x8, x8
        //  %r137 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r207

        mov     x12, #8
        mul     x13, x8, x12
        mov     x0, #-80
        add     x12, x29, x0
        add     x12, x12, x13
        //  %r138 = load i32, i32* %r137

        ldr     x12, [x12]
        //  %r139 = icmp slt i32 %r201, %r138

        cmp     x15, x12
        //  br i1 %r139, label %bb_if_9_27_true, label %bb_if_9_27_false


        mov     x16, x15
        str     x16, [sp,#48]
        mov     x16, x14
        str     x16, [sp,#40]
        mov     x16, x11
        str     x16, [sp,#32]
        mov     x13, x8
        mov     x12, x10
        mov     x15, x15
        mov     x14, x14
        mov     x11, x9
        mov     x9, x8
        mov     x8, x10
        b.lt     bb_if_9_27_true
        b     bb_if_9_27_false
        //bb_if_9_27_true:

bb_if_9_27_true:

        //  %r194 = phi i32 [ %r201, %bb_while_5_24_whilestms ]

        //  %r195 = phi i32 [ %r202, %bb_while_5_24_whilestms ]

        //  %r196 = phi i32 [ %r203, %bb_while_5_24_whilestms ]

        //  %r197 = phi i32 [ %r204, %bb_while_5_24_whilestms ]

        //  %r198 = phi i32 [ %r207, %bb_while_5_24_whilestms ]

        //  %r199 = phi i32 [ %r206, %bb_while_5_24_whilestms ]

        //  %r141 = sub i32 %r198, 1

        mov     x8, #1
        sub     x8, x13, x8
        //  %r200 = add i32 %r141, 0

        mov     x8, x8
        //  br label %bb_if_9_27_end


        ldr     x16, [sp,#48]
        mov     x15, x16
        ldr     x16, [sp,#40]
        mov     x14, x16
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#56]
        mov     x10, x8
        mov     x9, x13
        mov     x8, x12
        b     bb_if_9_27_end
        //bb_if_9_27_false:

bb_if_9_27_false:

        //  %r187 = phi i32 [ %r201, %bb_while_5_24_whilestms ]

        //  %r188 = phi i32 [ %r202, %bb_while_5_24_whilestms ]

        //  %r189 = phi i32 [ %r203, %bb_while_5_24_whilestms ]

        //  %r190 = phi i32 [ %r204, %bb_while_5_24_whilestms ]

        //  %r191 = phi i32 [ %r207, %bb_while_5_24_whilestms ]

        //  %r192 = phi i32 [ %r206, %bb_while_5_24_whilestms ]

        //  %r143 = add i32 %r191, 1

        mov     x10, #1
        add     x10, x9, x10
        //  %r193 = add i32 %r143, 0

        mov     x10, x10
        //  br label %bb_if_9_27_end


        mov     x15, x15
        mov     x14, x14
        mov     x16, x10
        str     x16, [sp,#56]
        mov     x10, x11
        mov     x9, x9
        mov     x8, x8
        b     bb_if_9_27_end
        //bb_if_9_27_end:

bb_if_9_27_end:

        //  %r181 = phi i32 [ %r194, %bb_if_9_27_true ], [ %r187, %bb_if_9_27_false ]

        //  %r182 = phi i32 [ %r195, %bb_if_9_27_true ], [ %r188, %bb_if_9_27_false ]

        //  %r183 = phi i32 [ %r196, %bb_if_9_27_true ], [ %r193, %bb_if_9_27_false ]

        //  %r184 = phi i32 [ %r200, %bb_if_9_27_true ], [ %r190, %bb_if_9_27_false ]

        //  %r185 = phi i32 [ %r198, %bb_if_9_27_true ], [ %r191, %bb_if_9_27_false ]

        //  %r186 = phi i32 [ %r199, %bb_if_9_27_true ], [ %r192, %bb_if_9_27_false ]

        //  br label %bb_while_5_24_cond


        mov     x15, x15
        mov     x14, x14
        ldr     x16, [sp,#56]
        mov     x11, x16
        mov     x10, x10
        mov     x9, x9
        mov     x8, x8
        b     bb_while_5_24_cond
        //bb_while_5_24_bre:

bb_while_5_24_bre:

        //  %r175 = phi i32 [ %r214, %bb_while_5_24_cond ], [ %r208, %bb24_24_next ]

        //  %r176 = phi i32 [ %r215, %bb_while_5_24_cond ], [ %r209, %bb24_24_next ]

        //  %r177 = phi i32 [ %r216, %bb_while_5_24_cond ], [ %r210, %bb24_24_next ]

        //  %r178 = phi i32 [ %r217, %bb_while_5_24_cond ], [ %r211, %bb24_24_next ]

        //  %r179 = phi i32 [ %r218, %bb_while_5_24_cond ], [ %r212, %bb24_24_next ]

        //  %r180 = phi i32 [ %r219, %bb_while_5_24_cond ], [ %r213, %bb24_24_next ]

        //  %r146 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r179

        mov     x8, #8
        ldr     x16, [sp,#72]
        mul     x9, x16, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r147 = load i32, i32* %r146

        ldr     x8, [x8]
        //  %r148 = icmp eq i32 %r175, %r147

        ldr     x16, [sp,#104]
        cmp     x16, x8
        //  br i1 %r148, label %bb_if_5_37_true, label %bb_if_5_37_false


        ldr     x16, [sp,#104]
        mov     x13, x16
        ldr     x16, [sp,#96]
        mov     x12, x16
        ldr     x16, [sp,#88]
        mov     x11, x16
        ldr     x16, [sp,#80]
        mov     x10, x16
        ldr     x16, [sp,#72]
        mov     x9, x16
        ldr     x16, [sp,#64]
        mov     x8, x16
        ldr     x16, [sp,#96]
        mov     x17, x16
        str     x17, [sp,#128]
        ldr     x16, [sp,#88]
        mov     x17, x16
        str     x17, [sp,#120]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#112]
        ldr     x16, [sp,#72]
        mov     x15, x16
        ldr     x16, [sp,#64]
        mov     x14, x16
        b.eq     bb_if_5_37_true
        b     bb_if_5_37_false
        //bb_if_5_37_true:

bb_if_5_37_true:

        //  %r229 = phi i32 [ %r175, %bb_while_5_24_bre ]

        //  %r230 = phi i32 [ %r176, %bb_while_5_24_bre ]

        //  %r231 = phi i32 [ %r177, %bb_while_5_24_bre ]

        //  %r232 = phi i32 [ %r178, %bb_while_5_24_bre ]

        //  %r233 = phi i32 [ %r179, %bb_while_5_24_bre ]

        //  %r234 = phi i32 [ %r180, %bb_while_5_24_bre ]

        //  call void @putint(i32 %r229)

        mov     x0, x13
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
        //  br label %bb_if_5_37_end


        b     bb_if_5_37_end
        //bb_if_5_37_false:

bb_if_5_37_false:

        //  %r168 = phi i32 [ %r175, %bb_while_5_24_bre ]

        //  %r169 = phi i32 [ %r176, %bb_while_5_24_bre ]

        //  %r170 = phi i32 [ %r177, %bb_while_5_24_bre ]

        //  %r171 = phi i32 [ %r178, %bb_while_5_24_bre ]

        //  %r172 = phi i32 [ %r179, %bb_while_5_24_bre ]

        //  %r173 = phi i32 [ %r180, %bb_while_5_24_bre ]

        //  %r174 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  call void @putint(i32 %r174)

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
        //  br label %bb_if_5_37_end


        b     bb_if_5_37_end
        //bb_if_5_37_end:

bb_if_5_37_end:

        //  %r235 = phi i32 [ %r229, %bb_if_5_37_true ], [ %r174, %bb_if_5_37_false ]

        //  %r236 = phi i32 [ %r230, %bb_if_5_37_true ], [ %r169, %bb_if_5_37_false ]

        //  %r237 = phi i32 [ %r231, %bb_if_5_37_true ], [ %r170, %bb_if_5_37_false ]

        //  %r238 = phi i32 [ %r232, %bb_if_5_37_true ], [ %r171, %bb_if_5_37_false ]

        //  %r239 = phi i32 [ %r233, %bb_if_5_37_true ], [ %r172, %bb_if_5_37_false ]

        //  %r240 = phi i32 [ %r234, %bb_if_5_37_true ], [ %r173, %bb_if_5_37_false ]

        //  %r241 = add i32 10, 0

        mov     x8, #10
        mov     x8, x8
        //  call void @putch(i32 %r241)

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
        //  ret i32 0

        mov     x8, #0
        mov     x0, x8
        mov     sp, x29
        ret
