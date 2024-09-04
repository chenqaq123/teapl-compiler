> 本文由 [简悦 SimpRead](http://ksria.com/simpread/) 转码， 原文地址 [zhuanlan.zhihu.com](https://zhuanlan.zhihu.com/p/624008784)

指令集架构（ISA）是计算机抽象模型的一部分。它定义了软件如何控制处理器。

ARM ISA 允许编写符合 ARM 规范的软件和固件。如果软件或固件符合规范，任何基于 ARM 的处理器都将以相同的方式执行它。本文介绍在 64 位 ARMv8-A 架构 (也称为 AArch64) 中使用的 A64 指令集。

1. 指令集概述
--------

Armv8-A 支持三种指令集：A32、T32 和 A64。

**在 AArch64 执行状态下执行时使用 A64 指令集。它是一个固定长度的 32 位指令集**。名称中的 64 指的是 AArch64 执行状态对该指令的使用。它不是指内存中指令的大小。

A32 和 T32 指令集也分别被称为 Arm 和 Thumb。这些指令集在 AArch32 执行状态下执行时使用。本文不涉及 A32 和 T32 指令集。

ARM 架构描述了遵循简单顺序执行（SSE）模型的指令。这意味着处理器的行为就好像处理器取指、解码和执行一条指令一次完成，并且按照指令在内存中出现的顺序。

现代处理器具有可以一次执行多个指令的流水线（pipeline），并且可能是无序的。下图显示了 Arm Cortex 处理器的 pipeline 示例。

![](https://pic3.zhimg.com/v2-9b87bda88bf42363c2c2d9ad1ccd6ffa_r.jpg)

2. AArch64 寄存器
--------------

### 2.1 通用寄存器

大多数 A64 指令都在寄存器上操作。AArch64 **架构提供了 31 个通用寄存器。每个寄存器都可以用作 64 位 X 寄存器（X0～X30）或 32 位 W 寄存器（W0～W30）**。这是查看同一寄存器的两种不同方式。例如，下边这个寄存器图显示 W0 是 X0 的低 32 位，W1 是 X1 的低 32 位。

![](https://pic2.zhimg.com/v2-87d3404aac73c9c7ef4bf5350d4376b1_r.jpg)

对于数据处理指令，X 或 W 的选择决定了操作的 size。使用 X 寄存器将导致 64 位的计算，使用 W 寄存器将导致 32 位的计算。下面的例子是执行 32 位整数加法：

```
ADD W0, W1, W2
```

下面的例子是执行 64 位整数加法：

```
ADD X0, X1, X2
```

当写入 W 寄存器时， 64 位寄存器的高 32 位为零。

有一组单独的 32 个寄存器用于浮点和向量操作。这些寄存器是 128 位的，但是像通用寄存器一样，可以通过几种方式访问。Bx 是 8 位，Hx 是 16 位，以此类推，Qx 是 128 位。

![](https://pic2.zhimg.com/v2-8336793c5dbdc929f75370cb81e1f211_r.jpg)

寄存器使用的名称决定了计算的大小。下面的例子执行一个 32 位浮点加法运算：

```
FADD  S0, S1, S2
```

下面的例子执行一个 64 位浮点加法运算：

```
FADD  D0, D1, D2
```

这些寄存器也可以称为 V 寄存器。当使用 V 形式时，寄存器被视为一个向量。这意味着它可以包含多个独立的值，而不是单个值。下面这个例子执行向量浮点加法：

```
FADD  V0.2D, V1.2D, V2.2D
```

下面这个例子执行向量整数加法：

```
ADD  V0.2D, V1.2D, V2.2D
```

### 2.2 其它寄存器

以下是 A64 指令集中的一些其它的特殊寄存器：

*   零寄存器（zero register）有两个：XZR 和 WZR，总是读取为 0 并忽略写入。XZR 是 64 位的零寄存器，WZR 是 32 位的零寄存器。
*   栈指针（stack pointer，SP）寄存器，可以作为 load 和 store 指令的基地址。也可以将栈指针与一组有限的数据处理指令一起使用。Armv8-A 支持 4 个异常等级，每个异常等级都有一个 SP 寄存器 SP_ELn。当 SP 在指令中使用时，它表示当前栈指针。SP 是 64 位的栈指针寄存器，WSP 是 32 位的栈指针寄存器。
*   通用寄存器 X30/W30 必须被用作链接寄存器（Link Register，LR）。
*   ELR_ELx 寄存器（Exception Link Register），存放了从异常返回的地址。
*   在 A64 中，程序计数器（PC）不是通用寄存器，它不能与数据处理指令一起使用。PC 可以通过下面的方式来读取：

```
ADR Xd, .
```

ADR 指令返回根据当前位置计算的 label 地址。点（.）表示这里，因此上述指令返回自身的地址。这相当于读取 PC。一些分支指令和一些 load/store 操作隐式地使用 PC 的值。

注意：在 A32 和 T32 指令集中，PC 和 SP 是通用寄存器。而在 A64 指令集中不是。

### 2.3 系统寄存器

系统寄存器用于配置处理器和控制系统，如 MMU 和异常处理。

系统寄存器不能直接用于数据处理或 load/store 指令。相反，需要将系统寄存器的内容读入通用寄存器 X，对其进行操作，然后将其写回系统寄存器。有两个专门用来访问系统寄存器的指令 MRS 和 MSR：

*   MRS Xd，<system register> 读系统寄存器到 Xd
*   MSR <system register>, Xn 将 Xn 写入系统寄存器

系统寄存器由名称指定，例如 MRS X0, SCTLR_EL1 将 SCTLR_EL1 读入 X0。

**系统寄存器名以_ELx 结尾。_ELx 指定访问寄存器所需的最小权限**。

例如 SCTLR_EL1 需要 EL1 或更高的权限。SCTLR_EL2 需要 EL2 或更高的权限。SCTLR_EL3 需要 EL3 权限。如果权限不足，那么访问寄存器会导致异常。

3. 数据处理指令
---------

### 3.1 算术和逻辑运算指令

逻辑和整数算术指令的基本格式如下图所示。

![](https://pic3.zhimg.com/v2-6a21057a30bededf912fcb541db773a2_r.jpg)

指令的组成部分如下：

*   operation 定义了指令的功能。例如，ADD 执行加法，AND 执行逻辑与。可以在操作中添加 S 来设置标志。例如，ADD 变成 ADDS，这个 S 告诉处理器根据指令的结果更新 ALU 标志。
*   Destination 是指令的目的地，它总是一个寄存器，指定了操作结果应放在的位置。大多数指令只有一个目的寄存器。一些指令有两个目的寄存器。当目的寄存器是 W 寄存器时，对应的 X 寄存器的高 32 位被置为 0。
*   操作数 (operand) 1 始终是寄存器。这是指令的第一个输入。
*   操作数 (operand) 2 是一个寄存器或常量，它是指令的第二个输入。当操作数 2 是一个寄存器时，它可以包含一个 shift。当操作数 2 是一个常量时，它被编码在指令本身内。这意味着可用常数的范围是有限的。

有一些特殊情况，例如 MOV 和 MVN 指令。MOV 将一个常量或另一个寄存器的内容移动到目标寄存器中。MOV 和 MVN 只需要一个输入操作数，可以是寄存器，也可以是常量，如下所示：

MOV X0, #1 将通用寄存器 X0 的值设为 1。

MVN W0, W1 将通用寄存器 W0 的值设为~ W1。

### 3.2 浮点操作指令

浮点操作遵循与整数数据处理指令相同的格式，并使用浮点寄存器。与整数数据处理指令一样，操作的大小决定了所使用的寄存器的大小。浮点指令的 operation 总是以 F 开头。例如下面这个指令设置半精度的 H0 = H1 / H2：

```
FDIV  H0, H1, H2
```

下面这个指令设置单精度的 S0 = S1 + S2：

```
FADD  S0, S1, S2
```

下面这个指令设置双精度的 D0 = D1 - D2：

```
FSUB  D0, D1, D2
```

Armv8.2-A 增加了对 16 位浮点 FP16 的可选支持。如果实现 SVE 或 SVE2，则必须支持 FP16，这意味着它在 Armv9-A 中实际上是强制性的。BFloat16，通常缩写为 BF16，是一种可选的 16 位浮点存储格式。

在 Armv8-A 中，必须支持浮点。该架构指定使用 rich OS（如 Linux）都需要它。如果运行的是完全专有的软件堆栈，则在技术上允许省略浮点支持。大多数工具链，包括 GCC 和 Arm Compiler 6，都支持浮点数。

### 3.3 位操作

有一组指令用于操作寄存器内的位。下图为示例：

![](https://pic4.zhimg.com/v2-e6bc207f9850ec04491fcc440d478f1b_r.jpg)

BFI 指令在寄存器中插入一个位域。在上图中，BFI 从源寄存器（W0）中获取一个 6-bit 字段，并将其插入到目标寄存器的第 9 位。

UBFX 提取一个位域。在上图中，UBFX 从源寄存器的第 18 位获取一个 7 位字段，并将其放入目标寄存器中。

其他指令可以反转字节或位顺序，如下图所示：

![](https://pic3.zhimg.com/v2-ec8f0ea3ff4e5f442b9fee6a0a4bab8a_r.jpg)

4. load 和 store 指令
------------------

基本的 load 和 store 操作是：LDR（load）和 STR（store）。LDR 和 STR 在内存和通用寄存器之间传输单个值。这些指令的语法是：

```
LDR<Sign><Size>  <Destination>, [<address>]
STR<Size>        <Destination>, [<address>]
```

LDR 指令是把内存地址 <address> 中的数据加载到 < Destination > 指定的通用寄存器中；STR 指令是把通用寄存器中的数据存储到内存地址 < address > 中。

### 4.1 size

load/store 的 size 由寄存器类型 X 或 W 和 size 字段决定。X 表示 64 位，W 表示 32 位。

下面这条指令从地址中 load 32 位到 W0： LDR W0, [<address>]

下面这条指令从地址中 load 64 位到 X0： LDR X0, [<address>]

Size 字段允许 load 子寄存器大小的数据量。

下面这条指令将 W0 的底部字节 (B) 存储到地址：STRB W0, [<address>]

下面这条指令将 W0 的底部半字 (H) 存储到地址：STRH W0, [<address>]

最后这条指令将 X0 的底部字 (W) 存储到地址： STRW X0, [<address>]

### 4.2 0 和符号扩展

默认情况下，当 load 子寄存器大小的数据量时，寄存器的其余部分将归零，如下图所示：

![](https://pic2.zhimg.com/v2-e08294b76d25460b5728913bf5a18a79_r.jpg)

向操作中添加 S 将导致值被符号扩展。大小扩展的范围取决于目标是 W 寄存器还是 X 寄存器，如下图所示：

![](https://pic1.zhimg.com/v2-2e2080736ed52f46b9dde62c35773d98_r.jpg)

如果地址 0x8000 的字节包含值 0x1F，那么 LDRSB X4 的结果将是什么?

LDRSB 执行一个带符号扩展到 64 位的 byte load。load 值的最高有效位将被复制以填充 64 位寄存器。load 的值 0x1F 的最高位是空的。因此 X4 中的值为 0x0000_0000_0000_001F。

### 4.3 寻址模式

A64 指令集中的 load/store 指令的寻址模式需要使用通用寄存器 X0-X30 或当前堆栈指针 SP 作为基址，再加上可选的立即数或寄存器偏移量，形成最终的内存地址，地址用方括号来表示。A64 的 load/store 寻址模式有以下几种：

· 基址寄存器模式：最简单的寻址形式是单个寄存器。基址寄存器是一个 X 寄存器，它包含被访问数据的完整的或绝对的虚拟地址，如下图所示，LDR 指令把 X1 寄存器中的值作为内存地址，读出其中的数值到 W0 寄存器中。

![](https://pic3.zhimg.com/v2-1d39148c561f7ec2700388d8967fb082_r.jpg)

· 偏移量寻址模式：如下图所示。X1 包含基址，#12 是基址的字节偏移量。访问的地址是 X1 + 12。偏移量可以是一个常量，也可以是另一个寄存器。

![](https://pic2.zhimg.com/v2-a713ad1faac7b73e29fbd298ad5cf081_r.jpg)

· 预索引（Pre-index）寻址模式：在指令语法中，在方括号后边添加感叹号来表示预索引模式，如下图所示。预索引寻址类似于偏移寻址，不同之处在于 base pointer 会随着指令的执行而更新。图中，先把 X1 中的内存地址加上偏移量 12，存入 X1，然后存入 W0。指令完成后 X1 的值为 X1 + 12。

![](https://pic1.zhimg.com/v2-afa3e466337d730d13335a0083824804_r.jpg)

· 后索引（Post-index）寻址模式：使用后索引寻址，从基指针中的地址加载值，然后更新指针。

如下图，LDR 先把 X1 内存地址的值加载到 W0，然后把内存地址偏移 12，新的内存地址存入 X1。后索引寻址对于出栈很有用。该指令从堆栈指针所指向的位置加载值，然后将堆栈指针移动到堆栈中的下一个完整位置。

![](https://pic2.zhimg.com/v2-e676685218f8dd1ecb6ab2e811c91085_r.jpg)

### 4.4 load pair 和 store pair

除了单个寄存器的 load 和 store，A64 指令集还有 load pair（LDP）和 store pair（STP）指令。这些成对指令将两个寄存器从存储器中传入和传出。

第一条指令将 [X0] 加载到 W3，并将 [X0 + 4] 加载到 W7：LDP W3, W7， [X0]。

第二条指令将 D0 存储到 [X4]，并将 D1 存储到 [X4 + 8]：STP D0, D1， [X4]。

load pair 和 store pair 指令通常用于栈的压入和弹出。

第一条指令将 X0 和 X1 压入堆栈： STP X0, X1， [SP， #-16]!

第二条指令从堆栈中弹出 X0 和 X1： LDP X0, X1， [SP]， #16

记住，在 AArch64 中，堆栈指针 SP 必须是 128 位对齐的。

### 4.5 使用浮点寄存器

load 和 store 也可以使用浮点寄存器来执行。

第一条指令从 [X0] 加载 64 位到 D1： LDR D1， [X0]。

第二条指令从 Q0 存储 128 位到 [X0 + X1]：STR Q0， [X0, X1]。

最后这条指令从 X5 加载一对 128 位的值，然后将 X5 加 256：

```
LDP Q1, Q3， [X5]， #256
```

可以在特殊的情况下使用浮点寄存器进行加载和存储。memcpy() 类型通常使用它们。这是因为更宽的寄存器意味着需要更少的迭代。不要仅仅因为代码不使用浮点值，就认为不需要使用浮点寄存器。

### 4.6 专用指令

A64 指令集还包括一些用于特殊用例的加载和存储指令。

Load-Acquire（LDAR）和 Store-Release（STLR）指令用来支持内存 barrier。

企业系统中一个日益增长的趋势是引入加速器，通过使用 64 字节的原子 load 或 store 来访问。它们用于将项添加到队列中，并在某些情况下可以表示 enqueue 操作的成功或失败。

为支持这种加速器，Armv8.7-A 和 Armv9.2-A 添加了对 64 字节的原子 load（LD64B）指令的支持，并在架构中添加了三条 store（ST64Bx）指令。

5. 内存屏障（memory barrier）指令
-------------------------

### 5.1 DMB 指令

数据内存屏障（Data memory barrier,DMB）。它确保了屏障之前的内存访问与屏障之后的内存访问的相对顺序。**DMB 指令不保证内存访问的完成顺序**。

DMB 指令只影响内存访问、data cache 操作、unified cache maintenance 的指令，对于其他指令（例如 ADD 指令）的执行顺序没有影响。

### 5.2 DSB 指令

数据同步屏障 (Data synchronization Barrier,DSB)。**比 DMB 严格**一些，仅当所有在它前面的内存访问操作指令都完成后，才会执行在它后面的指令，即任何指令都要等待 DSB 前面的**内存访问完成**。

DMB 和 DSB 指令需要带一个参数，该参数指定了屏障指令的访问类型和应用的共享域范围，如下表所示。

![](https://pic2.zhimg.com/v2-3d26526b7f480ae4f84af34d2a3beb39_r.jpg)

### 5.3 ISB 指令

指令同步屏障 (Instruction synchronization Barrier，ISB)。**最严格**，ISB 指令确保在 **ISB 指令完成后**，从 cache 或内存中取出所有按程序顺序排在 ISB 指令之后的指令。

**ISB 用于确保先前执行的上下文更改操作在 ISB 指令完成前已完成，且对 ISB 指令之后的指令可见**。ARM Spec 中给出一个需要插入 ISB 指令的例子：处理器执行 cache 和 TLB 维护指令；执行 ISB 指令；等待前面的指令完成后更改系统寄存器。

ISB 通常用来保证上下文切换的效果，例如更改 ASID(Address Space Identifier)、TLB 维护操作和 C15 寄存器的修改等。

ISB 会 **flush 流水线**并确保在 ISB 之前完成的任何上下文更改操作的效果对 ISB 之后的任何指令都是可见的。从 cache 或内存中**重新获取指令**。

### 5.4 Load-Acquire 和 Store-Release 指令

Armv8-A 提供了一组 Load-Acquire（LDAR）和 Store-Release（STLR）指令，可以用于支持释放一致性（Release Consistency）模型。释放一致性模型是对弱序一致性模型的改进，它把同步操作进一步分成获取（acquire）操作和释放（release）操作。

*   Load-Acquire：程序中 LDAR 之后的 load/store 必须在 LDAR 之后执行。
*   Store-Release：程序中 STLR 之前的 load/store 必须在 STLR 之前执行。

![](https://pic1.zhimg.com/v2-0b3e6235e035a1b25461aa594212a100_r.jpg)

LDAR 和 STLR 是单向的屏障。LDAR 指令仅保证之后的任何内存访问指令在 LDAR 后可见。STLR 仅保证之前的内存访问在 STLR 之前都是可见的。所以 LDAR 和 STLR 的限制比 DMB 和 DSB 要宽松。

上图中的 **LDAR 和 STLR 组成了一个临界区**。**灰色区域的 load/store 指令不能向前或向后乱序**，但是 LDAR 上面的 load/store 指令可以向后重排序，STLR 下面的 load/store 指令可以向前重排序。

参考：

1.  Learn the architecture - A64 Instruction Set Architecture
2.  Learn the architecture - ARMv8-A memory systems
3.  Arm Architecture Reference Manual for A-profile architecture