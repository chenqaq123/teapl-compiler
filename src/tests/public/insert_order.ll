declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@N = global i32 0
define i32 @insert( i32* %r100, i32 %r101 ) {
bb1:
  %r163 = add i32 0, 0
  %r164 = add i32 0, 0
  %r165 = add i32 %r101, 0
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  %r168 = add i32 0, 0
  br label %bb_while_5_8_cond

bb_while_5_8_cond:
  %r185 = phi i32 [ %r168, %bb1 ], [ %r183, %bb_while_5_8_whilestms ]
  %r107 = getelementptr i32, i32* %r100, i32 %r185
  %r108 = load i32, i32* %r107
  %r109 = icmp sgt i32 %r165, %r108
  br i1 %r109, label %bb19_8_next, label %bb_while_5_8_bre

bb19_8_next:
  %r184 = phi i32 [ %r185, %bb_while_5_8_cond ]
  %r111 = load i32, i32* @N
  %r112 = icmp slt i32 %r184, %r111
  br i1 %r112, label %bb_while_5_8_whilestms, label %bb_while_5_8_bre

bb_while_5_8_whilestms:
  %r182 = phi i32 [ %r184, %bb19_8_next ]
  %r114 = add i32 %r182, 1
  %r183 = add i32 %r114, 0
  br label %bb_while_5_8_cond

bb_while_5_8_bre:
  %r180 = phi i32 [ %r185, %bb_while_5_8_cond ], [ %r184, %bb19_8_next ]
  %r115 = load i32, i32* @N
  %r181 = add i32 %r115, 0
  br label %bb_while_5_14_cond

bb_while_5_14_cond:
  %r177 = phi i32 [ %r181, %bb_while_5_8_bre ], [ %r176, %bb_while_5_14_whilestms ]
  %r178 = phi i32 [ %r163, %bb_while_5_8_bre ], [ %r175, %bb_while_5_14_whilestms ]
  %r179 = phi i32 [ %r180, %bb_while_5_8_bre ], [ %r174, %bb_while_5_14_whilestms ]
  %r118 = icmp sgt i32 %r177, %r179
  br i1 %r118, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre

bb_while_5_14_whilestms:
  %r172 = phi i32 [ %r177, %bb_while_5_14_cond ]
  %r173 = phi i32 [ %r178, %bb_while_5_14_cond ]
  %r174 = phi i32 [ %r179, %bb_while_5_14_cond ]
  %r121 = sub i32 %r172, 1
  %r175 = add i32 %r121, 0
  %r123 = getelementptr i32, i32* %r100, i32 %r172
  %r125 = getelementptr i32, i32* %r100, i32 %r175
  %r126 = load i32, i32* %r125
  store i32 %r126, i32* %r123
  %r128 = getelementptr i32, i32* %r100, i32 %r174
  store i32 %r165, i32* %r128
  %r131 = sub i32 %r172, 1
  %r176 = add i32 %r131, 0
  br label %bb_while_5_14_cond

bb_while_5_14_bre:
  %r169 = phi i32 [ %r177, %bb_while_5_14_cond ]
  %r170 = phi i32 [ %r178, %bb_while_5_14_cond ]
  %r171 = phi i32 [ %r179, %bb_while_5_14_cond ]
  ret i32 0
}

define i32 @main( ) {
bb2:
  call void @_sysy_starttime(i32 27)
  store i32 10, i32* @N
  %r132 = alloca [ 11 x i32 ]
  %r133 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 0
  store i32 1, i32* %r133
  %r134 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 1
  store i32 3, i32* %r134
  %r135 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 2
  store i32 4, i32* %r135
  %r136 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 3
  store i32 7, i32* %r136
  %r137 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 4
  store i32 8, i32* %r137
  %r138 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 5
  store i32 11, i32* %r138
  %r139 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 6
  store i32 13, i32* %r139
  %r140 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 7
  store i32 18, i32* %r140
  %r141 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 8
  store i32 56, i32* %r141
  %r142 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 9
  store i32 78, i32* %r142
  %r188 = add i32 0, 0
  %r189 = add i32 0, 0
  %r190 = add i32 0, 0
  %r145 = call i32 @getint()
  %r191 = add i32 %r145, 0
  %r146 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 0
  %r148 = call i32 @insert(i32* %r146, i32 %r191)
  %r192 = add i32 %r148, 0
  br label %bb_while_5_47_cond

bb_while_5_47_cond:
  %r200 = phi i32 [ %r190, %bb2 ], [ %r199, %bb_while_5_47_whilestms ]
  %r201 = phi i32 [ %r192, %bb2 ], [ %r198, %bb_while_5_47_whilestms ]
  %r150 = load i32, i32* @N
  %r151 = icmp slt i32 %r200, %r150
  br i1 %r151, label %bb_while_5_47_whilestms, label %bb_while_5_47_bre

bb_while_5_47_whilestms:
  %r195 = phi i32 [ %r200, %bb_while_5_47_cond ]
  %r196 = phi i32 [ %r201, %bb_while_5_47_cond ]
  %r153 = getelementptr [11 x i32 ], [11 x i32 ]* %r132, i32 0, i32 %r195
  %r154 = load i32, i32* %r153
  %r197 = add i32 %r154, 0
  call void @putint(i32 %r197)
  %r198 = add i32 10, 0
  call void @putch(i32 %r198)
  %r158 = add i32 %r195, 1
  %r199 = add i32 %r158, 0
  br label %bb_while_5_47_cond

bb_while_5_47_bre:
  %r193 = phi i32 [ %r200, %bb_while_5_47_cond ]
  %r194 = phi i32 [ %r201, %bb_while_5_47_cond ]
  call void @_sysy_stoptime(i32 54)
  ret i32 0
}

