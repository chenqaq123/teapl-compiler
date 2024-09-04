declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@n = global i32 0
define i32 @Merge( i32* %r100, i32 %r101, i32 %r103, i32 %r105 ) {
bb1:
  %r270 = add i32 0, 0
  %r271 = add i32 0, 0
  %r272 = add i32 %r101, 0
  %r273 = add i32 0, 0
  %r274 = add i32 %r103, 0
  %r275 = add i32 0, 0
  %r276 = add i32 %r105, 0
  %r277 = add i32 0, 0
  %r110 = sub i32 %r274, %r272
  %r111 = add i32 %r110, 1
  %r278 = add i32 %r111, 0
  %r279 = add i32 0, 0
  %r115 = sub i32 %r276, %r274
  %r280 = add i32 %r115, 0
  %r116 = alloca [ 10 x i32 ]
  %r117 = alloca [ 10 x i32 ]
  %r281 = add i32 0, 0
  %r282 = add i32 0, 0
  %r283 = add i32 0, 0
  %r284 = add i32 0, 0
  %r285 = add i32 0, 0
  br label %bb_while_5_15_cond

bb_while_5_15_cond:
  %r324 = phi i32 [ %r282, %bb1 ], [ %r339, %bb_while_5_15_whilestms ]
  %r325 = phi i32 [ %r285, %bb1 ], [ %r338, %bb_while_5_15_whilestms ]
  %r123 = icmp slt i32 %r324, %r278
  br i1 %r123, label %bb_while_5_15_whilestms, label %bb_while_5_15_bre

bb_while_5_15_whilestms:
  %r336 = phi i32 [ %r324, %bb_while_5_15_cond ]
  %r337 = phi i32 [ %r325, %bb_while_5_15_cond ]
  %r126 = add i32 %r336, %r272
  %r338 = add i32 %r126, 0
  %r128 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r336
  %r130 = getelementptr i32, i32* %r100, i32 %r338
  %r131 = load i32, i32* %r130
  store i32 %r131, i32* %r128
  %r133 = add i32 %r336, 1
  %r339 = add i32 %r133, 0
  br label %bb_while_5_15_cond

bb_while_5_15_bre:
  %r310 = phi i32 [ %r324, %bb_while_5_15_cond ]
  %r311 = phi i32 [ %r325, %bb_while_5_15_cond ]
  br label %bb_while_5_20_cond

bb_while_5_20_cond:
  %r303 = phi i32 [ %r284, %bb_while_5_15_bre ], [ %r302, %bb_while_5_20_whilestms ]
  %r304 = phi i32 [ %r310, %bb_while_5_15_bre ], [ %r299, %bb_while_5_20_whilestms ]
  %r305 = phi i32 [ %r311, %bb_while_5_15_bre ], [ %r301, %bb_while_5_20_whilestms ]
  %r136 = icmp slt i32 %r303, %r280
  br i1 %r136, label %bb_while_5_20_whilestms, label %bb_while_5_20_bre

bb_while_5_20_whilestms:
  %r298 = phi i32 [ %r303, %bb_while_5_20_cond ]
  %r299 = phi i32 [ %r304, %bb_while_5_20_cond ]
  %r300 = phi i32 [ %r305, %bb_while_5_20_cond ]
  %r139 = add i32 %r298, %r274
  %r140 = add i32 %r139, 1
  %r301 = add i32 %r140, 0
  %r142 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r298
  %r144 = getelementptr i32, i32* %r100, i32 %r301
  %r145 = load i32, i32* %r144
  store i32 %r145, i32* %r142
  %r147 = add i32 %r298, 1
  %r302 = add i32 %r147, 0
  br label %bb_while_5_20_cond

bb_while_5_20_bre:
  %r312 = phi i32 [ %r303, %bb_while_5_20_cond ]
  %r313 = phi i32 [ %r304, %bb_while_5_20_cond ]
  %r314 = phi i32 [ %r305, %bb_while_5_20_cond ]
  %r315 = add i32 0, 0
  %r316 = add i32 0, 0
  %r317 = add i32 %r272, 0
  br label %bb_while_5_29_cond

bb_while_5_29_cond:
  %r294 = phi i32 [ %r316, %bb_while_5_20_bre ], [ %r360, %bb_if_9_31_end ]
  %r295 = phi i32 [ %r317, %bb_while_5_20_bre ], [ %r361, %bb_if_9_31_end ]
  %r296 = phi i32 [ %r315, %bb_while_5_20_bre ], [ %r362, %bb_if_9_31_end ]
  %r297 = phi i32 [ %r314, %bb_while_5_20_bre ], [ %r363, %bb_if_9_31_end ]
  %r152 = icmp ne i32 %r296, %r278
  br i1 %r152, label %bb22_29_next, label %bb_while_5_29_bre

bb22_29_next:
  %r290 = phi i32 [ %r294, %bb_while_5_29_cond ]
  %r291 = phi i32 [ %r295, %bb_while_5_29_cond ]
  %r292 = phi i32 [ %r296, %bb_while_5_29_cond ]
  %r293 = phi i32 [ %r297, %bb_while_5_29_cond ]
  %r155 = icmp ne i32 %r290, %r280
  br i1 %r155, label %bb_while_5_29_whilestms, label %bb_while_5_29_bre

bb_while_5_29_whilestms:
  %r286 = phi i32 [ %r290, %bb22_29_next ]
  %r287 = phi i32 [ %r291, %bb22_29_next ]
  %r288 = phi i32 [ %r292, %bb22_29_next ]
  %r289 = phi i32 [ %r293, %bb22_29_next ]
  %r157 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r288
  %r158 = load i32, i32* %r157
  %r160 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r286
  %r161 = load i32, i32* %r160
  %r162 = add i32 %r161, 1
  %r163 = icmp slt i32 %r158, %r162
  br i1 %r163, label %bb_if_9_31_true, label %bb_if_9_31_false

bb_if_9_31_true:
  %r340 = phi i32 [ %r286, %bb_while_5_29_whilestms ]
  %r341 = phi i32 [ %r287, %bb_while_5_29_whilestms ]
  %r342 = phi i32 [ %r288, %bb_while_5_29_whilestms ]
  %r343 = phi i32 [ %r289, %bb_while_5_29_whilestms ]
  %r165 = getelementptr i32, i32* %r100, i32 %r341
  %r167 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r342
  %r168 = load i32, i32* %r167
  store i32 %r168, i32* %r165
  %r170 = add i32 %r341, 1
  %r344 = add i32 %r170, 0
  %r172 = add i32 %r342, 1
  %r345 = add i32 %r172, 0
  br label %bb_if_9_31_end

bb_if_9_31_false:
  %r318 = phi i32 [ %r286, %bb_while_5_29_whilestms ]
  %r319 = phi i32 [ %r287, %bb_while_5_29_whilestms ]
  %r320 = phi i32 [ %r288, %bb_while_5_29_whilestms ]
  %r321 = phi i32 [ %r289, %bb_while_5_29_whilestms ]
  %r174 = getelementptr i32, i32* %r100, i32 %r319
  %r176 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r318
  %r177 = load i32, i32* %r176
  store i32 %r177, i32* %r174
  %r179 = add i32 %r319, 1
  %r322 = add i32 %r179, 0
  %r181 = add i32 %r318, 1
  %r323 = add i32 %r181, 0
  br label %bb_if_9_31_end

bb_if_9_31_end:
  %r360 = phi i32 [ %r340, %bb_if_9_31_true ], [ %r323, %bb_if_9_31_false ]
  %r361 = phi i32 [ %r344, %bb_if_9_31_true ], [ %r322, %bb_if_9_31_false ]
  %r362 = phi i32 [ %r345, %bb_if_9_31_true ], [ %r320, %bb_if_9_31_false ]
  %r363 = phi i32 [ %r343, %bb_if_9_31_true ], [ %r321, %bb_if_9_31_false ]
  br label %bb_while_5_29_cond

bb_while_5_29_bre:
  %r356 = phi i32 [ %r294, %bb_while_5_29_cond ], [ %r290, %bb22_29_next ]
  %r357 = phi i32 [ %r295, %bb_while_5_29_cond ], [ %r291, %bb22_29_next ]
  %r358 = phi i32 [ %r296, %bb_while_5_29_cond ], [ %r292, %bb22_29_next ]
  %r359 = phi i32 [ %r297, %bb_while_5_29_cond ], [ %r293, %bb22_29_next ]
  br label %bb_while_5_42_cond

bb_while_5_42_cond:
  %r326 = phi i32 [ %r356, %bb_while_5_29_bre ], [ %r330, %bb_while_5_42_whilestms ]
  %r327 = phi i32 [ %r357, %bb_while_5_29_bre ], [ %r334, %bb_while_5_42_whilestms ]
  %r328 = phi i32 [ %r358, %bb_while_5_29_bre ], [ %r335, %bb_while_5_42_whilestms ]
  %r329 = phi i32 [ %r359, %bb_while_5_29_bre ], [ %r333, %bb_while_5_42_whilestms ]
  %r184 = icmp slt i32 %r328, %r278
  br i1 %r184, label %bb_while_5_42_whilestms, label %bb_while_5_42_bre

bb_while_5_42_whilestms:
  %r330 = phi i32 [ %r326, %bb_while_5_42_cond ]
  %r331 = phi i32 [ %r327, %bb_while_5_42_cond ]
  %r332 = phi i32 [ %r328, %bb_while_5_42_cond ]
  %r333 = phi i32 [ %r329, %bb_while_5_42_cond ]
  %r186 = getelementptr i32, i32* %r100, i32 %r331
  %r188 = getelementptr [10 x i32 ], [10 x i32 ]* %r116, i32 0, i32 %r332
  %r189 = load i32, i32* %r188
  store i32 %r189, i32* %r186
  %r191 = add i32 %r331, 1
  %r334 = add i32 %r191, 0
  %r193 = add i32 %r332, 1
  %r335 = add i32 %r193, 0
  br label %bb_while_5_42_cond

bb_while_5_42_bre:
  %r364 = phi i32 [ %r326, %bb_while_5_42_cond ]
  %r365 = phi i32 [ %r327, %bb_while_5_42_cond ]
  %r366 = phi i32 [ %r328, %bb_while_5_42_cond ]
  %r367 = phi i32 [ %r329, %bb_while_5_42_cond ]
  br label %bb_while_5_47_cond

bb_while_5_47_cond:
  %r346 = phi i32 [ %r364, %bb_while_5_42_bre ], [ %r355, %bb_while_5_47_whilestms ]
  %r347 = phi i32 [ %r365, %bb_while_5_42_bre ], [ %r354, %bb_while_5_47_whilestms ]
  %r348 = phi i32 [ %r366, %bb_while_5_42_bre ], [ %r352, %bb_while_5_47_whilestms ]
  %r349 = phi i32 [ %r367, %bb_while_5_42_bre ], [ %r353, %bb_while_5_47_whilestms ]
  %r196 = icmp slt i32 %r346, %r280
  br i1 %r196, label %bb_while_5_47_whilestms, label %bb_while_5_47_bre

bb_while_5_47_whilestms:
  %r350 = phi i32 [ %r346, %bb_while_5_47_cond ]
  %r351 = phi i32 [ %r347, %bb_while_5_47_cond ]
  %r352 = phi i32 [ %r348, %bb_while_5_47_cond ]
  %r353 = phi i32 [ %r349, %bb_while_5_47_cond ]
  %r198 = getelementptr i32, i32* %r100, i32 %r351
  %r200 = getelementptr [10 x i32 ], [10 x i32 ]* %r117, i32 0, i32 %r350
  %r201 = load i32, i32* %r200
  store i32 %r201, i32* %r198
  %r203 = add i32 %r351, 1
  %r354 = add i32 %r203, 0
  %r205 = add i32 %r350, 1
  %r355 = add i32 %r205, 0
  br label %bb_while_5_47_cond

bb_while_5_47_bre:
  %r306 = phi i32 [ %r346, %bb_while_5_47_cond ]
  %r307 = phi i32 [ %r347, %bb_while_5_47_cond ]
  %r308 = phi i32 [ %r348, %bb_while_5_47_cond ]
  %r309 = phi i32 [ %r349, %bb_while_5_47_cond ]
  ret i32 0
}

