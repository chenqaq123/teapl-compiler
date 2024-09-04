declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global i32 1
define i32 @foo( i32 %r100 ) {
bb1:
  %r111 = add i32 0, 0
  %r112 = add i32 %r100, 0
  store i32 %r112, i32* @a
  ret i32 1
}

define i32 @main( ) {
bb2:
  call void @_sysy_starttime(i32 9)
  %r114 = add i32 0, 0
  %r115 = add i32 1, 0
  %r104 = call i32 @foo(i32 2)
  %r105 = icmp sgt i32 %r104, 0
  br i1 %r105, label %bb_if_5_11_true, label %bb22_11_next

bb22_11_next:
  %r106 = call i32 @foo(i32 3)
  %r107 = icmp sgt i32 %r106, 0
  br i1 %r107, label %bb_if_5_11_true, label %bb_if_5_11_false

bb_if_5_11_true:
  %r117 = add i32 2, 0
  br label %bb_if_5_11_end

bb_if_5_11_false:
  br label %bb_if_5_11_end

bb_if_5_11_end:
  %r116 = phi i32 [ %r117, %bb_if_5_11_true ], [ %r115, %bb_if_5_11_false ]
  %r108 = load i32, i32* @a
  call void @putint(i32 %r108)
  call void @putint(i32 %r116)
  call void @_sysy_stoptime(i32 17)
  ret i32 0
}

