declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @swap( i32* %r100, i32 %r101, i32 %r103 ) {
bb1:
  %r223 = add i32 0, 0
  %r224 = add i32 %r101, 0
  %r225 = add i32 0, 0
  %r226 = add i32 %r103, 0
  %r227 = add i32 0, 0
  %r107 = getelementptr i32, i32* %r100, i32 %r224
  %r108 = load i32, i32* %r107
  %r228 = add i32 %r108, 0
  %r110 = getelementptr i32, i32* %r100, i32 %r224
  %r112 = getelementptr i32, i32* %r100, i32 %r226
  %r113 = load i32, i32* %r112
  store i32 %r113, i32* %r110
  %r115 = getelementptr i32, i32* %r100, i32 %r226
  store i32 %r228, i32* %r115
  ret i32 0
}

define i32 @heap_ajust( i32* %r117, i32 %r118, i32 %r120 ) {
bb2:
  %r234 = add i32 0, 0
  %r235 = add i32 0, 0
  %r236 = add i32 %r118, 0
  %r237 = add i32 0, 0
  %r238 = add i32 %r120, 0
  %r239 = add i32 0, 0
  %r240 = add i32 %r236, 0
  %r241 = add i32 0, 0
  %r126 = mul i32 %r240, 2
  %r127 = add i32 %r126, 1
  %r242 = add i32 %r127, 0
  br label %bb_while_5_14_cond

bb_while_5_14_cond:
  %r272 = phi i32 [ %r242, %bb2 ], [ %r243, %bb_if_9_18_end ]
  %r273 = phi i32 [ %r240, %bb2 ], [ %r244, %bb_if_9_18_end ]
  %r274 = phi i32 [ %r234, %bb2 ], [ %r245, %bb_if_9_18_end ]
  %r130 = add i32 %r238, 1
  %r131 = icmp slt i32 %r272, %r130
  br i1 %r131, label %bb_while_5_14_whilestms, label %bb_while_5_14_bre

bb_while_5_14_whilestms:
  %r268 = phi i32 [ %r272, %bb_while_5_14_cond ]
  %r269 = phi i32 [ %r273, %bb_while_5_14_cond ]
  %r270 = phi i32 [ %r274, %bb_while_5_14_cond ]
  %r134 = add i32 %r268, 1
  %r271 = add i32 %r134, 0
  %r137 = icmp slt i32 %r268, %r238
  br i1 %r137, label %bb26_16_next, label %bb_if_9_16_false

bb26_16_next:
  %r259 = phi i32 [ %r268, %bb_while_5_14_whilestms ]
  %r260 = phi i32 [ %r269, %bb_while_5_14_whilestms ]
  %r261 = phi i32 [ %r271, %bb_while_5_14_whilestms ]
  %r139 = getelementptr i32, i32* %r117, i32 %r259
  %r140 = load i32, i32* %r139
  %r142 = getelementptr i32, i32* %r117, i32 %r261
  %r143 = load i32, i32* %r142
  %r144 = icmp slt i32 %r140, %r143
  br i1 %r144, label %bb_if_9_16_true, label %bb_if_9_16_false

bb_if_9_16_true:
  %r255 = phi i32 [ %r259, %bb26_16_next ]
  %r256 = phi i32 [ %r260, %bb26_16_next ]
  %r257 = phi i32 [ %r261, %bb26_16_next ]
  %r146 = add i32 %r255, 1
  %r258 = add i32 %r146, 0
  br label %bb_if_9_16_end

bb_if_9_16_false:
  %r252 = phi i32 [ %r268, %bb_while_5_14_whilestms ], [ %r259, %bb26_16_next ]
  %r253 = phi i32 [ %r269, %bb_while_5_14_whilestms ], [ %r260, %bb26_16_next ]
  %r254 = phi i32 [ %r271, %bb_while_5_14_whilestms ], [ %r261, %bb26_16_next ]
  br label %bb_if_9_16_end

bb_if_9_16_end:
  %r249 = phi i32 [ %r258, %bb_if_9_16_true ], [ %r252, %bb_if_9_16_false ]
  %r250 = phi i32 [ %r256, %bb_if_9_16_true ], [ %r253, %bb_if_9_16_false ]
  %r251 = phi i32 [ %r257, %bb_if_9_16_true ], [ %r254, %bb_if_9_16_false ]
  %r148 = getelementptr i32, i32* %r117, i32 %r250
  %r149 = load i32, i32* %r148
  %r151 = getelementptr i32, i32* %r117, i32 %r249
  %r152 = load i32, i32* %r151
  %r153 = icmp sgt i32 %r149, %r152
  br i1 %r153, label %bb_if_9_18_true, label %bb_if_9_18_false

bb_if_9_18_true:
  %r246 = phi i32 [ %r249, %bb_if_9_16_end ]
  %r247 = phi i32 [ %r250, %bb_if_9_16_end ]
  %r248 = phi i32 [ %r251, %bb_if_9_16_end ]
  ret i32 0
bb_if_9_18_false:
  %r262 = phi i32 [ %r249, %bb_if_9_16_end ]
  %r263 = phi i32 [ %r250, %bb_if_9_16_end ]
  %r264 = phi i32 [ %r251, %bb_if_9_16_end ]
  %r156 = call i32 @swap(i32* %r117, i32 %r263, i32 %r262)
  %r265 = add i32 %r156, 0
  %r266 = add i32 %r262, 0
  %r159 = mul i32 %r266, 2
  %r160 = add i32 %r159, 1
  %r267 = add i32 %r160, 0
  br label %bb_if_9_18_end

bb_if_9_18_end:
  %r243 = phi i32 [ %r267, %bb_if_9_18_false ]
  %r244 = phi i32 [ %r266, %bb_if_9_18_false ]
  %r245 = phi i32 [ %r264, %bb_if_9_18_false ]
  br label %bb_while_5_14_cond

bb_while_5_14_bre:
  %r275 = phi i32 [ %r272, %bb_while_5_14_cond ]
  %r276 = phi i32 [ %r273, %bb_while_5_14_cond ]
  %r277 = phi i32 [ %r274, %bb_while_5_14_cond ]
  ret i32 0
}

