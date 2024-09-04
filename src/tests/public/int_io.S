.section .data
.global    ascii_0
ascii_0:
        .quad   48
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global my_getint
.global mod
.global my_putint
.global main
my_getint:

        //bb1:

bb1:

        //  %r169 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #0
        //  %r170 = add i32 0, 0

        mov     x8, #0
        //  %r171 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_7_cond


        mov     x10, x8
        b     bb_while_5_7_cond
        //bb_while_5_7_cond:

bb_while_5_7_cond:

        //  %r185 = phi i32 [ %r171, %bb1 ], [ %r183, %bb_if_9_9_true ]

        //  %r102 = icmp sgt i32 1, 0

        mov     x9, #1
        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r102, label %bb_while_5_7_whilestms, label %bb_while_5_7_bre


        mov     x9, x10
        b.gt     bb_while_5_7_whilestms
        b     bb_while_5_7_bre
        //bb_while_5_7_whilestms:

bb_while_5_7_whilestms:

        //  %r187 = phi i32 [ %r185, %bb_while_5_7_cond ]

        //  %r103 = call i32 @getch()

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
        //  %r104 = load i32, i32* @ascii_0

        adrp     x8, ascii_0
        add     x8, x8, #:lo12:ascii_0
        ldr     x8, [x8]
        //  %r105 = sub i32 %r103, %r104

        sub     x8, x9, x8
        //  %r188 = add i32 %r105, 0

        mov     x9, x8
        //  %r107 = icmp slt i32 %r188, 0

        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r107, label %bb_if_9_9_true, label %bb22_9_next


        mov     x10, x9
        mov     x9, x9
        b.lt     bb_if_9_9_true
        b     bb22_9_next
        //bb22_9_next:

bb22_9_next:

        //  %r184 = phi i32 [ %r188, %bb_while_5_7_whilestms ]

        //  %r109 = icmp sgt i32 %r184, 9

        mov     x8, #9
        cmp     x10, x8
        //  br i1 %r109, label %bb_if_9_9_true, label %bb_if_9_9_false


        mov     x9, x10
        mov     x8, x10
        b.gt     bb_if_9_9_true
        b     bb_if_9_9_false
        //bb_if_9_9_true:

bb_if_9_9_true:

        //  %r183 = phi i32 [ %r188, %bb_while_5_7_whilestms ], [ %r184, %bb22_9_next ]

        //  br label %bb_while_5_7_cond


        mov     x10, x9
        b     bb_while_5_7_cond
        //bb_if_9_9_false:

bb_if_9_9_false:

        //  %r186 = phi i32 [ %r184, %bb22_9_next ]

        //  br label %bb_while_5_7_bre


        mov     x9, x8
        b     bb_while_5_7_bre
        //bb_while_5_7_bre:

bb_while_5_7_bre:

        //  %r181 = phi i32 [ %r185, %bb_while_5_7_cond ], [ %r186, %bb_if_9_9_false ]

        //  %r182 = add i32 %r181, 0

        mov     x8, x9
        //  br label %bb_while_5_17_cond


        mov     x12, x8
        mov     x10, x9
        b     bb_while_5_17_cond
        //bb_while_5_17_cond:

bb_while_5_17_cond:

        //  %r172 = phi i32 [ %r182, %bb_while_5_7_bre ], [ %r192, %bb_if_9_19_end ]

        //  %r173 = phi i32 [ %r181, %bb_while_5_7_bre ], [ %r193, %bb_if_9_19_end ]

        //  %r111 = icmp sgt i32 1, 0

        mov     x9, #1
        mov     x8, #0
        cmp     x9, x8
        //  br i1 %r111, label %bb_while_5_17_whilestms, label %bb_while_5_17_bre


        mov     x11, x12
        mov     x8, x12
        b.gt     bb_while_5_17_whilestms
        b     bb_while_5_17_bre
        //bb_while_5_17_whilestms:

bb_while_5_17_whilestms:

        //  %r176 = phi i32 [ %r172, %bb_while_5_17_cond ]

        //  %r177 = phi i32 [ %r173, %bb_while_5_17_cond ]

        //  %r112 = call i32 @getch()

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
        //  %r113 = load i32, i32* @ascii_0

        adrp     x8, ascii_0
        add     x8, x8, #:lo12:ascii_0
        ldr     x8, [x8]
        //  %r114 = sub i32 %r112, %r113

        sub     x8, x9, x8
        //  %r178 = add i32 %r114, 0

        mov     x10, x8
        //  %r116 = icmp sge i32 %r178, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r116, label %bb23_19_next, label %bb_if_9_19_false


        mov     x9, x11
        mov     x8, x10
        mov     x13, x11
        mov     x12, x10
        b.ge     bb23_19_next
        b     bb_if_9_19_false
        //bb23_19_next:

