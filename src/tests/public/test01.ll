declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@a = global [ 10 x i32 ] zeroinitializer
@b = global i32 27
@c = global i32 1
define i32 @main( ) {
bb1:
  call void @_sysy_starttime(i32 4)
  %r123 = add i32 0, 0
  %r124 = add i32 0, 0
  %r125 = add i32 0, 0
  %r126 = add i32 0, 0
  br label %bb_while_5_9_cond

bb_while_5_9_cond:
  %r139 = phi i32 [ %r124, %bb1 ], [ %r138, %bb_while_5_9_whilestms ]
  %r103 = icmp slt i32 %r139, 10
  br i1 %r103, label %bb_while_5_9_whilestms, label %bb_while_5_9_bre

bb_while_5_9_whilestms:
  %r137 = phi i32 [ %r139, %bb_while_5_9_cond ]
  %r105 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r137
  store i32 %r137, i32* %r105
  %r108 = add i32 %r137, 1
  %r138 = add i32 %r108, 0
  br label %bb_while_5_9_cond

bb_while_5_9_bre:
  %r135 = phi i32 [ %r139, %bb_while_5_9_cond ]
  %r136 = add i32 0, 0
  br label %bb_while_5_15_cond

bb_while_5_15_cond:
  %r133 = phi i32 [ %r136, %bb_while_5_9_bre ], [ %r132, %bb_while_5_15_whilestms ]
  %r134 = phi i32 [ %r126, %bb_while_5_9_bre ], [ %r131, %bb_while_5_15_whilestms ]
  %r110 = icmp slt i32 %r133, 10
  br i1 %r110, label %bb_while_5_15_whilestms, label %bb_while_5_15_bre

bb_while_5_15_whilestms:
  %r129 = phi i32 [ %r133, %bb_while_5_15_cond ]
  %r130 = phi i32 [ %r134, %bb_while_5_15_cond ]
  %r113 = getelementptr [10 x i32 ], [10 x i32 ]* @a, i32 0, i32 %r129
  %r114 = load i32, i32* %r113
  %r115 = add i32 %r130, %r114
  %r131 = add i32 %r115, 0
  %r117 = add i32 %r129, 1
  %r132 = add i32 %r117, 0
  br label %bb_while_5_15_cond

bb_while_5_15_bre:
  %r127 = phi i32 [ %r133, %bb_while_5_15_cond ]
  %r128 = phi i32 [ %r134, %bb_while_5_15_cond ]
  %r118 = load i32, i32* @b
  call void @putint(i32 %r118)
  %r119 = load i32, i32* @c
  call void @putint(i32 %r119)
  call void @putint(i32 %r128)
  call void @_sysy_stoptime(i32 19)
  ret i32 0
}

