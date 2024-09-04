declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
%Node = type { i32, i32 }
@d = global %Node zeroinitializer
@e = global [ 10 x %Node ] zeroinitializer
define void @foo( %Node* %r100 ) {
bb1:
  %r101 = getelementptr %Node, %Node* %r100, i32 0, i32 0
  %r102 = call i32 @getint()
  store i32 %r102, i32* %r101
  %r103 = getelementptr %Node, %Node* %r100, i32 0, i32 1
  %r104 = call i32 @getint()
  store i32 %r104, i32* %r103
  ret void
}

define void @baz( %Node* %r105 ) {
bb2:
  %r106 = getelementptr %Node, %Node* %r105, i32 2
  %r107 = getelementptr %Node, %Node* %r106, i32 0, i32 0
  %r108 = call i32 @getint()
  store i32 %r108, i32* %r107
  %r109 = getelementptr %Node, %Node* %r105, i32 2
  %r110 = getelementptr %Node, %Node* %r109, i32 0, i32 1
  %r111 = call i32 @getint()
  store i32 %r111, i32* %r110
  ret void
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 13)
  %r112 = alloca %Node
  %r113 = getelementptr %Node, %Node* %r112, i32 0, i32 0
  store i32 1, i32* %r113
  %r114 = getelementptr %Node, %Node* %r112, i32 0, i32 1
  store i32 2, i32* %r114
  call void @foo(%Node* %r112)
  call void @foo(%Node* @d)
  %r115 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 0
  call void @baz(%Node* %r115)
  %r116 = getelementptr %Node, %Node* %r112, i32 0, i32 0
  %r117 = load i32, i32* %r116
  %r118 = getelementptr %Node, %Node* %r112, i32 0, i32 1
  %r119 = load i32, i32* %r118
  %r120 = add i32 %r117, %r119
  call void @putint(i32 %r120)
  %r121 = getelementptr %Node, %Node* @d, i32 0, i32 0
  %r122 = load i32, i32* %r121
  %r123 = getelementptr %Node, %Node* @d, i32 0, i32 1
  %r124 = load i32, i32* %r123
  %r125 = add i32 %r122, %r124
  call void @putint(i32 %r125)
  %r126 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2
  %r127 = getelementptr %Node, %Node* %r126, i32 0, i32 0
  %r128 = load i32, i32* %r127
  %r129 = getelementptr [10 x %Node ], [10 x %Node ]* @e, i32 0, i32 2
  %r130 = getelementptr %Node, %Node* %r129, i32 0, i32 1
  %r131 = load i32, i32* %r130
  %r132 = add i32 %r128, %r131
  call void @putint(i32 %r132)
  call void @_sysy_stoptime(i32 19)
  ret i32 0
}