define i32 @heap_sort( i32* %r161, i32 %r162 ) {
bb3:
  %r282 = add i32 0, 0
  %r283 = add i32 0, 0
  %r284 = add i32 %r162, 0
  %r285 = add i32 0, 0
  %r286 = add i32 0, 0
  %r167 = sdiv i32 %r284, 2
  %r168 = sub i32 %r167, 1
  %r287 = add i32 %r168, 0
  br label %bb_while_5_32_cond

bb_while_5_32_cond:
  %r307 = phi i32 [ %r287, %bb3 ], [ %r306, %bb_while_5_32_whilestms ]
  %r308 = phi i32 [ %r286, %bb3 ], [ %r305, %bb_while_5_32_whilestms ]
  %r170 = sub i32 0, 1
  %r171 = icmp sgt i32 %r307, %r170
  br i1 %r171, label %bb_while_5_32_whilestms, label %bb_while_5_32_bre

bb_while_5_32_whilestms:
  %r302 = phi i32 [ %r307, %bb_while_5_32_cond ]
  %r303 = phi i32 [ %r308, %bb_while_5_32_cond ]
  %r173 = sub i32 %r284, 1
  %r304 = add i32 %r173, 0
  %r176 = call i32 @heap_ajust(i32* %r161, i32 %r302, i32 %r304)
  %r305 = add i32 %r176, 0
  %r178 = sub i32 %r302, 1
  %r306 = add i32 %r178, 0
  br label %bb_while_5_32_cond

bb_while_5_32_bre:
  %r299 = phi i32 [ %r307, %bb_while_5_32_cond ]
  %r300 = phi i32 [ %r308, %bb_while_5_32_cond ]
  %r180 = sub i32 %r284, 1
  %r301 = add i32 %r180, 0
  br label %bb_while_5_38_cond

bb_while_5_38_cond:
  %r309 = phi i32 [ %r301, %bb_while_5_32_bre ], [ %r298, %bb_while_5_38_whilestms ]
  %r310 = phi i32 [ %r300, %bb_while_5_32_bre ], [ %r297, %bb_while_5_38_whilestms ]
  %r311 = phi i32 [ %r282, %bb_while_5_32_bre ], [ %r294, %bb_while_5_38_whilestms ]
  %r182 = icmp sgt i32 %r309, 0
  br i1 %r182, label %bb_while_5_38_whilestms, label %bb_while_5_38_bre

bb_while_5_38_whilestms:
  %r291 = phi i32 [ %r309, %bb_while_5_38_cond ]
  %r292 = phi i32 [ %r310, %bb_while_5_38_cond ]
  %r293 = phi i32 [ %r311, %bb_while_5_38_cond ]
  %r294 = add i32 0, 0
  %r186 = call i32 @swap(i32* %r161, i32 %r294, i32 %r291)
  %r295 = add i32 %r186, 0
  %r188 = sub i32 %r291, 1
  %r296 = add i32 %r188, 0
  %r191 = call i32 @heap_ajust(i32* %r161, i32 %r294, i32 %r296)
  %r297 = add i32 %r191, 0
  %r193 = sub i32 %r291, 1
  %r298 = add i32 %r193, 0
  br label %bb_while_5_38_cond

bb_while_5_38_bre:
  %r288 = phi i32 [ %r309, %bb_while_5_38_cond ]
  %r289 = phi i32 [ %r310, %bb_while_5_38_cond ]
  %r290 = phi i32 [ %r311, %bb_while_5_38_cond ]
  ret i32 0
}

