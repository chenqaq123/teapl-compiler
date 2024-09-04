#ifndef REGISTER_RULRES
#define REGISTER_RULRES

#include <set>
#include <array>
const std::set<int> allocateRegs{8, 9, 10, 11, 12, 13, 14, 15};//caller-save
//以下四个寄存器为allocReg时spill专用
const int XXn1 = 16;
const int XXn2 = 17;
const int XXn3 = 18;
const int XXn4 = 19;

const int XXna = 28;
const int XXnb = 27;
const std::array<int, 8> paramRegs = {0, 1, 2, 3, 4, 5, 6, 7};
/**
 * 函数进入时：
 *      保存当前的帧指针（FP）。
 *      将栈指针（SP）的值赋给帧指针（FP），以建立新的栈帧。
 * 函数退出时：
 *      从栈中恢复之前保存的帧指针。
 *      使用返回地址从被调用函数返回到调用者。
 */
const int XnFP = 29;    // 帧指针
const int XXnret = 0;   // 存储返回值
/**
 * 链接寄存器用于存储函数调用返回地址。当一个函数调用另一个函数时，返回地址（即调用函数的下一条指令地址）
 * 会被存储在LR中。当被调用函数完成后，它可以从LR中取出返回地址并跳转回调用函数继续执行。
 */
const int XnLR = 30;    // LR
const int INT_LENGTH = 8;
#endif