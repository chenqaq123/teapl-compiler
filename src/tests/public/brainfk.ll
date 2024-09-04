declare i32 @getch( )
declare i32 @getint( )
declare void @putch( i32 )
declare void @putint( i32 )
declare void @putarray( i32, i32* )
declare void @_sysy_starttime( i32 )
declare void @_sysy_stoptime( i32 )
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [ 65536 x i32 ] zeroinitializer
@program = global [ 32768 x i32 ] zeroinitializer
@ptr = global i32 0
define void @read_program( ) {
bb1:
  %r184 = add i32 0, 0
  %r185 = add i32 0, 0
  %r186 = add i32 0, 0
  %r102 = call i32 @getint()
  %r187 = add i32 %r102, 0
  br label %bb_while_3_14_cond

bb_while_3_14_cond:
  %r191 = phi i32 [ %r185, %bb1 ], [ %r190, %bb_while_3_14_whilestms ]
  %r105 = icmp slt i32 %r191, %r187
  br i1 %r105, label %bb_while_3_14_whilestms, label %bb_while_3_14_bre

bb_while_3_14_whilestms:
  %r189 = phi i32 [ %r191, %bb_while_3_14_cond ]
  %r107 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r189
  %r108 = call i32 @getch()
  store i32 %r108, i32* %r107
  %r110 = add i32 %r189, 1
  %r190 = add i32 %r110, 0
  br label %bb_while_3_14_cond

bb_while_3_14_bre:
  %r188 = phi i32 [ %r191, %bb_while_3_14_cond ]
  %r112 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 %r188
  store i32 0, i32* %r112
  ret void
}

