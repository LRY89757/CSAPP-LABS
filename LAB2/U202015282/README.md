# Bomb!!!
This is bomb 202015282.

<!-- It belongs to 202015282 (dqwang@hust.edu.cn) -->
It belongs to U202015282 (lry89757@gmail.com)

## 遇到问题及解决方案
* 参考博客：https://zhuanlan.zhihu.com/p/138448999
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

故我们的phase_1的ans为`Wow! Brazil is big.`
然后我们看第二关：


## phase_2

这一关教会了我不要陷入esp的堆栈等存储空间不放，因为这些东西容易让人陷入细节从而不能够真正去理会重要的东西。
我最初为了看懂phase_2而开始阅读每一行源码，结果感觉这些空间分配很奇怪从而陷入了这些空间分配参数传递的小细节中没法脱身从而真正有用的比较代码反而没有去在意，这个确实是一个很大的问题。
接下来介绍最终破解的方法：
首先使用反汇编可以轻易定位到`phase_2`的源码：
<br>
![image](https://user-images.githubusercontent.com/77330637/171904702-f9634493-8865-4f84-80fd-5a47529cdc91.png)
<br>
这里可以发现首先是输入输出读取六个数字`read_six_numbers`这个可以猜测这个就是读取我们输入的参数，接下来的封装内部怎么读取的我们暂且不管接着看接下来的代码：
<br>
![image](https://user-images.githubusercontent.com/77330637/171905510-aa6dee02-4e4f-4b7b-a4f6-030b54892b97.png)
<br>
接下来使用cmp将esp中的值和0x1对比，而后如果不对就直接bomb，我们可以猜测这个应该是我们输入的第一个数，那应该就是1，如果对了就进入接下来的循环以ebx作为计数并esi作为终止点，这样一来就很明确就是继续和后面的值进行对比，并且是由`add eax eax`可以看出来一次自增1倍，也就是一次和1， 2， 4， 8， 16， 32比较，一共循环5次，所以最多到32.
这样一来我们可以得出我们输入为`1 2 4 8 16 32`就可以带入程序验证可得：
<br>
![image](https://user-images.githubusercontent.com/77330637/171905667-9e3c7561-03cd-4403-964f-9e940ac8d70f.png)
<br>
可以看出破译成功！

## phase_3

这个关卡首先仍然是找到反汇编对应的`phase_3`函数对应的位置：
<br>
![image](https://user-images.githubusercontent.com/77330637/172014003-9f627058-2d38-4a9b-a5df-e3aea03ac19e.png)
<br>
这里读取使用的是sscanf，同时这里使用的是`0x804aab7`为地址的字串，我们可以观察下该地址下的字符串的值是多少（使用gdb):
<br>
![image](https://user-images.githubusercontent.com/77330637/172014184-dc2673ea-1304-4643-8c0c-4487b923ade0.png)
<br>
可以判断出来这里需要我们输入两个整数。接下哎我们可以看到首先比较了第一个数和7的大小，如果比较大的话就直接bomb，如果比较小的话就跳转到其对应的一个变址+基址寻址的对应地址值：
<br>
![image](https://user-images.githubusercontent.com/77330637/172014467-b2a10f25-bf83-4a73-989f-a92dc00345c7.png)
<br>
接下来就需要进一步调用查看对应的地址值了：
<br>
![image](https://user-images.githubusercontent.com/77330637/172014761-97a3f583-4043-4a82-9f9e-7b3df343a176.png)
<br>
这里可以随机选定一个，比方说第四个`0x08048c28`,我们可以看到程序都运行了那些部分：
<br>
![image](https://user-images.githubusercontent.com/77330637/172015207-fd9a6664-51ae-4ee6-890d-474f126a286c.png)
<br>
就是以上箭头标出的那一部分，可以看出如果程序eax加减了多次之后还是0，然后对第一个数取出判断是否大于5，其实第一个数这里我们假定的就是4，然后判断第二个数是否等于eax，也就是0，等于就不bomb，这样一来我们就很容易知道答案是`4 0`，当然其他的组合也可能也成立，这里只是选择了这个：
<br>
![image](https://user-images.githubusercontent.com/77330637/172015375-4ac80af7-6641-46d0-9323-6990409da14a.png)
<br>


## phase_4

首先需要找到`phase_4`的函数源码：
<br>
![image](https://user-images.githubusercontent.com/77330637/172619125-57f7d711-a778-4df1-85d1-df8142df602b.png)
<br>
还是先看到底输入几个数：
<br>
![image](https://user-images.githubusercontent.com/77330637/172618677-9cac921f-788b-4d85-942f-a10f4c438f25.png)
<br>
可以看到这里输入两个数就可以，通过eax首先读取了第二个数，然后减了2和2对比，如果大于就返回爆炸，所以这里应该可以推测出第二个输入的数应该小于4.接下来继续往后看可以看到这里蒋第二个数还有9作为参数传入函数栈，而后调用了func4函数进行传入，并且我们可以看出这个函数是递归形式的递归函数，由于函数逻辑比较复杂，所以我们这里选择使用断点形式，首先设定第二个值不大于4，比如我们这里设成3，然后直接开断点进行调试进一步判断出func4的返回值到底是什么：
<br>
![image](https://user-images.githubusercontent.com/77330637/172621764-da1cdcd2-a2c7-480c-98e1-503f3e09396c.png)
<br>
这里需要说明下我们设定断点的地方正是我们函数func4正好运行结束的地方，我们在这里可以看到寄存器eax的值为264，接下来又要eax和第一个数作比较，所以可以肯定我们输入的第一个数就是264.
所以我们这里的输入就为`264 3`，经过检测，正好通过：
<br>
![image](https://user-images.githubusercontent.com/77330637/172622705-08ab2d1a-61cd-4108-b3d6-75874dd356f4.png)
<br>
第四关通关！

## phase_5

接下来我们看第五关，第五关主要问题在于代码逻辑比较难办。
首先还是进入首先的代码：
<br>
![image](https://user-images.githubusercontent.com/77330637/172623412-7224d9ff-fc03-4286-ba2a-2d455e6c5be3.png)
<br>
首先还是输入输出的问题，这里不在赘述同样是输入两个数，如果输入小于等于1那么就直接退出。
接下来就是关于首先取到了输入的第一位，然后放入了对应的eax中，接着使用与操作获取eax的低四位，然后将eax移回原位，接着和0xf对比，如果等于的话就爆炸，也就是此时我们知道输入的第一个数的低四位不能是全1，同时我们接着往后看，可以看到这里将ecx,edx都赋值为0，然后edx增1，接着有一个eax作为索引同时将数组中对应的数移到eax之中，这个数组的首址`0x804a040`.随后将ecx和eax相加返回至ecx，接着比较eax和15，如果不相等那么久继续循环增加edx这个步骤，结合后面的edx和15相比如果不相等就爆炸可以看出此时必定要有一个这样的循环：eax不断从数组Array中寻找Array[eax]这样一个数赋值给eax直到找到的数为15为止，这期间必须同时循环15次以保证edx最终等于15，也就是重复15次。循环期间必须由ecx用来记录所有经历过的eax的和。并且最后会让ecx和最终的我们输入的第二个数作比较，如果比较正确了炸弹才不会爆炸，对应伪代码如下：
<br>
![image](https://user-images.githubusercontent.com/77330637/172625574-bbd06864-4299-4667-9c52-b21a7ccb0565.png)
<br>
这样一来我们就可以确定我们的选取策略，最后一次迭代的值必须是15，然后我们首先查看对应的以`0x804a040`为首址的数组每一项的值：
<br>
![image](https://user-images.githubusercontent.com/77330637/172626159-704b10b5-779a-4ad9-a9a8-38bff87d5dd9.png)
<br>
可以看到15在偏移量为6的地方，那么他的前一个应该是6，在偏移量为14的地方，那么他的前一个应该是14，在偏移量为2的地方，那么他前一个应该是1，在偏移量为10的地方，那么他前一个应该是0，在偏移量为8的地方.....依此循环15次，直到5，此时也就是首次eax进入的值，所以我们可以推断出第一个输入的数应该是5，接下来就应该计算每次循环的和了，这个不需要详细计算，我们可以直接设定断点来观察结果：
<br>
![image](https://user-images.githubusercontent.com/77330637/172627781-2d43340f-b19e-4653-b523-a70dc2e828bd.png)
<br>
此处可以看出结果为115，所以第五关的结果就为`5 115`

## phase_6







































