bb23_19_next:

        //  %r174 = phi i32 [ %r176, %bb_while_5_17_whilestms ]

        //  %r175 = phi i32 [ %r178, %bb_while_5_17_whilestms ]

        //  %r118 = icmp sle i32 %r175, 9

        mov     x10, #9
        cmp     x8, x10
        //  br i1 %r118, label %bb_if_9_19_true, label %bb_if_9_19_false


        mov     x11, x9
        mov     x10, x8
        mov     x13, x9
        mov     x12, x8
        b.le     bb_if_9_19_true
        b     bb_if_9_19_false
        //bb_if_9_19_true:

bb_if_9_19_true:

        //  %r189 = phi i32 [ %r174, %bb23_19_next ]

        //  %r190 = phi i32 [ %r175, %bb23_19_next ]

        //  %r120 = mul i32 %r189, 10

        mov     x8, #10
        mul     x8, x11, x8
        //  %r122 = add i32 %r120, %r190

        add     x8, x8, x10
        //  %r191 = add i32 %r122, 0

        mov     x8, x8
        //  br label %bb_if_9_19_end


        mov     x9, x8
        mov     x8, x10
        b     bb_if_9_19_end
        //bb_if_9_19_false:

bb_if_9_19_false:

        //  %r179 = phi i32 [ %r176, %bb_while_5_17_whilestms ], [ %r174, %bb23_19_next ]

        //  %r180 = phi i32 [ %r178, %bb_while_5_17_whilestms ], [ %r175, %bb23_19_next ]

        //  br label %bb_while_5_17_bre


        mov     x8, x13
        b     bb_while_5_17_bre
        //bb_if_9_19_end:

bb_if_9_19_end:

        //  %r192 = phi i32 [ %r191, %bb_if_9_19_true ]

        //  %r193 = phi i32 [ %r190, %bb_if_9_19_true ]

        //  br label %bb_while_5_17_cond


        mov     x12, x9
        mov     x10, x8
        b     bb_while_5_17_cond
        //bb_while_5_17_bre:

bb_while_5_17_bre:

        //  %r194 = phi i32 [ %r172, %bb_while_5_17_cond ], [ %r179, %bb_if_9_19_false ]

        //  %r195 = phi i32 [ %r173, %bb_while_5_17_cond ], [ %r180, %bb_if_9_19_false ]

        //  ret i32 %r194

        mov     x0, x8
        mov     sp, x29
        ret
mod:

        //bb2:

bb2:

        //  %r198 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x10, x1
        mov     x8, #0
        //  %r199 = add i32 %r124, 0

        mov     x9, x9
        //  %r200 = add i32 0, 0

        mov     x8, #0
        //  %r201 = add i32 %r126, 0

        mov     x8, x10
        //  %r131 = sdiv i32 %r199, %r201

        sdiv     x10, x9, x8
        //  %r133 = mul i32 %r131, %r201

        mul     x8, x10, x8
        //  %r134 = sub i32 %r199, %r133

        sub     x8, x9, x8
        //  ret i32 %r134

        mov     x0, x8
        mov     sp, x29
        ret
my_putint:

        //137:x29,#-128

        //bb3:

bb3:

        //  %r204 = add i32 0, 0

        mov     x16, #128
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r205 = add i32 %r135, 0

        mov     x9, x9
        //  %r137 = alloca [ 16 x i32 ]

        //  %r206 = add i32 0, 0

        mov     x8, #0
        //  %r207 = add i32 0, 0

        mov     x8, #0
        mov     x8, x8
        //  br label %bb_while_5_38_cond


        mov     x11, x8
        mov     x10, x9
        b     bb_while_5_38_cond
        //bb_while_5_38_cond:

bb_while_5_38_cond:

        //  %r221 = phi i32 [ %r207, %bb3 ], [ %r220, %bb_while_5_38_whilestms ]

        //  %r222 = phi i32 [ %r205, %bb3 ], [ %r219, %bb_while_5_38_whilestms ]

        //  %r140 = icmp sgt i32 %r222, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r140, label %bb_while_5_38_whilestms, label %bb_while_5_38_bre


        mov     x9, x11
        mov     x8, x10
        mov     x11, x11
        mov     x10, x10
        b.gt     bb_while_5_38_whilestms
        b     bb_while_5_38_bre
        //bb_while_5_38_whilestms:

bb_while_5_38_whilestms:

        //  %r217 = phi i32 [ %r221, %bb_while_5_38_cond ]

        //  %r218 = phi i32 [ %r222, %bb_while_5_38_cond ]

        //  %r142 = getelementptr [16 x i32 ], [16 x i32 ]* %r137, i32 0, i32 %r217

        mov     x10, #8
        mul     x11, x9, x10
        mov     x0, #-128
        add     x10, x29, x0
        add     x12, x10, x11
        //  %r144 = call i32 @mod(i32 %r218, i32 10)

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
        mov     x11, x0
        //  %r145 = load i32, i32* @ascii_0

        adrp     x10, ascii_0
        add     x10, x10, #:lo12:ascii_0
        ldr     x10, [x10]
        //  %r146 = add i32 %r144, %r145

        add     x10, x11, x10
        //  store i32 %r146, i32* %r142

        str     x10, [x12]
        //  %r148 = sdiv i32 %r218, 10

        mov     x10, #10
        sdiv     x8, x8, x10
        //  %r219 = add i32 %r148, 0

        mov     x10, x8
        //  %r150 = add i32 %r217, 1

        mov     x8, #1
        add     x8, x9, x8
        //  %r220 = add i32 %r150, 0

        mov     x8, x8
        //  br label %bb_while_5_38_cond


        mov     x11, x8
        mov     x10, x10
        b     bb_while_5_38_cond
        //bb_while_5_38_bre:

bb_while_5_38_bre:

        //  %r213 = phi i32 [ %r221, %bb_while_5_38_cond ]

        //  %r214 = phi i32 [ %r222, %bb_while_5_38_cond ]

        //  br label %bb_while_5_43_cond


        mov     x11, x11
        mov     x9, x10
        b     bb_while_5_43_cond
        //bb_while_5_43_cond:

bb_while_5_43_cond:

        //  %r211 = phi i32 [ %r213, %bb_while_5_38_bre ], [ %r210, %bb_while_5_43_whilestms ]

        //  %r212 = phi i32 [ %r214, %bb_while_5_38_bre ], [ %r209, %bb_while_5_43_whilestms ]

        //  %r152 = icmp sgt i32 %r211, 0

        mov     x8, #0
        cmp     x11, x8
        //  br i1 %r152, label %bb_while_5_43_whilestms, label %bb_while_5_43_bre


        mov     x10, x11
        mov     x12, x9
        b.gt     bb_while_5_43_whilestms
        b     bb_while_5_43_bre
        //bb_while_5_43_whilestms:

bb_while_5_43_whilestms:

        //  %r208 = phi i32 [ %r211, %bb_while_5_43_cond ]

        //  %r209 = phi i32 [ %r212, %bb_while_5_43_cond ]

        //  %r154 = sub i32 %r208, 1

        mov     x8, #1
        sub     x8, x10, x8
        //  %r210 = add i32 %r154, 0

        mov     x10, x8
        //  %r156 = getelementptr [16 x i32 ], [16 x i32 ]* %r137, i32 0, i32 %r210

        mov     x8, #8
        mul     x9, x10, x8
        mov     x0, #-128
        add     x8, x29, x0
        add     x8, x8, x9
        //  %r157 = load i32, i32* %r156

        ldr     x8, [x8]
        //  call void @putch(i32 %r157)

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
        //  br label %bb_while_5_43_cond


        mov     x11, x10
        mov     x9, x12
        b     bb_while_5_43_cond
        //bb_while_5_43_bre:

bb_while_5_43_bre:

        //  %r215 = phi i32 [ %r211, %bb_while_5_43_cond ]

        //  %r216 = phi i32 [ %r212, %bb_while_5_43_cond ]

        //  ret void

        mov     sp, x29
        ret
main:

        //bb4:

bb4:

        //  %r225 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #0
        mov     x9, x8
        //  call void @_sysy_starttime(i32 51)

        mov     x8, #51
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
        //  %r226 = add i32 0, 0

        mov     x8, #0
        //  %r159 = call i32 @my_getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r227 = add i32 %r159, 0

        mov     x8, x8
        //  br label %bb_while_5_53_cond


        mov     x10, x8
        mov     x9, x9
        b     bb_while_5_53_cond
        //bb_while_5_53_cond:

bb_while_5_53_cond:

        //  %r234 = phi i32 [ %r227, %bb4 ], [ %r233, %bb_while_5_53_whilestms ]

        //  %r235 = phi i32 [ %r225, %bb4 ], [ %r232, %bb_while_5_53_whilestms ]

        //  %r161 = icmp sgt i32 %r234, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r161, label %bb_while_5_53_whilestms, label %bb_while_5_53_bre


        mov     x11, x10
        b.gt     bb_while_5_53_whilestms
        b     bb_while_5_53_bre
        //bb_while_5_53_whilestms:

bb_while_5_53_whilestms:

        //  %r230 = phi i32 [ %r234, %bb_while_5_53_cond ]

        //  %r231 = phi i32 [ %r235, %bb_while_5_53_cond ]

        //  %r163 = call i32 @my_getint()

        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_getint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x8, x0
        //  %r232 = add i32 %r163, 0

        mov     x9, x8
        //  call void @my_putint(i32 %r232)

        mov     x0, x9
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     my_putint
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        //  call void @putch(i32 10)

        mov     x8, #10
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
        //  %r166 = sub i32 %r230, 1

        mov     x8, #1
        sub     x8, x11, x8
        //  %r233 = add i32 %r166, 0

        mov     x8, x8
        //  br label %bb_while_5_53_cond


        mov     x10, x8
        mov     x9, x9
        b     bb_while_5_53_cond
        //bb_while_5_53_bre:

bb_while_5_53_bre:

        //  %r228 = phi i32 [ %r234, %bb_while_5_53_cond ]

        //  %r229 = phi i32 [ %r235, %bb_while_5_53_cond ]

        //  call void @_sysy_stoptime(i32 58)

        mov     x8, #58
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