define void @interpret( i32* %r113 ) {
bb2:
  %r195 = add i32 0, 0
  %r196 = add i32 0, 0
  %r197 = add i32 0, 0
  %r198 = add i32 0, 0
  br label %bb_while_3_26_cond

bb_while_3_26_cond:
  %r281 = phi i32 [ %r198, %bb2 ], [ %r280, %bb_if_5_52_end ]
  %r282 = phi i32 [ %r195, %bb2 ], [ %r278, %bb_if_5_52_end ]
  %r283 = phi i32 [ %r196, %bb2 ], [ %r279, %bb_if_5_52_end ]
  %r118 = getelementptr i32, i32* %r113, i32 %r281
  %r119 = load i32, i32* %r118
  %r120 = icmp ne i32 %r119, 0
  br i1 %r120, label %bb_while_3_26_whilestms, label %bb_while_3_26_bre

bb_while_3_26_whilestms:
  %r251 = phi i32 [ %r281, %bb_while_3_26_cond ]
  %r252 = phi i32 [ %r282, %bb_while_3_26_cond ]
  %r253 = phi i32 [ %r283, %bb_while_3_26_cond ]
  %r122 = getelementptr i32, i32* %r113, i32 %r251
  %r123 = load i32, i32* %r122
  %r254 = add i32 %r123, 0
  %r125 = icmp eq i32 %r254, 62
  br i1 %r125, label %bb_if_5_28_true, label %bb_if_5_28_false

bb_if_5_28_true:
  %r296 = phi i32 [ %r251, %bb_while_3_26_whilestms ]
  %r297 = phi i32 [ %r254, %bb_while_3_26_whilestms ]
  %r298 = phi i32 [ %r253, %bb_while_3_26_whilestms ]
  %r126 = load i32, i32* @ptr
  %r127 = add i32 %r126, 1
  store i32 %r127, i32* @ptr
  br label %bb_if_5_28_end

bb_if_5_28_false:
  %r290 = phi i32 [ %r251, %bb_while_3_26_whilestms ]
  %r291 = phi i32 [ %r254, %bb_while_3_26_whilestms ]
  %r292 = phi i32 [ %r253, %bb_while_3_26_whilestms ]
  br label %bb_if_5_28_end

bb_if_5_28_end:
  %r214 = phi i32 [ %r296, %bb_if_5_28_true ], [ %r290, %bb_if_5_28_false ]
  %r215 = phi i32 [ %r297, %bb_if_5_28_true ], [ %r291, %bb_if_5_28_false ]
  %r216 = phi i32 [ %r298, %bb_if_5_28_true ], [ %r292, %bb_if_5_28_false ]
  %r129 = icmp eq i32 %r215, 60
  br i1 %r129, label %bb_if_5_32_true, label %bb_if_5_32_false

bb_if_5_32_true:
  %r258 = phi i32 [ %r214, %bb_if_5_28_end ]
  %r259 = phi i32 [ %r215, %bb_if_5_28_end ]
  %r260 = phi i32 [ %r216, %bb_if_5_28_end ]
  %r130 = load i32, i32* @ptr
  %r131 = sub i32 %r130, 1
  store i32 %r131, i32* @ptr
  br label %bb_if_5_32_end

bb_if_5_32_false:
  %r235 = phi i32 [ %r214, %bb_if_5_28_end ]
  %r236 = phi i32 [ %r215, %bb_if_5_28_end ]
  %r237 = phi i32 [ %r216, %bb_if_5_28_end ]
  br label %bb_if_5_32_end

bb_if_5_32_end:
  %r220 = phi i32 [ %r258, %bb_if_5_32_true ], [ %r235, %bb_if_5_32_false ]
  %r221 = phi i32 [ %r259, %bb_if_5_32_true ], [ %r236, %bb_if_5_32_false ]
  %r222 = phi i32 [ %r260, %bb_if_5_32_true ], [ %r237, %bb_if_5_32_false ]
  %r133 = icmp eq i32 %r221, 43
  br i1 %r133, label %bb_if_5_36_true, label %bb_if_5_36_false

bb_if_5_36_true:
  %r205 = phi i32 [ %r220, %bb_if_5_32_end ]
  %r206 = phi i32 [ %r221, %bb_if_5_32_end ]
  %r207 = phi i32 [ %r222, %bb_if_5_32_end ]
  %r134 = load i32, i32* @ptr
  %r135 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r134
  %r136 = load i32, i32* @ptr
  %r137 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r136
  %r138 = load i32, i32* %r137
  %r139 = add i32 %r138, 1
  store i32 %r139, i32* %r135
  br label %bb_if_5_36_end

bb_if_5_36_false:
  %r232 = phi i32 [ %r220, %bb_if_5_32_end ]
  %r233 = phi i32 [ %r221, %bb_if_5_32_end ]
  %r234 = phi i32 [ %r222, %bb_if_5_32_end ]
  br label %bb_if_5_36_end

bb_if_5_36_end:
  %r268 = phi i32 [ %r205, %bb_if_5_36_true ], [ %r232, %bb_if_5_36_false ]
  %r269 = phi i32 [ %r206, %bb_if_5_36_true ], [ %r233, %bb_if_5_36_false ]
  %r270 = phi i32 [ %r207, %bb_if_5_36_true ], [ %r234, %bb_if_5_36_false ]
  %r141 = icmp eq i32 %r269, 45
  br i1 %r141, label %bb_if_5_40_true, label %bb_if_5_40_false

bb_if_5_40_true:
  %r284 = phi i32 [ %r268, %bb_if_5_36_end ]
  %r285 = phi i32 [ %r269, %bb_if_5_36_end ]
  %r286 = phi i32 [ %r270, %bb_if_5_36_end ]
  %r142 = load i32, i32* @ptr
  %r143 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r142
  %r144 = load i32, i32* @ptr
  %r145 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r144
  %r146 = load i32, i32* %r145
  %r147 = sub i32 %r146, 1
  store i32 %r147, i32* %r143
  br label %bb_if_5_40_end

bb_if_5_40_false:
  %r302 = phi i32 [ %r268, %bb_if_5_36_end ]
  %r303 = phi i32 [ %r269, %bb_if_5_36_end ]
  %r304 = phi i32 [ %r270, %bb_if_5_36_end ]
  br label %bb_if_5_40_end

bb_if_5_40_end:
  %r217 = phi i32 [ %r284, %bb_if_5_40_true ], [ %r302, %bb_if_5_40_false ]
  %r218 = phi i32 [ %r285, %bb_if_5_40_true ], [ %r303, %bb_if_5_40_false ]
  %r219 = phi i32 [ %r286, %bb_if_5_40_true ], [ %r304, %bb_if_5_40_false ]
  %r149 = icmp eq i32 %r218, 46
  br i1 %r149, label %bb_if_5_44_true, label %bb_if_5_44_false

bb_if_5_44_true:
  %r305 = phi i32 [ %r217, %bb_if_5_40_end ]
  %r306 = phi i32 [ %r218, %bb_if_5_40_end ]
  %r307 = phi i32 [ %r219, %bb_if_5_40_end ]
  %r150 = load i32, i32* @ptr
  %r151 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r150
  %r152 = load i32, i32* %r151
  call void @putch(i32 %r152)
  br label %bb_if_5_44_end

bb_if_5_44_false:
  %r241 = phi i32 [ %r217, %bb_if_5_40_end ]
  %r242 = phi i32 [ %r218, %bb_if_5_40_end ]
  %r243 = phi i32 [ %r219, %bb_if_5_40_end ]
  br label %bb_if_5_44_end

bb_if_5_44_end:
  %r211 = phi i32 [ %r305, %bb_if_5_44_true ], [ %r241, %bb_if_5_44_false ]
  %r212 = phi i32 [ %r306, %bb_if_5_44_true ], [ %r242, %bb_if_5_44_false ]
  %r213 = phi i32 [ %r307, %bb_if_5_44_true ], [ %r243, %bb_if_5_44_false ]
  %r154 = icmp eq i32 %r212, 44
  br i1 %r154, label %bb_if_5_48_true, label %bb_if_5_48_false

bb_if_5_48_true:
  %r208 = phi i32 [ %r211, %bb_if_5_44_end ]
  %r209 = phi i32 [ %r212, %bb_if_5_44_end ]
  %r210 = phi i32 [ %r213, %bb_if_5_44_end ]
  %r155 = load i32, i32* @ptr
  %r156 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r155
  %r157 = call i32 @getch()
  store i32 %r157, i32* %r156
  br label %bb_if_5_48_end

bb_if_5_48_false:
  %r202 = phi i32 [ %r211, %bb_if_5_44_end ]
  %r203 = phi i32 [ %r212, %bb_if_5_44_end ]
  %r204 = phi i32 [ %r213, %bb_if_5_44_end ]
  br label %bb_if_5_48_end

bb_if_5_48_end:
  %r255 = phi i32 [ %r208, %bb_if_5_48_true ], [ %r202, %bb_if_5_48_false ]
  %r256 = phi i32 [ %r209, %bb_if_5_48_true ], [ %r203, %bb_if_5_48_false ]
  %r257 = phi i32 [ %r210, %bb_if_5_48_true ], [ %r204, %bb_if_5_48_false ]
  %r159 = icmp eq i32 %r256, 93
  br i1 %r159, label %bb27_52_next, label %bb_if_5_52_false

bb27_52_next:
  %r199 = phi i32 [ %r255, %bb_if_5_48_end ]
  %r200 = phi i32 [ %r256, %bb_if_5_48_end ]
  %r201 = phi i32 [ %r257, %bb_if_5_48_end ]
  %r160 = load i32, i32* @ptr
  %r161 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32 0, i32 %r160
  %r162 = load i32, i32* %r161
  %r163 = icmp ne i32 %r162, 0
  br i1 %r163, label %bb_if_5_52_true, label %bb_if_5_52_false

bb_if_5_52_true:
  %r261 = phi i32 [ %r199, %bb27_52_next ]
  %r262 = phi i32 [ %r200, %bb27_52_next ]
  %r263 = phi i32 [ %r201, %bb27_52_next ]
  %r264 = add i32 1, 0
  br label %bb_while_7_55_cond

bb_while_7_55_cond:
  %r238 = phi i32 [ %r261, %bb_if_5_52_true ], [ %r299, %bb_if_9_62_end ]
  %r239 = phi i32 [ %r262, %bb_if_5_52_true ], [ %r300, %bb_if_9_62_end ]
  %r240 = phi i32 [ %r264, %bb_if_5_52_true ], [ %r301, %bb_if_9_62_end ]
  %r165 = icmp sgt i32 %r240, 0
  br i1 %r165, label %bb_while_7_55_whilestms, label %bb_while_7_55_bre

bb_while_7_55_whilestms:
  %r223 = phi i32 [ %r238, %bb_while_7_55_cond ]
  %r224 = phi i32 [ %r239, %bb_while_7_55_cond ]
  %r225 = phi i32 [ %r240, %bb_while_7_55_cond ]
  %r167 = sub i32 %r223, 1
  %r226 = add i32 %r167, 0
  %r169 = getelementptr i32, i32* %r113, i32 %r226
  %r170 = load i32, i32* %r169
  %r227 = add i32 %r170, 0
  %r172 = icmp eq i32 %r227, 91
  br i1 %r172, label %bb_if_9_58_true, label %bb_if_9_58_false

bb_if_9_58_true:
  %r247 = phi i32 [ %r226, %bb_while_7_55_whilestms ]
  %r248 = phi i32 [ %r227, %bb_while_7_55_whilestms ]
  %r249 = phi i32 [ %r225, %bb_while_7_55_whilestms ]
  %r174 = sub i32 %r249, 1
  %r250 = add i32 %r174, 0
  br label %bb_if_9_58_end

bb_if_9_58_false:
  %r265 = phi i32 [ %r226, %bb_while_7_55_whilestms ]
  %r266 = phi i32 [ %r227, %bb_while_7_55_whilestms ]
  %r267 = phi i32 [ %r225, %bb_while_7_55_whilestms ]
  br label %bb_if_9_58_end

bb_if_9_58_end:
  %r244 = phi i32 [ %r247, %bb_if_9_58_true ], [ %r265, %bb_if_9_58_false ]
  %r245 = phi i32 [ %r248, %bb_if_9_58_true ], [ %r266, %bb_if_9_58_false ]
  %r246 = phi i32 [ %r250, %bb_if_9_58_true ], [ %r267, %bb_if_9_58_false ]
  %r176 = icmp eq i32 %r245, 93
  br i1 %r176, label %bb_if_9_62_true, label %bb_if_9_62_false

bb_if_9_62_true:
  %r228 = phi i32 [ %r244, %bb_if_9_58_end ]
  %r229 = phi i32 [ %r245, %bb_if_9_58_end ]
  %r230 = phi i32 [ %r246, %bb_if_9_58_end ]
  %r178 = add i32 %r230, 1
  %r231 = add i32 %r178, 0
  br label %bb_if_9_62_end

bb_if_9_62_false:
  %r271 = phi i32 [ %r244, %bb_if_9_58_end ]
  %r272 = phi i32 [ %r245, %bb_if_9_58_end ]
  %r273 = phi i32 [ %r246, %bb_if_9_58_end ]
  br label %bb_if_9_62_end

bb_if_9_62_end:
  %r299 = phi i32 [ %r228, %bb_if_9_62_true ], [ %r271, %bb_if_9_62_false ]
  %r300 = phi i32 [ %r229, %bb_if_9_62_true ], [ %r272, %bb_if_9_62_false ]
  %r301 = phi i32 [ %r231, %bb_if_9_62_true ], [ %r273, %bb_if_9_62_false ]
  br label %bb_while_7_55_cond

bb_while_7_55_bre:
  %r274 = phi i32 [ %r238, %bb_while_7_55_cond ]
  %r275 = phi i32 [ %r239, %bb_while_7_55_cond ]
  %r276 = phi i32 [ %r240, %bb_while_7_55_cond ]
  br label %bb_if_5_52_end

bb_if_5_52_false:
  %r293 = phi i32 [ %r255, %bb_if_5_48_end ], [ %r199, %bb27_52_next ]
  %r294 = phi i32 [ %r256, %bb_if_5_48_end ], [ %r200, %bb27_52_next ]
  %r295 = phi i32 [ %r257, %bb_if_5_48_end ], [ %r201, %bb27_52_next ]
  br label %bb_if_5_52_end

bb_if_5_52_end:
  %r277 = phi i32 [ %r274, %bb_while_7_55_bre ], [ %r293, %bb_if_5_52_false ]
  %r278 = phi i32 [ %r275, %bb_while_7_55_bre ], [ %r294, %bb_if_5_52_false ]
  %r279 = phi i32 [ %r276, %bb_while_7_55_bre ], [ %r295, %bb_if_5_52_false ]
  %r180 = add i32 %r277, 1
  %r280 = add i32 %r180, 0
  br label %bb_while_3_26_cond

bb_while_3_26_bre:
  %r287 = phi i32 [ %r281, %bb_while_3_26_cond ]
  %r288 = phi i32 [ %r282, %bb_while_3_26_cond ]
  %r289 = phi i32 [ %r283, %bb_while_3_26_cond ]
  ret void
}

define i32 @main( ) {
bb3:
  call void @_sysy_starttime(i32 76)
  call void @read_program()
  %r181 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32 0, i32 0
  call void @interpret(i32* %r181)
  call void @putch(i32 10)
  call void @_sysy_stoptime(i32 80)
  ret i32 0
}

