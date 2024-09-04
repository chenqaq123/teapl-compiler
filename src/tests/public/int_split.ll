declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
@newline = global i32 0
define i32 @mod( i32 %r100, i32 %r102 ) {
bb1:
  %r146 = add i32 0, 0
  %r147 = add i32 %r100, 0
  %r148 = add i32 0, 0
  %r149 = add i32 %r102, 0
  %r107 = sdiv i32 %r147, %r149
  %r109 = mul i32 %r107, %r149
  %r110 = sub i32 %r147, %r109
  ret i32 %r110
}

define i32 @split( i32 %r111, i32* %r113 ) {
bb2:
  %r152 = add i32 0, 0
  %r153 = add i32 %r111, 0
  %r154 = add i32 0, 0
  %r115 = load i32, i32* @N
  %r116 = sub i32 %r115, 1
  %r155 = add i32 %r116, 0
  br label %bb_while_5_14_cond

bb_while_5_14_cond:
  %r162 = phi i32 [ %r155, %bb2 ], [ %r161, %bb_while_5_14_whilestms ]
  %r163 = phi i32 [ %r153, %bb2 ], [ %r160, %bb_while_5_14_whilestms ]
  %r118 = sub i32 0, 1
  %r119 = icmp ne i32 %r162, %r118
  br i1 %r119, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre

bb_while_5_14_whilestms:
  %r158 = phi i32 [ %r162, %bb_while_5_14_cond ]
  %r159 = phi i32 [ %r163, %bb_while_5_14_cond ]
  %r121 = getelementptr i32, i32* %r113, i32 %r158
  %r123 = call i32 @mod(i32 %r159, i32 10)
  store i32 %r123, i32* %r121
  %r125 = sdiv i32 %r159, 10
  %r160 = add i32 %r125, 0
  %r127 = sub i32 %r158, 1
  %r161 = add i32 %r127, 0
  br label %bb_while_5_14_cond

bb_while_5_14_bre:
  %r156 = phi i32 [ %r162, %bb_while_5_14_cond ]
  %r157 = phi i32 [ %r163, %bb_while_5_14_cond ]
  ret i32 0
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 26)
  store i32 4, i32* @N
  store i32 10, i32* @newline
  %r167 = add i32 0, 0
  %r168 = add i32 0, 0
  %r130 = alloca [ 4 x i32 ]
  %r169 = add i32 1478, 0
  %r132 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 0
  %r133 = call i32 @split(i32 %r169, i32* %r132)
  %r170 = add i32 %r133, 0
  %r171 = add i32 0, 0
  %r172 = add i32 0, 0
  br label %bb_while_5_36_cond

bb_while_5_36_cond:
  %r179 = phi i32 [ %r172, %bb3 ], [ %r178, %bb_while_5_36_whilestms ]
  %r180 = phi i32 [ %r171, %bb3 ], [ %r177, %bb_while_5_36_whilestms ]
  %r136 = icmp slt i32 %r179, 4
  br i1 %r136, label %bb_while_5_36_whilestms, label %bb_while_5_36_bre

bb_while_5_36_whilestms:
  %r175 = phi i32 [ %r179, %bb_while_5_36_cond ]
  %r176 = phi i32 [ %r180, %bb_while_5_36_cond ]
  %r138 = getelementptr [4 x i32 ], [4 x i32 ]* %r130, i32 0, i32 %r175
  %r139 = load i32, i32* %r138
  %r177 = add i32 %r139, 0
  call void @putint(i32 %r177)
  %r141 = load i32, i32* @newline
  call void @putch(i32 %r141)
  %r143 = add i32 %r175, 1
  %r178 = add i32 %r143, 0
  br label %bb_while_5_36_cond

bb_while_5_36_bre:
  %r173 = phi i32 [ %r179, %bb_while_5_36_cond ]
  %r174 = phi i32 [ %r180, %bb_while_5_36_cond ]
  call void @_sysy_stoptime(i32 42)
  ret i32 0
}

