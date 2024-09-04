declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @mod( i32 %r100, i32 %r102 ) {
bb1:
  %r148 = add i32 0, 0
  %r149 = add i32 %r100, 0
  %r150 = add i32 0, 0
  %r151 = add i32 %r102, 0
  %r107 = sdiv i32 %r149, %r151
  %r109 = mul i32 %r107, %r151
  %r110 = sub i32 %r149, %r109
  ret i32 %r110
}

define i32 @palindrome( i32 %r111 ) {
bb2:
  %r155 = add i32 0, 0
  %r156 = add i32 %r111, 0
  %r113 = alloca [ 4 x i32 ]
  %r157 = add i32 0, 0
  %r158 = add i32 0, 0
  %r159 = add i32 0, 0
  br label %bb_while_5_12_cond

bb_while_5_12_cond:
  %r177 = phi i32 [ %r159, %bb2 ], [ %r173, %bb_while_5_12_whilestms ]
  %r178 = phi i32 [ %r156, %bb2 ], [ %r172, %bb_while_5_12_whilestms ]
  %r117 = icmp slt i32 %r177, 4
  br i1 %r117, label %bb_while_5_12_whilestms, label %bb_while_5_12_bre

bb_while_5_12_whilestms:
  %r170 = phi i32 [ %r177, %bb_while_5_12_cond ]
  %r171 = phi i32 [ %r178, %bb_while_5_12_cond ]
  %r119 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 %r170
  %r121 = call i32 @mod(i32 %r171, i32 10)
  store i32 %r121, i32* %r119
  %r123 = sdiv i32 %r171, 10
  %r172 = add i32 %r123, 0
  %r125 = add i32 %r170, 1
  %r173 = add i32 %r125, 0
  br label %bb_while_5_12_cond

bb_while_5_12_bre:
  %r168 = phi i32 [ %r177, %bb_while_5_12_cond ]
  %r169 = phi i32 [ %r178, %bb_while_5_12_cond ]
  %r126 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 0
  %r127 = load i32, i32* %r126
  %r128 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 3
  %r129 = load i32, i32* %r128
  %r130 = icmp eq i32 %r127, %r129
  br i1 %r130, label %bb22_19_next, label %bb_if_5_19_false

bb22_19_next:
  %r166 = phi i32 [ %r168, %bb_while_5_12_bre ]
  %r167 = phi i32 [ %r169, %bb_while_5_12_bre ]
  %r131 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 1
  %r132 = load i32, i32* %r131
  %r133 = getelementptr [4 x i32 ], [4 x i32 ]* %r113, i32 0, i32 2
  %r134 = load i32, i32* %r133
  %r135 = icmp eq i32 %r132, %r134
  br i1 %r135, label %bb_if_5_19_true, label %bb_if_5_19_false

bb_if_5_19_true:
  %r163 = phi i32 [ %r166, %bb22_19_next ]
  %r164 = phi i32 [ %r167, %bb22_19_next ]
  %r165 = add i32 1, 0
  br label %bb_if_5_19_end

bb_if_5_19_false:
  %r160 = phi i32 [ %r168, %bb_while_5_12_bre ], [ %r166, %bb22_19_next ]
  %r161 = phi i32 [ %r169, %bb_while_5_12_bre ], [ %r167, %bb22_19_next ]
  %r162 = add i32 0, 0
  br label %bb_if_5_19_end

bb_if_5_19_end:
  %r174 = phi i32 [ %r165, %bb_if_5_19_true ], [ %r162, %bb_if_5_19_false ]
  %r175 = phi i32 [ %r163, %bb_if_5_19_true ], [ %r160, %bb_if_5_19_false ]
  %r176 = phi i32 [ %r164, %bb_if_5_19_true ], [ %r161, %bb_if_5_19_false ]
  ret i32 %r174
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 30)
  %r181 = add i32 0, 0
  %r182 = add i32 1221, 0
  %r183 = add i32 0, 0
  %r140 = call i32 @palindrome(i32 %r182)
  %r184 = add i32 %r140, 0
  %r142 = icmp eq i32 %r184, 1
  br i1 %r142, label %bb_if_5_35_true, label %bb_if_5_35_false

bb_if_5_35_true:
  call void @putint(i32 %r182)
  br label %bb_if_5_35_end

bb_if_5_35_false:
  %r185 = add i32 0, 0
  call void @putint(i32 %r185)
  br label %bb_if_5_35_end

bb_if_5_35_end:
  %r186 = phi i32 [ %r184, %bb_if_5_35_true ], [ %r185, %bb_if_5_35_false ]
  %r187 = add i32 10, 0
  call void @putch(i32 %r187)
  call void @_sysy_stoptime(i32 47)
  ret i32 0
}

