# Bomb!!!
This is bomb 202015282.

<!-- It belongs to 202015282 (dqwang@hust.edu.cn) -->
It belongs to U202015282 (lry89757@gmail.com)

## 遇到问题及解决方案
* 使用./bomb出现错误：https://stackoverflow.com/questions/26436519/how-to-execute-the-cmu-binary-bomb-in-ubuntu-linux
    输入 `chmod +x bomb`就解决了。
* 看objdump出来的代码经常看不懂，后来上网一查原来是有两种风格的反汇编，`objdump`处理的是默认AT&T格式的，而要转化为intel格式的需要设定`-M`参数为`objdump -d bomb -M intel | less`才行。
  * 参考：https://floral.github.io/2021/04/21/objdump%E5%8F%8D%E6%B1%87%E7%BC%96%E5%AF%B9%E4%BA%8E%E5%B0%8F%E7%99%BD%E7%9A%84%E4%B8%80%E4%B8%AA%E5%9D%91/

## A simple Intro

* bomb：是一个linux下可执行程序，需要0或1个命令行参数（详见
                  bomb.c源文件中的main()函数）。如果运行时不指定参数，
                  则该程序打印出欢迎信息后，期待你按行输入每一阶段用来
                  拆除炸弹的字符串，并根据你当前输入的字符串决定你是通
                  过相应阶段还是炸弹爆炸导致任务失败。
* bomb.c：bomb的主程序，但不是全部，这里面你看不到炸弹

## 实验结果及结果文件
1）可以在命令行运行bomb，然后根据提示，逐阶段输入拆弹字符串（见演示）。
2）也可将拆除每一阶段炸弹的字符串按行组织在一个文本文件中，如ans.txt，然后作为运行程序时的命令行参数传给程序。
结果文件格式：每个拆弹字符串一行，最多7行（包含最后特殊阶段），除此之外不要包含任何其它字符。
范例如下：             
```sh
string1
string2
……
string6
string7
```

## 使用方法
```sh
./bomb ans.txt
```
程序会自动读取文本文件中的字符串，并依次检查对应每一阶段的字符串来决定炸弹拆除成败。

## 提交
本次实验需要提交的结果包括：实验报告和结果文件
结果文件：即上述的ans.txt，重新命名如下：
                  班级_学号.txt，如CS1801_U201814795.txt
     物联网 IT  计算机 CS   卓越班  ZY   ACM班  ACM  校交班 IE
实验报告：Word文档。在实验报告中，对你拆除了炸弹
                     的每一道题，用文字详细描述分析求解过程。
          排版要求：字体：宋体；字号：标题三号，正文小四正文；
                             行间距：1.5倍；首行缩进2个汉字；程序排版要规整
每个人的所有文件打包后提交（学委收齐交老师）。  


## phase_1
经过gdb调试拆解，最终得到的结果是：
```sh
0x804a004:      0x21776f57      0x61724220      0x206c697a      0x62207369
0x804a014:      0x002e6769      0x00000000
```
经过所写python脚本[ascii.py](./ascii.py)解密可得为：
```sh
Wow! Brazil is big.
```
调试过程如下：
首先通过`objdump -d bomb -M intel | less > intel_asm.asm`来得到我们程序的intel格式的反汇编，然后首先寻找main函数中的phase_1，找到后:
<br>
![image](https://user-images.githubusercontent.com/77330637/171866841-836e485f-d84c-4a4d-88c4-843af6d10962.png)
<br>
而后我们可以明显发现前面调用`readline()`函数来获取的字符串首地址应该是传入了eax中，然后堆栈esp用来传参将eax的首地址传了进去。
接着我们继续查找phase_1函数的定义：
<br>
![image](https://user-images.githubusercontent.com/77330637/171867595-eed00b77-1c18-4cec-b741-d8f3d3f93ceb.png)
<br>
找到phase_1后我们可以发现这里将两个地址入了栈作为新的函数`string_not_equal（）`的参数，分别是地址`0x804a004`和我们之前的esp堆栈中存储的eax，也就是readline读入的我们输入的字串，之后开始判断是否两字串相等，从这里我们就可以判断出我们目标字符串的首址就是`0x804a004`.所以接下来就只需要在使用gdb进行调试的过程中查看该首址往后的内容即可。

首先我们打开gdb对bomb进行调试：
<br>
![image](https://user-images.githubusercontent.com/77330637/171869229-17ea5cbe-8c08-4366-a650-1fb977833173.png)
<br>
而后设断点`b main` 开始启动程序`r`，并一直单步调试`ni`至`phase_1(input)`，此时输入我们对应的查看首址内容命令`x/20x 0x804a004`可以看到对应的地址内容
<br>
![image](https://user-images.githubusercontent.com/77330637/171869102-9b7536a6-59ad-46d1-9369-87a9c923309f.png)
<br>
到0x0000为止从而我们确定是这么几个数：
```sh
0x804a004:      0x21776f57      0x61724220      0x206c697a      0x62207369
0x804a014:      0x002e6769      0x00000000
```
然后我自己写了个python的翻译脚本用来翻译这几块内容：
<br>
![image](https://user-images.githubusercontent.com/77330637/171869728-790a504b-e7e4-4b09-ad15-ec41ffe12346.png)
<br>
经过翻译可得结果为：
<br>
![image](https://user-images.githubusercontent.com/77330637/171869825-c01ee3f9-a20a-4eb9-bd38-a725be721e55.png)
<br>








