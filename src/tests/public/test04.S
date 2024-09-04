.section .data
.global    a
a:
        .quad   1
.section .text
.global getch
.global getint
.global putch
.global putint
.global putarray
.global _sysy_starttime
.global _sysy_stoptime
.global foo
.global main
foo:

        //bb1:

bb1:

        //  %r111 = add i32 0, 0

        mov     x16, #0
        sub     sp, sp, x16
        mov     x9, x0
        mov     x8, #0
        //  %r112 = add i32 %r100, 0

        mov     x9, x9
        //  store i32 %r112, i32* @a

        adrp     x8, a
        add     x8, x8, #:lo12:a
        str     x9, [x8]
        //  ret i32 1

        mov     x8, #1
        mov     x0, x8
        mov     sp, x29
        ret
main:

        //bb2:

bb2:

        //  call void @_sysy_starttime(i32 9)

        mov     x16, #0
        sub     sp, sp, x16
        mov     x8, #9
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
        //  %r114 = add i32 0, 0

        mov     x8, #0
        //  %r115 = add i32 1, 0

        mov     x8, #1
        mov     x9, x8
        //  %r104 = call i32 @foo(i32 2)

        mov     x8, #2
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x10, x0
        //  %r105 = icmp sgt i32 %r104, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r105, label %bb_if_5_11_true, label %bb22_11_next


        b.gt     bb_if_5_11_true
        b     bb22_11_next
        //bb22_11_next:

bb22_11_next:

        //  %r106 = call i32 @foo(i32 3)

        mov     x8, #3
        mov     x0, x8
        stp     x8, x9, [sp, #-16]!
        stp     x10, x11, [sp, #-16]!
        stp     x12, x13, [sp, #-16]!
        stp     x14, x15, [sp, #-16]!
        stp     x29, x30, [sp, #-16]!
        mov     x29, sp
        bl     foo
        ldp     x29, x30, [sp], #16
        ldp     x14, x15, [sp], #16
        ldp     x12, x13, [sp], #16
        ldp     x10, x11, [sp], #16
        ldp     x8, x9, [sp], #16
        mov     x10, x0
        //  %r107 = icmp sgt i32 %r106, 0

        mov     x8, #0
        cmp     x10, x8
        //  br i1 %r107, label %bb_if_5_11_true, label %bb_if_5_11_false


        b.gt     bb_if_5_11_true
        b     bb_if_5_11_false
        //bb_if_5_11_true:

bb_if_5_11_true:

        //  %r117 = add i32 2, 0

        mov     x8, #2
        mov     x8, x8
        //  br label %bb_if_5_11_end


        mov     x9, x8
        b     bb_if_5_11_end
        //bb_if_5_11_false:

bb_if_5_11_false:

        //  br label %bb_if_5_11_end


        mov     x9, x9
        b     bb_if_5_11_end
        //bb_if_5_11_end:

bb_if_5_11_end:

        //  %r116 = phi i32 [ %r117, %bb_if_5_11_true ], [ %r115, %bb_if_5_11_false ]

        //  %r108 = load i32, i32* @a

        adrp     x8, a
        add     x8, x8, #:lo12:a
        ldr     x8, [x8]
        //  call void @putint(i32 %r108)

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
        //  call void @putint(i32 %r116)

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
        //  call void @_sysy_stoptime(i32 17)

        mov     x8, #17
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