define i32 @MergeSort( i32* %r206, i32 %r207, i32 %r209 ) {
bb2:
  %r372 = add i32 0, 0
  %r373 = add i32 0, 0
  %r374 = add i32 0, 0
  %r375 = add i32 %r207, 0
  %r376 = add i32 0, 0
  %r377 = add i32 %r209, 0
  %r213 = icmp slt i32 %r375, %r377
  br i1 %r213, label %bb_if_5_57_true, label %bb_if_5_57_false

bb_if_5_57_true:
  %r217 = add i32 %r375, %r377
  %r218 = sdiv i32 %r217, 2
  %r380 = add i32 %r218, 0
  %r222 = call i32 @MergeSort(i32* %r206, i32 %r375, i32 %r380)
  %r381 = add i32 %r222, 0
  %r224 = add i32 %r380, 1
  %r382 = add i32 %r224, 0
  %r227 = call i32 @MergeSort(i32* %r206, i32 %r382, i32 %r377)
  %r383 = add i32 %r227, 0
  %r231 = call i32 @Merge(i32* %r206, i32 %r375, i32 %r380, i32 %r377)
  %r384 = add i32 %r231, 0
  br label %bb_if_5_57_end

bb_if_5_57_false:
  br label %bb_if_5_57_end

bb_if_5_57_end:
  %r378 = phi i32 [ %r384, %bb_if_5_57_true ], [ %r372, %bb_if_5_57_false ]
  %r379 = phi i32 [ %r380, %bb_if_5_57_true ], [ %r373, %bb_if_5_57_false ]
  ret i32 0
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 71)
  store i32 10, i32* @n
  %r232 = alloca [ 10 x i32 ]
  %r233 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 0
  store i32 4, i32* %r233
  %r234 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 1
  store i32 3, i32* %r234
  %r235 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 2
  store i32 9, i32* %r235
  %r236 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 3
  store i32 2, i32* %r236
  %r237 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 4
  store i32 0, i32* %r237
  %r238 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 5
  store i32 1, i32* %r238
  %r239 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 6
  store i32 6, i32* %r239
  %r240 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 7
  store i32 5, i32* %r240
  %r241 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 8
  store i32 7, i32* %r241
  %r242 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 9
  store i32 8, i32* %r242
  %r387 = add i32 0, 0
  %r388 = add i32 0, 0
  %r389 = add i32 0, 0
  %r245 = load i32, i32* @n
  %r246 = sub i32 %r245, 1
  %r390 = add i32 %r246, 0
  %r247 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 0
  %r250 = call i32 @MergeSort(i32* %r247, i32 %r388, i32 %r390)
  %r391 = add i32 %r250, 0
  br label %bb_while_5_81_cond