define i32 @main( ) {
bb4:
  %r314 = add i32 0, 0
  call void @_sysy_starttime(i32 50)
  store i32 10, i32* @n
  %r194 = alloca [ 10 x i32 ]
  %r195 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 0
  store i32 4, i32* %r195
  %r196 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 1
  store i32 3, i32* %r196
  %r197 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 2
  store i32 9, i32* %r197
  %r198 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 3
  store i32 2, i32* %r198
  %r199 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 4
  store i32 0, i32* %r199
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 5
  store i32 1, i32* %r200
  %r201 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 6
  store i32 6, i32* %r201
  %r202 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 7
  store i32 5, i32* %r202
  %r203 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 8
  store i32 7, i32* %r203
  %r204 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 9
  store i32 8, i32* %r204
  %r315 = add i32 0, 0
  %r316 = add i32 0, 0
  %r206 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 0
  %r207 = load i32, i32* @n
  %r208 = call i32 @heap_sort(i32* %r206, i32 %r207)
  %r317 = add i32 %r208, 0
  br label %bb_while_5_58_cond

bb_while_5_58_cond:
  %r325 = phi i32 [ %r317, %bb4 ], [ %r324, %bb_while_5_58_whilestms ]
  %r326 = phi i32 [ %r314, %bb4 ], [ %r323, %bb_while_5_58_whilestms ]
  %r210 = load i32, i32* @n
  %r211 = icmp slt i32 %r325, %r210
  br i1 %r211, label %bb_while_5_58_whilestms, label %bb_while_5_58_bre

bb_while_5_58_whilestms:
  %r320 = phi i32 [ %r325, %bb_while_5_58_cond ]
  %r321 = phi i32 [ %r326, %bb_while_5_58_cond ]
  %r214 = getelementptr [10 x i32 ], [10 x i32 ]* %r194, i32 0, i32 %r320
  %r215 = load i32, i32* %r214
  %r322 = add i32 %r215, 0
  call void @putint(i32 %r322)
  %r323 = add i32 10, 0
  call void @putch(i32 %r323)
  %r219 = add i32 %r320, 1
  %r324 = add i32 %r219, 0
  br label %bb_while_5_58_cond

bb_while_5_58_bre:
  %r318 = phi i32 [ %r325, %bb_while_5_58_cond ]
  %r319 = phi i32 [ %r326, %bb_while_5_58_cond ]
  call void @_sysy_stoptime(i32 66)
  ret i32 0
}

