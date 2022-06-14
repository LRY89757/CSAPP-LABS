# CSAPP-LABS
Our Computer System homework, about 3 labs

* language: C
* environment: Linux
* reference codes: https://github.com/Sorosliu1029/CSAPP-Labs/tree/master/data-lab
* 第一关教程请看这里：[bits.c](LAB1/lab1-handout/bits.c)
* 第二关教程请看这里：[README](LAB2/U202015282/README.md)
* 第三关教程看这里：[README](LAB3/lab3-程序包/README.md)



# Lab01-handout

[Lab01](./LAB1/lab1-handout/)

* how to unzip:
  * tar -vxzf lab1-handout.gtar

*  README 有关实验细节的说明文件，请在开始实验前仔细阅读 
*  bits.c 包含一组用于完成指定功能的函数的代码框架，需要你按要求补充完成其函数体代码并“作为实验结果提交”。函数的功能与实现要求详细说明在相应函数和文件首部的注释中（务必认真阅读和遵照说明完成实验）。 
*  bits.h    头文件 
*  btest.c  实验结果测试工具，用于检查作为实验结果的  bits.c 中函数实现是否满足实验的功能正确性要求。 
*  btest.h, decl.c, tests.c  生成btest 程序的源文件 
*  dlc   实验结果检查工具，用于判断作为实验结果的  bits.c 中函数实现是否满足实验的语法规则要求。 
*  Makefile  生成btest、fshow、ishow 等工具的Make 文件。 
*  ishow.c    整型数据表示查看工具 
*  fshow.c    浮点数据表示查看工具

# Lab02-Bomb A simple Intro

[Lab02](./LAB2/U202015282/)

bomb：是一个linux下可执行程序，需要0或1个命令行参数（详见 bomb.c源文件中的main()函数）。如果运行时不指定参数， 则该程序打印出欢迎信息后，期待你按行输入每一阶段用来 拆除炸弹的字符串，并根据你当前输入的字符串决定你是通 过相应阶段还是炸弹爆炸导致任务失败。
bomb.c：bomb的主程序，但不是全部，这里面你看不到炸弹.


# Lab03-Attack A simple Intro

[Lab03](./LAB3/lab3-%E7%A8%8B%E5%BA%8F%E5%8C%85/)

> 缓冲区溢出攻击

对一个可执行程序“bufbomb”实施一系列缓冲区溢出攻击（buffer overflow attacks），也就是设法通过造成缓冲区溢出来改变该可执行程序的运行内存映像，继而执行一些原来程序中没有的行为。 


