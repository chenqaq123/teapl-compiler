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

        //  %r151 = add i32 0, 0

        mov     x16, #80
        sub     sp, sp, #312
        sub     sp, sp, x16
        mov     x8, #0
        //  %r152 = add i32 0, 0

        mov     x8, #0
        //  %r153 = add i32 0, 0

        mov     x8, #0
        //  %r154 = add i32 0, 0

        mov     x8, #0
        //  %r155 = add i32 0, 0

        mov     x8, #0
        //  %r156 = add i32 0, 0

        mov     x8, #0
        //  %r157 = add i32 0, 0

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
        //  %r158 = add i32 0, 0

        mov     x8, #0
        //  %r159 = add i32 0, 0

        mov     x8, #0
        //  %r102 = alloca [ 10 x i32 ]

        //  %r160 = add i32 0, 0

        mov     x8, #0
        //  %r161 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_9_cond


        mov     x9, x8
        b     bb_while_5_9_cond
        //bb_while_5_9_cond:

bb_while_5_9_cond:

        //  %r241 = phi i32 [ %r161, %bb1 ], [ %r240, %bb_while_5_9_whilestms ]

        //  %r104 = icmp slt i32 %r241, 10

        mov     x8, #10
        cmp     x9, x8
        //  br i1 %r104, label %bb_while_5_9_whilestms, label %bb_while_5_9_bre


        mov     x10, x9
        b.lt     bb_while_5_9_whilestms
        b     bb_while_5_9_bre
        //bb_while_5_9_whilestms:

bb_while_5_9_whilestms:

        //  %r239 = phi i32 [ %r241, %bb_while_5_9_cond ]

        //  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r239

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x9, x8, x9
        //  %r108 = add i32 %r239, 1

        mov     x8, #1
        add     x8, x10, x8
        //  store i32 %r108, i32* %r106

        str     x8, [x9]
        //  %r110 = add i32 %r239, 1

        mov     x8, #1
        add     x8, x10, x8
        //  %r240 = add i32 %r110, 0

        mov     x8, x8
        //  br label %bb_while_5_9_cond


        mov     x9, x8
        b     bb_while_5_9_cond
        //bb_while_5_9_bre:

bb_while_5_9_bre:

        //  %r230 = phi i32 [ %r241, %bb_while_5_9_cond ]

        //  %r231 = add i32 10, 0

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
        //  %r232 = add i32 %r116, 0

        mov     x15, x9
        //  %r118 = sub i32 %r231, 1

        mov     x9, #1
        sub     x9, x8, x9
        //  %r233 = add i32 %r118, 0

        mov     x12, x9
        //  %r234 = add i32 0, 0

        mov     x9, #0
        mov     x9, x9
        //  %r121 = add i32 %r233, %r234

        add     x11, x12, x9
        //  %r122 = sdiv i32 %r121, 2

        mov     x10, #2
        sdiv     x10, x11, x10
        //  %r235 = add i32 %r122, 0

        mov     x10, x10
        //  %r236 = add i32 0, 0

        mov     x11, #0
        mov     x13, x11
        //  %r237 = add i32 0, 0

        mov     x11, #0
        mov     x14, x11
        //  %r238 = add i32 0, 0

        mov     x11, #0
        mov     x11, x11
        //  br label %bb_while_5_29_cond


        mov     x16, x15
        str     x16, [sp]
        mov     x15, x14
        mov     x14, x13
        mov     x13, x12
        mov     x12, x11
        mov     x11, x10
        mov     x10, x9
        mov     x9, x8
        b     bb_while_5_29_cond
        //bb_while_5_29_cond:

bb_while_5_29_cond:

        //  %r222 = phi i32 [ %r232, %bb_while_5_9_bre ], [ %r179, %bb_if_9_31_end ]

        //  %r223 = phi i32 [ %r237, %bb_while_5_9_bre ], [ %r187, %bb_if_9_31_end ]

        //  %r224 = phi i32 [ %r236, %bb_while_5_9_bre ], [ %r181, %bb_if_9_31_end ]

        //  %r225 = phi i32 [ %r233, %bb_while_5_9_bre ], [ %r182, %bb_if_9_31_end ]

        //  %r226 = phi i32 [ %r238, %bb_while_5_9_bre ], [ %r183, %bb_if_9_31_end ]

        //  %r227 = phi i32 [ %r235, %bb_while_5_9_bre ], [ %r184, %bb_if_9_31_end ]

        //  %r228 = phi i32 [ %r234, %bb_while_5_9_bre ], [ %r185, %bb_if_9_31_end ]

        //  %r229 = phi i32 [ %r231, %bb_while_5_9_bre ], [ %r186, %bb_if_9_31_end ]

        //  %r126 = icmp slt i32 %r223, 10

        mov     x8, #10
        cmp     x15, x8
        //  br i1 %r126, label %bb19_29_next, label %bb_while_5_29_bre


        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#64]
        mov     x16, x15
        str     x16, [sp,#56]
        mov     x16, x14
        str     x16, [sp,#48]
        mov     x16, x13
        str     x16, [sp,#40]
        mov     x16, x12
        str     x16, [sp,#32]
        mov     x16, x11
        str     x16, [sp,#24]
        mov     x16, x10
        str     x16, [sp,#16]
        mov     x16, x9
        str     x16, [sp,#8]
        ldr     x16, [sp]
        mov     x17, x16
        str     x17, [sp,#248]
        mov     x16, x15
        str     x16, [sp,#240]
        mov     x16, x14
        str     x16, [sp,#232]
        mov     x16, x13
        str     x16, [sp,#224]
        mov     x16, x12
        str     x16, [sp,#216]
        mov     x16, x11
        str     x16, [sp,#208]
        mov     x16, x10
        str     x16, [sp,#200]
        mov     x16, x9
        str     x16, [sp,#192]
        b.lt     bb19_29_next
        b     bb_while_5_29_bre
        //bb19_29_next:

bb19_29_next:

        //  %r214 = phi i32 [ %r222, %bb_while_5_29_cond ]

        //  %r215 = phi i32 [ %r223, %bb_while_5_29_cond ]

        //  %r216 = phi i32 [ %r224, %bb_while_5_29_cond ]

        //  %r217 = phi i32 [ %r225, %bb_while_5_29_cond ]

        //  %r218 = phi i32 [ %r226, %bb_while_5_29_cond ]

        //  %r219 = phi i32 [ %r227, %bb_while_5_29_cond ]

        //  %r220 = phi i32 [ %r228, %bb_while_5_29_cond ]

        //  %r221 = phi i32 [ %r229, %bb_while_5_29_cond ]

        //  %r128 = icmp eq i32 %r216, 0

        mov     x8, #0
        ldr     x16, [sp,#48]
        cmp     x16, x8
        //  br i1 %r128, label %bb_while_5_29_whilestms, label %bb_while_5_29_bre


        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#80]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#72]
        ldr     x16, [sp,#48]
        mov     x15, x16
        ldr     x16, [sp,#40]
        mov     x14, x16
        ldr     x16, [sp,#32]
        mov     x13, x16
        ldr     x16, [sp,#24]
        mov     x12, x16
        ldr     x16, [sp,#16]
        mov     x11, x16
        ldr     x16, [sp,#8]
        mov     x10, x16
        ldr     x16, [sp,#64]
        mov     x17, x16
        str     x17, [sp,#248]
        ldr     x16, [sp,#56]
        mov     x17, x16
        str     x17, [sp,#240]
        ldr     x16, [sp,#48]
        mov     x17, x16
        str     x17, [sp,#232]
        ldr     x16, [sp,#40]
        mov     x17, x16
        str     x17, [sp,#224]
        ldr     x16, [sp,#32]
        mov     x17, x16
        str     x17, [sp,#216]
        ldr     x16, [sp,#24]
        mov     x17, x16
        str     x17, [sp,#208]
        ldr     x16, [sp,#16]
        mov     x17, x16
        str     x17, [sp,#200]
        ldr     x16, [sp,#8]
        mov     x17, x16
        str     x17, [sp,#192]
        b.eq     bb_while_5_29_whilestms
        b     bb_while_5_29_bre
        //bb_while_5_29_whilestms:

bb_while_5_29_whilestms:

        //  %r206 = phi i32 [ %r214, %bb19_29_next ]

        //  %r207 = phi i32 [ %r215, %bb19_29_next ]

        //  %r208 = phi i32 [ %r216, %bb19_29_next ]

        //  %r209 = phi i32 [ %r217, %bb19_29_next ]

        //  %r210 = phi i32 [ %r218, %bb19_29_next ]

        //  %r211 = phi i32 [ %r219, %bb19_29_next ]

        //  %r212 = phi i32 [ %r220, %bb19_29_next ]

        //  %r213 = phi i32 [ %r221, %bb19_29_next ]

        //  %r130 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r207

        mov     x8, #8
        ldr     x16, [sp,#72]
        mul     x9, x16, x8
        mov     x0, #-80
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r131 = load i32, i32* %r130

        ldr     x8, [x8]
        //  %r133 = icmp eq i32 %r131, %r206

        ldr     x16, [sp,#80]
        cmp     x8, x16
        //  br i1 %r133, label %bb_if_9_31_true, label %bb_if_9_31_false


        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#128]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#120]
        mov     x16, x14
        str     x16, [sp,#112]
        mov     x16, x12
        str     x16, [sp,#104]
        mov     x16, x11
        str     x16, [sp,#96]
        mov     x16, x10
        str     x16, [sp,#88]
        ldr     x16, [sp,#80]
        mov     x17, x16
        str     x17, [sp,#144]
        ldr     x16, [sp,#72]
        mov     x17, x16
        str     x17, [sp,#136]
        mov     x15, x15
        mov     x14, x14
        mov     x13, x13
        mov     x12, x12
        mov     x9, x11
        mov     x8, x10
        b.eq     bb_if_9_31_true
        b     bb_if_9_31_false
        //bb_if_9_31_true:

bb_if_9_31_true:

        //  %r196 = phi i32 [ %r206, %bb_while_5_29_whilestms ]

        //  %r197 = phi i32 [ %r207, %bb_while_5_29_whilestms ]

        //  %r198 = phi i32 [ %r208, %bb_while_5_29_whilestms ]

        //  %r199 = phi i32 [ %r209, %bb_while_5_29_whilestms ]

        //  %r200 = phi i32 [ %r210, %bb_while_5_29_whilestms ]

        //  %r201 = phi i32 [ %r211, %bb_while_5_29_whilestms ]

        //  %r202 = phi i32 [ %r212, %bb_while_5_29_whilestms ]

        //  %r203 = phi i32 [ %r213, %bb_while_5_29_whilestms ]

        //  %r204 = add i32 1, 0

        mov     x8, #1
        mov     x9, x8
        //  %r205 = add i32 %r197, 0

        ldr     x16, [sp,#120]
        mov     x8, x16
        //  br label %bb_if_9_31_end


        ldr     x16, [sp,#128]
        mov     x17, x16
        str     x17, [sp,#184]
        ldr     x16, [sp,#120]
        mov     x17, x16
        str     x17, [sp,#176]
        mov     x16, x9
        str     x16, [sp,#168]
        ldr     x16, [sp,#112]
        mov     x17, x16
        str     x17, [sp,#160]
        mov     x16, x8
        str     x16, [sp,#152]
        ldr     x16, [sp,#104]
        mov     x11, x16
        ldr     x16, [sp,#96]
        mov     x10, x16
        ldr     x16, [sp,#88]
        mov     x9, x16
        b     bb_if_9_31_end
        //bb_if_9_31_false:

bb_if_9_31_false:

        //  %r188 = phi i32 [ %r206, %bb_while_5_29_whilestms ]

        //  %r189 = phi i32 [ %r207, %bb_while_5_29_whilestms ]

        //  %r190 = phi i32 [ %r208, %bb_while_5_29_whilestms ]

        //  %r191 = phi i32 [ %r209, %bb_while_5_29_whilestms ]

        //  %r192 = phi i32 [ %r210, %bb_while_5_29_whilestms ]

        //  %r193 = phi i32 [ %r211, %bb_while_5_29_whilestms ]

        //  %r194 = phi i32 [ %r212, %bb_while_5_29_whilestms ]

        //  %r195 = phi i32 [ %r213, %bb_while_5_29_whilestms ]

        //  br label %bb_if_9_31_end


        ldr     x16, [sp,#144]
        mov     x17, x16
        str     x17, [sp,#184]
        ldr     x16, [sp,#136]
        mov     x17, x16
        str     x17, [sp,#176]
        mov     x16, x15
        str     x16, [sp,#168]
        mov     x16, x14
        str     x16, [sp,#160]
        mov     x16, x13
        str     x16, [sp,#152]
        mov     x11, x12
        mov     x10, x9
        mov     x9, x8
        b     bb_if_9_31_end
        //bb_if_9_31_end:

bb_if_9_31_end:

        //  %r179 = phi i32 [ %r196, %bb_if_9_31_true ], [ %r188, %bb_if_9_31_false ]

        //  %r180 = phi i32 [ %r197, %bb_if_9_31_true ], [ %r189, %bb_if_9_31_false ]

        //  %r181 = phi i32 [ %r204, %bb_if_9_31_true ], [ %r190, %bb_if_9_31_false ]

        //  %r182 = phi i32 [ %r199, %bb_if_9_31_true ], [ %r191, %bb_if_9_31_false ]

        //  %r183 = phi i32 [ %r205, %bb_if_9_31_true ], [ %r192, %bb_if_9_31_false ]

        //  %r184 = phi i32 [ %r201, %bb_if_9_31_true ], [ %r193, %bb_if_9_31_false ]

        //  %r185 = phi i32 [ %r202, %bb_if_9_31_true ], [ %r194, %bb_if_9_31_false ]

        //  %r186 = phi i32 [ %r203, %bb_if_9_31_true ], [ %r195, %bb_if_9_31_false ]

        //  %r136 = add i32 %r180, 1

        mov     x8, #1
        ldr     x16, [sp,#176]
        add     x8, x16, x8
        //  %r187 = add i32 %r136, 0

        mov     x8, x8
        //  br label %bb_while_5_29_cond


        ldr     x16, [sp,#184]
        mov     x17, x16
        str     x17, [sp]
        mov     x15, x8
        ldr     x16, [sp,#168]
        mov     x14, x16
        ldr     x16, [sp,#160]
        mov     x13, x16
        ldr     x16, [sp,#152]
        mov     x12, x16
        mov     x11, x11
        mov     x10, x10
        mov     x9, x9
        b     bb_while_5_29_cond
        //bb_while_5_29_bre:

bb_while_5_29_bre:

        //  %r171 = phi i32 [ %r222, %bb_while_5_29_cond ], [ %r214, %bb19_29_next ]

        //  %r172 = phi i32 [ %r223, %bb_while_5_29_cond ], [ %r215, %bb19_29_next ]

        //  %r173 = phi i32 [ %r224, %bb_while_5_29_cond ], [ %r216, %bb19_29_next ]

        //  %r174 = phi i32 [ %r225, %bb_while_5_29_cond ], [ %r217, %bb19_29_next ]

        //  %r175 = phi i32 [ %r226, %bb_while_5_29_cond ], [ %r218, %bb19_29_next ]

        //  %r176 = phi i32 [ %r227, %bb_while_5_29_cond ], [ %r219, %bb19_29_next ]

        //  %r177 = phi i32 [ %r228, %bb_while_5_29_cond ], [ %r220, %bb19_29_next ]

        //  %r178 = phi i32 [ %r229, %bb_while_5_29_cond ], [ %r221, %bb19_29_next ]

        //  %r138 = icmp eq i32 %r173, 1

        mov     x8, #1
        ldr     x16, [sp,#232]
        cmp     x16, x8
        //  br i1 %r138, label %bb_if_5_40_true, label %bb_if_5_40_false


        ldr     x16, [sp,#248]
        mov     x15, x16
        ldr     x16, [sp,#240]
        mov     x14, x16
        ldr     x16, [sp,#232]
        mov     x13, x16
        ldr     x16, [sp,#224]
        mov     x12, x16
        ldr     x16, [sp,#216]
        mov     x11, x16
        ldr     x16, [sp,#208]
        mov     x10, x16
        ldr     x16, [sp,#200]
        mov     x9, x16
        ldr     x16, [sp,#192]
        mov     x8, x16
        ldr     x16, [sp,#240]
        mov     x17, x16
        str     x17, [sp,#304]
        ldr     x16, [sp,#232]
        mov     x17, x16
        str     x17, [sp,#296]
        ldr     x16, [sp,#224]
        mov     x17, x16
        str     x17, [sp,#288]
        ldr     x16, [sp,#216]
        mov     x17, x16
        str     x17, [sp,#280]
        ldr     x16, [sp,#208]
        mov     x17, x16
        str     x17, [sp,#272]
        ldr     x16, [sp,#200]
        mov     x17, x16
        str     x17, [sp,#264]
        ldr     x16, [sp,#192]
        mov     x17, x16
        str     x17, [sp,#256]
        b.eq     bb_if_5_40_true
        b     bb_if_5_40_false
        //bb_if_5_40_true:

bb_if_5_40_true:

        //  %r242 = phi i32 [ %r171, %bb_while_5_29_bre ]

        //  %r243 = phi i32 [ %r172, %bb_while_5_29_bre ]

        //  %r244 = phi i32 [ %r173, %bb_while_5_29_bre ]

        //  %r245 = phi i32 [ %r174, %bb_while_5_29_bre ]

        //  %r246 = phi i32 [ %r175, %bb_while_5_29_bre ]

        //  %r247 = phi i32 [ %r176, %bb_while_5_29_bre ]

        //  %r248 = phi i32 [ %r177, %bb_while_5_29_bre ]

        //  %r249 = phi i32 [ %r178, %bb_while_5_29_bre ]

        //  call void @putint(i32 %r246)

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
        //  br label %bb_if_5_40_end


        b     bb_if_5_40_end
        //bb_if_5_40_false:

bb_if_5_40_false:

        //  %r162 = phi i32 [ %r171, %bb_while_5_29_bre ]

        //  %r163 = phi i32 [ %r172, %bb_while_5_29_bre ]

        //  %r164 = phi i32 [ %r173, %bb_while_5_29_bre ]

        //  %r165 = phi i32 [ %r174, %bb_while_5_29_bre ]

        //  %r166 = phi i32 [ %r175, %bb_while_5_29_bre ]

        //  %r167 = phi i32 [ %r176, %bb_while_5_29_bre ]

        //  %r168 = phi i32 [ %r177, %bb_while_5_29_bre ]

        //  %r169 = phi i32 [ %r178, %bb_while_5_29_bre ]

        //  %r170 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  call void @putint(i32 %r170)

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
        //  br label %bb_if_5_40_end


        b     bb_if_5_40_end
        //bb_if_5_40_end:

bb_if_5_40_end:

        //  %r250 = phi i32 [ %r242, %bb_if_5_40_true ], [ %r170, %bb_if_5_40_false ]

        //  %r251 = phi i32 [ %r243, %bb_if_5_40_true ], [ %r163, %bb_if_5_40_false ]

        //  %r252 = phi i32 [ %r244, %bb_if_5_40_true ], [ %r164, %bb_if_5_40_false ]

        //  %r253 = phi i32 [ %r245, %bb_if_5_40_true ], [ %r165, %bb_if_5_40_false ]

        //  %r254 = phi i32 [ %r246, %bb_if_5_40_true ], [ %r166, %bb_if_5_40_false ]

        //  %r255 = phi i32 [ %r247, %bb_if_5_40_true ], [ %r167, %bb_if_5_40_false ]

        //  %r256 = phi i32 [ %r248, %bb_if_5_40_true ], [ %r168, %bb_if_5_40_false ]

        //  %r257 = phi i32 [ %r249, %bb_if_5_40_true ], [ %r169, %bb_if_5_40_false ]

        //  %r258 = add i32 10, 0

        mov     x8, #10
        mov     x8, x8
        //  call void @putch(i32 %r258)

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
        //  call void @_sysy_stoptime(i32 53)

        mov     x8, #53
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
