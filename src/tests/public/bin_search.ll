declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
define i32 @main( ) {
bb1:
  %r159 = add i32 0, 0
  %r160 = add i32 0, 0
  %r161 = add i32 0, 0
  %r162 = add i32 0, 0
  %r163 = add i32 0, 0
  call void @_sysy_starttime(i32 3)
  %r164 = add i32 0, 0
  %r165 = add i32 0, 0
  %r102 = alloca [ 10 x i32 ]
  %r166 = add i32 0, 0
  %r167 = add i32 0, 0
  br label %bb_while_5_9_cond

bb_while_5_9_cond:
  %r228 = phi i32 [ %r167, %bb1 ], [ %r227, %bb_while_5_9_whilestms ]
  %r104 = icmp slt i32 %r228, 10
  br i1 %r104, label %bb_while_5_9_whilestms, label %bb_while_5_9_bre

bb_while_5_9_whilestms:
  %r226 = phi i32 [ %r228, %bb_while_5_9_cond ]
  %r106 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r226
  %r108 = add i32 %r226, 1
  store i32 %r108, i32* %r106
  %r110 = add i32 %r226, 1
  %r227 = add i32 %r110, 0
  br label %bb_while_5_9_cond

bb_while_5_9_bre:
  %r220 = phi i32 [ %r228, %bb_while_5_9_cond ]
  %r221 = add i32 10, 0
  %r116 = call i32 @getint()
  %r222 = add i32 %r116, 0
  %r118 = sub i32 %r221, 1
  %r223 = add i32 %r118, 0
  %r224 = add i32 0, 0
  %r121 = add i32 %r223, %r224
  %r122 = sdiv i32 %r121, 2
  %r225 = add i32 %r122, 0
  br label %bb_while_5_24_cond

bb_while_5_24_cond:
  %r214 = phi i32 [ %r222, %bb_while_5_9_bre ], [ %r181, %bb_if_9_27_end ]
  %r215 = phi i32 [ %r220, %bb_while_5_9_bre ], [ %r182, %bb_if_9_27_end ]
  %r216 = phi i32 [ %r224, %bb_while_5_9_bre ], [ %r183, %bb_if_9_27_end ]
  %r217 = phi i32 [ %r223, %bb_while_5_9_bre ], [ %r184, %bb_if_9_27_end ]
  %r218 = phi i32 [ %r225, %bb_while_5_9_bre ], [ %r185, %bb_if_9_27_end ]
  %r219 = phi i32 [ %r221, %bb_while_5_9_bre ], [ %r186, %bb_if_9_27_end ]
  %r124 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r218
  %r125 = load i32, i32* %r124
  %r127 = icmp ne i32 %r125, %r214
  br i1 %r127, label %bb24_24_next, label %bb_while_5_24_bre

bb24_24_next:
  %r208 = phi i32 [ %r214, %bb_while_5_24_cond ]
  %r209 = phi i32 [ %r215, %bb_while_5_24_cond ]
  %r210 = phi i32 [ %r216, %bb_while_5_24_cond ]
  %r211 = phi i32 [ %r217, %bb_while_5_24_cond ]
  %r212 = phi i32 [ %r218, %bb_while_5_24_cond ]
  %r213 = phi i32 [ %r219, %bb_while_5_24_cond ]
  %r130 = icmp slt i32 %r210, %r211
  br i1 %r130, label %bb_while_5_24_whilestms, label %bb_while_5_24_bre

bb_while_5_24_whilestms:
  %r201 = phi i32 [ %r208, %bb24_24_next ]
  %r202 = phi i32 [ %r209, %bb24_24_next ]
  %r203 = phi i32 [ %r210, %bb24_24_next ]
  %r204 = phi i32 [ %r211, %bb24_24_next ]
  %r205 = phi i32 [ %r212, %bb24_24_next ]
  %r206 = phi i32 [ %r213, %bb24_24_next ]
  %r133 = add i32 %r204, %r203
  %r134 = sdiv i32 %r133, 2
  %r207 = add i32 %r134, 0
  %r137 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r207
  %r138 = load i32, i32* %r137
  %r139 = icmp slt i32 %r201, %r138
  br i1 %r139, label %bb_if_9_27_true, label %bb_if_9_27_false

bb_if_9_27_true:
  %r194 = phi i32 [ %r201, %bb_while_5_24_whilestms ]
  %r195 = phi i32 [ %r202, %bb_while_5_24_whilestms ]
  %r196 = phi i32 [ %r203, %bb_while_5_24_whilestms ]
  %r197 = phi i32 [ %r204, %bb_while_5_24_whilestms ]
  %r198 = phi i32 [ %r207, %bb_while_5_24_whilestms ]
  %r199 = phi i32 [ %r206, %bb_while_5_24_whilestms ]
  %r141 = sub i32 %r198, 1
  %r200 = add i32 %r141, 0
  br label %bb_if_9_27_end

bb_if_9_27_false:
  %r187 = phi i32 [ %r201, %bb_while_5_24_whilestms ]
  %r188 = phi i32 [ %r202, %bb_while_5_24_whilestms ]
  %r189 = phi i32 [ %r203, %bb_while_5_24_whilestms ]
  %r190 = phi i32 [ %r204, %bb_while_5_24_whilestms ]
  %r191 = phi i32 [ %r207, %bb_while_5_24_whilestms ]
  %r192 = phi i32 [ %r206, %bb_while_5_24_whilestms ]
  %r143 = add i32 %r191, 1
  %r193 = add i32 %r143, 0
  br label %bb_if_9_27_end

bb_if_9_27_end:
  %r181 = phi i32 [ %r194, %bb_if_9_27_true ], [ %r187, %bb_if_9_27_false ]
  %r182 = phi i32 [ %r195, %bb_if_9_27_true ], [ %r188, %bb_if_9_27_false ]
  %r183 = phi i32 [ %r196, %bb_if_9_27_true ], [ %r193, %bb_if_9_27_false ]
  %r184 = phi i32 [ %r200, %bb_if_9_27_true ], [ %r190, %bb_if_9_27_false ]
  %r185 = phi i32 [ %r198, %bb_if_9_27_true ], [ %r191, %bb_if_9_27_false ]
  %r186 = phi i32 [ %r199, %bb_if_9_27_true ], [ %r192, %bb_if_9_27_false ]
  br label %bb_while_5_24_cond

bb_while_5_24_bre:
  %r175 = phi i32 [ %r214, %bb_while_5_24_cond ], [ %r208, %bb24_24_next ]
  %r176 = phi i32 [ %r215, %bb_while_5_24_cond ], [ %r209, %bb24_24_next ]
  %r177 = phi i32 [ %r216, %bb_while_5_24_cond ], [ %r210, %bb24_24_next ]
  %r178 = phi i32 [ %r217, %bb_while_5_24_cond ], [ %r211, %bb24_24_next ]
  %r179 = phi i32 [ %r218, %bb_while_5_24_cond ], [ %r212, %bb24_24_next ]
  %r180 = phi i32 [ %r219, %bb_while_5_24_cond ], [ %r213, %bb24_24_next ]
  %r146 = getelementptr [10 x i32 ], [10 x i32 ]* %r102, i32 0, i32 %r179
  %r147 = load i32, i32* %r146
  %r148 = icmp eq i32 %r175, %r147
  br i1 %r148, label %bb_if_5_37_true, label %bb_if_5_37_false

bb_if_5_37_true:
  %r229 = phi i32 [ %r175, %bb_while_5_24_bre ]
  %r230 = phi i32 [ %r176, %bb_while_5_24_bre ]
  %r231 = phi i32 [ %r177, %bb_while_5_24_bre ]
  %r232 = phi i32 [ %r178, %bb_while_5_24_bre ]
  %r233 = phi i32 [ %r179, %bb_while_5_24_bre ]
  %r234 = phi i32 [ %r180, %bb_while_5_24_bre ]
  call void @putint(i32 %r229)
  br label %bb_if_5_37_end

bb_if_5_37_false:
  %r168 = phi i32 [ %r175, %bb_while_5_24_bre ]
  %r169 = phi i32 [ %r176, %bb_while_5_24_bre ]
  %r170 = phi i32 [ %r177, %bb_while_5_24_bre ]
  %r171 = phi i32 [ %r178, %bb_while_5_24_bre ]
  %r172 = phi i32 [ %r179, %bb_while_5_24_bre ]
  %r173 = phi i32 [ %r180, %bb_while_5_24_bre ]
  %r174 = add i32 0, 0
  call void @putint(i32 %r174)
  br label %bb_if_5_37_end

bb_if_5_37_end:
  %r235 = phi i32 [ %r229, %bb_if_5_37_true ], [ %r174, %bb_if_5_37_false ]
  %r236 = phi i32 [ %r230, %bb_if_5_37_true ], [ %r169, %bb_if_5_37_false ]
  %r237 = phi i32 [ %r231, %bb_if_5_37_true ], [ %r170, %bb_if_5_37_false ]
  %r238 = phi i32 [ %r232, %bb_if_5_37_true ], [ %r171, %bb_if_5_37_false ]
  %r239 = phi i32 [ %r233, %bb_if_5_37_true ], [ %r172, %bb_if_5_37_false ]
  %r240 = phi i32 [ %r234, %bb_if_5_37_true ], [ %r173, %bb_if_5_37_false ]
  %r241 = add i32 10, 0
  call void @putch(i32 %r241)
  call void @_sysy_stoptime(i32 49)
  ret i32 0
}