bb_while_5_81_cond:
  %r399 = phi i32 [ %r391, %bb3 ], [ %r398, %bb_while_5_81_whilestms ]
  %r400 = phi i32 [ %r390, %bb3 ], [ %r397, %bb_while_5_81_whilestms ]
  %r252 = load i32, i32* @n
  %r253 = icmp slt i32 %r399, %r252
  br i1 %r253, label %bb_while_5_81_whilestms, label %bb_while_5_81_bre

bb_while_5_81_whilestms:
  %r394 = phi i32 [ %r399, %bb_while_5_81_cond ]
  %r395 = phi i32 [ %r400, %bb_while_5_81_cond ]
  %r255 = getelementptr [10 x i32 ], [10 x i32 ]* %r232, i32 0, i32 %r394
  %r256 = load i32, i32* %r255
  %r396 = add i32 %r256, 0
  call void @putint(i32 %r396)
  %r397 = add i32 10, 0
  call void @putch(i32 %r397)
  %r260 = add i32 %r394, 1
  %r398 = add i32 %r260, 0
  br label %bb_while_5_81_cond

bb_while_5_81_bre:
  %r392 = phi i32 [ %r399, %bb_while_5_81_cond ]
  %r393 = phi i32 [ %r400, %bb_while_5_81_cond ]
  call void @_sysy_stoptime(i32 97)
  ret i32 0
}

