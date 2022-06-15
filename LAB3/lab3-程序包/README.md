# Lab03

## refer
* https://cloud.tencent.com/developer/article/1826664
* https://github.com/SSA2001/HUST_ICS

## dir
* bufbomb：     可执行程序，攻击所用的目标程序bufbomb。
* bufbomb.c：  C语言源程序，目标程序bufbomb的主程序。
* makecookie：可执行程序，该程序基于你的学号产生一个唯一的由8个16进制数字组成的4字节序列（例如0x5f405c9a），称为“cookie”。
* hex2raw：       可执行程序，字符串格式转换程序（用法见后）。
* 用objdump工具反汇编bufbomb可执行目标程序，得到它的反汇编源程序：在后面的分析中，你将要从这个文件中查找很多必需的信息。
  * `objdump -d bufbomb -M intel | less > intel_asm.asm`

## 遇到问题解决方案
* Permission denied:
    ```sh
    (base) root@ubuntu:/home/lry/projects/CSAPP-LABS/LAB3/lab3-程序包# ./bufbomb -u U202015282
    bash: ./bufbomb: Permission denied
    ```
    * 解决方案：` chomd 777 bufbomb`



## run
bufbomb的正常运行：
                   linux> ./bufbomb -u U202014557
其中，“-u U202014557”是需要你提供的命令行参数，  
             U202014XXX是你的学号。
> 注：你的学号在bufbomb里将通过gencookie函数产生一个cookie（和使用makecookie完全一样的cookie），cookie将作为你的程序的唯一标识，而使得你的运行结果与其他同学不一样。

```sh
(base) lry@ubuntu:~/projects/CSAPP-LABS/LAB3/lab3-程序包$ ./bufbomb -u U202015282
Userid: U202015282
Cookie: 0x606b1729
Type string:Dud: getbuf returned 0x1
Better luck next time
```


## getbuf()
**本实验的主要内容从分析test函数开始。**
test函数中调用了getbuf函数， getbuf函数的功能是从标准输入（stdin）读入一个字符串，正常时应返回test。
getbuf函数源程序如下（bufbomb.c里没有）：

```cpp
  /* Buffer size for getbuf */
  #define NORMAL_BUFFER_SIZE 32

  int getbuf()
  {
     char buf[NORMAL_BUFFER_SIZE];
     Gets(buf);
     return 1; //正常时返回1
  }
```

## test()

```cpp
// test函数
void test()
{
    int val;
    /* Put canary on stack to detect possible corruption */
    volatile int local = uniqueval();   //getpid()
    val = getbuf();   //正常情况下getbuf返回值等于1
    /* Check for corrupted stack */
    if (local != uniqueval()) {
         printf("Sabotaged!: the stack has been corrupted\n");
    }
    else if (val == cookie) {
         printf("Boom!: getbuf returned 0x%x\n", val);
         validate(3);
    } else {
        printf("Dud: getbuf returned 0x%x\n", val);
    }
}
```

## smoke

首先是观察getbuf函数发现函数本身空出了56个字节同时算上ebp的旧值一共六十个字节。同时我们可以发现这里空出40个字节供读取，我们攻击的思路就是填满这部分的同时溢出将自己smoke的地址溢出覆盖ebp旧值之前的返回地址：
![image](https://user-images.githubusercontent.com/77330637/173588583-1f3fe345-6b63-4095-bf54-ee818a7498cf.png)
也就是我们要填充一个48个字节的数，同时我们前44个字节就是固定的，但是第45-48个字节必须是smoke的地址，对应使用机器码存储，首先我们可以查看smoke函数得到函数对应的地址：
![image](https://user-images.githubusercontent.com/77330637/173589262-b8a3dd30-7be6-4570-a2f3-888a6e389494.png)
这样一来我们就可以直接将后四个字节填成地址`0x8048c90`的机器码格式`90 8c 04 08`：
![image](https://user-images.githubusercontent.com/77330637/173589344-d6590eb9-ca70-42dd-8e9c-1838ea10d4cf.png)
可以发现这样一来就成功攻击：
![image](https://user-images.githubusercontent.com/77330637/173589669-74af026f-93ce-43de-812f-14277dc63cb1.png)





## fizz

![image](https://user-images.githubusercontent.com/77330637/173591206-e6073318-3999-4ead-9903-9c76f69cf0bc.png)
有图可知这里程序不同的一点是有一个参数传进来，同时只有当传进来的参数等于cookie，也就是我们需要将cookie作为参数传进来才可以正确攻击，我们很容易将学号输进去得到我们的cookie：
![image](https://user-images.githubusercontent.com/77330637/173591647-52aa4ff8-5cf1-4414-b65f-984f166f31c7.png)
接下来就只需要详细看看到底这个参数如何读取传递的，这需要我们阅读fizz源码：
![image](https://user-images.githubusercontent.com/77330637/173592080-2b58ee4d-9f46-46b6-aa00-d16075038cf7.png)
我们可以注意到实际上就是通过ebp+0x8来获取的参数，所以这里我们就需要画一下这里的堆栈关系了：
![IMG_20220614_214918](https://user-images.githubusercontent.com/77330637/173593819-9027137b-0db2-4cc4-b49c-c22ea69d8778.jpg)
可以看出这里需要填52个字节，因为我们还需要额外加一个参数，所以需要多覆盖4个字节来进行传递，这多出的4个字节用来存储cookie：
![image](https://user-images.githubusercontent.com/77330637/173594145-ccc58edf-6a16-4243-b12f-0a3b5fb5033e.png)
最后检查以下攻击结果：
![image](https://user-images.githubusercontent.com/77330637/173594315-6fe36eaa-b75b-44c9-bb0b-6729263a7f91.png)
可以看出攻击成功！



## bang

> 这道题真是蚌埠住，都怪我没认真学AT&T格式的汇编代码导致我debug一个错误debug了好长时间。。。。
首先还是看下`bang`这个函数：
![image](https://user-images.githubusercontent.com/77330637/173594879-d0ffca96-1232-48a5-b133-7d3537767e8b.png)
可以看出这里虽然也传进去了一个参数，但是这里并没有使用这个参数，而是使用的全局的一个值来和cookie值比较大小，这样一来我们要想成功放入bang中那么我们就需要修改这个全局的值，我们通过查看bang的汇编源代码找到对应的地址:
![image](https://user-images.githubusercontent.com/77330637/173596533-d90aa025-8569-4b5a-b889-06302d19f7ac.png)
可以看出这里`global value`的地址为`0x804c218`, 而`cookie`的地址为`0x804c220`.我们需要更改`0x804c218`的地址的值为cookie的值，这样就需要我们嵌入一段汇编代码来完成这一件事，同时我们修改完global_value之后还需要写指令返回到bang函数这里。而我们这里就将指令存储到对应的字符串里面，而将getbuf函数返回值覆盖为字符串的首址，这样就可以执行我们对应的命令了，所以我们接下来还需要查看下字符串的首址是多少，还是看回getbuf源码：
![image](https://user-images.githubusercontent.com/77330637/173599780-5a79ad0a-cc9e-476e-ba42-586e2a7da676.png)
使用gdb运行程序然后再80491f5处设断点然后观察eax的值就是对应字符串的首址：
![image](https://user-images.githubusercontent.com/77330637/173600348-dd7520f8-ea10-4195-b8fa-21d94e13540d.png)
可以看到首址为`0x55682eb8`
接下来要想得到我们对应的汇编机器指令代码，我们先把AT&T格式的汇编代码写好（试了试intel格式的好像编译没通过，估计要加额外的参数才行）：
![image](https://user-images.githubusercontent.com/77330637/173599513-4b4eeeca-d26f-47b8-a713-42eae0062435.png)
而后我们编译运行再反汇编：
![image](https://user-images.githubusercontent.com/77330637/173601049-1bdb5e97-1959-42e8-bdbb-62f8a2387477.png)
可以看到这里得到了对应的机器码，我们只需要在对应的`.txt`文件中开头写下对应得到的指令然后在最后的覆盖返回值部分写下字符串首址确保让我们输入的机器指令的到执行就行：
![image](https://user-images.githubusercontent.com/77330637/173601739-3ff6994b-d599-4b20-8d50-f8629308429e.png)

可以验证下我们得到的结果：
![image](https://user-images.githubusercontent.com/77330637/173601877-a890725a-856e-49a9-b15a-f5a3bca3137d.png)
可以发现攻击成功！


## boom
> 这道题首先我不知道还原任何被破坏的状态是什么意思，但是我觉得应该是完全恢复？但是首先我还是想先尝试一下可不可以就简单的更改eax然后直接返回到原来地址看下可不可以通过，其实这就是使用了类似第三关的思路，可以首先尝试一下是否能够正常攻击成功。

这里首先还是查看test调用getbuf后的地址，不过我们稍后传入的应该是他之后的那一条指令的地址：
![image](https://user-images.githubusercontent.com/77330637/173618638-76acc65d-0f48-42c7-887f-0398ed45fe12.png)
我们这里可以使用gdb打断点调试一下看下到时候进入getbuf后我们得到的ebp旧值再往上的地址，也就是要正常返回的地址究竟是到底是多少，我们在`mov ebp, esp`之后设断点：
![image](https://user-images.githubusercontent.com/77330637/173620034-ab28b1c5-35a8-4da2-94c7-d2f4c5aac74c.png)
可以看到打了断点查看ebp+8对应位置的值，正好就是`0x08048e81`,也就是应该返回到的test函数的下一条指令的地址。这样一来就完全说得通了，我们到时候也直接返回到这里就行了。
所以初步思路为仍然移入一个字符串，这个字符串包含我们攻击的机器指令，我们仍旧按照老方法来进行生成.s文件写入修改的指令：
![image](https://user-images.githubusercontent.com/77330637/173625882-0425aa74-b2c4-42cd-8c5b-4bfcea2f0dc6.png)
然后使用gcc编译后反汇编得到机器码：
![image](https://user-images.githubusercontent.com/77330637/173626060-0dfd4ce0-6808-4a2c-88c9-4c7eb2bcf660.png)
然后我们填入到对应的.txt文件中进行攻击:
![image](https://user-images.githubusercontent.com/77330637/173626307-bd30312e-b09b-4832-9795-a28a7efba706.png)

不出所料这个攻击结果失败了，看来还是有些东西没有考虑到：
![image](https://user-images.githubusercontent.com/77330637/173625541-028f5654-f705-4013-8390-3a8bb2ec2a5f.png)
我们可以一步一步设断点来分析程序的整个运行过程：
首先还是先注入后查看对应的区域是否被修改，可以看出成功被修改：
![image](https://user-images.githubusercontent.com/77330637/173626419-f9a94d84-0881-439e-9298-ea40a907cd3e.png)
然后我们逐步执行对应的字符串命令：
![image](https://user-images.githubusercontent.com/77330637/173626620-426deade-9012-4978-a512-1d8bb3204fe9.png)
可以发现运行到结束一切正常，也就是正确的返回到了test函数的对应位置，那么接下来我们可以看下test函数对应位置的汇编代码：
![image](https://user-images.githubusercontent.com/77330637/173626914-ea9c95b0-6f46-4d57-a132-14c3d5c7b711.png)
我们可以发现这里使用到了ebp这个寄存器，我们知道我们传入的字符串将这个覆盖掉了，所以这里就出了挺大的问题，我们应该着手将这个解决了再说，也就是提前看下ebp旧值是多少，然后当作字符串参数覆盖的时候不要覆盖掉，这点很重要！
首先查看ebp旧值是多少：
![image](https://user-images.githubusercontent.com/77330637/173627639-11236475-8401-4c67-8e73-dbaaba89eac7.png)
可以看出为`0x55682f10`,那么我们重新改一下我们的字符串，将这个数传进去：
![image](https://user-images.githubusercontent.com/77330637/173627965-a7e61772-0b0b-4521-a6f5-76a2782e43ec.png)
然后我们重新启动攻击：
![image](https://user-images.githubusercontent.com/77330637/173627930-4ba3622e-27f2-49fb-b6d9-798f21926f4d.png)
可以发现攻击成功！Boom!开香槟咯！


## Nitro
这关可以看出使用了`-n`参数之后，变成了调用`getbufn`和`testn`这两个函数，并且从这里看出我们getbufn被调用了5次：
![image](https://user-images.githubusercontent.com/77330637/173726964-f9e86bd1-0ce4-46b8-a93a-6fd176eade04.png)
之前都是调用一次就够了，老师是这么说的：
> "              通常，一个函数的栈的确切内存地址是随程序运行实例的不同而变化的。也就是一个函数的栈帧每次运行时都不一样。
            之前实验中，bufbomb调用getbuf的代码经过了一定的处理，通过一些措施获得了稳定的栈地址，因此不同运行实例中，你观察到的getbuf函数的栈帧地址保持不变（自己去观察）。这使得你在之前实验中能够基于buf的已知的确切起始地址构造攻击字符串。
             但是，如果将这样的攻击手段用于一般的程序时，你会发现你的攻击有时奏效，有时却导致段错误（segmentation fault）。
"

而本实验任务就为实验任务：与阶段四类似，构造一攻击字符串使得getbufn函数（注，在Nitro阶段，bufbomb将调用testn函数和getbufn函数，见bufbomb.c）返回cookie值至testn函数，而不是返回值1。此时，**需要将cookie值设为函数返回值，复原/清除所有被破坏的状态，并将正确的返回位置压入栈中，然后执行ret指令以正确地返回到testn函数。**
*挑战：与boom不同的是，本阶段的每次执行栈（ebp）均不同，所以你要想办法保证每次都能够正确复原栈被破坏的状态，以使得程序每次都能够正确返回到test。*
从之前老师的解析中我们知道这里使用nitro模式之后我们的laucher函数会被调用cnt次，也就是5次，这样一来我们的testn和getbufn也会被调用5次，所以我们应该将整个堆栈的所有信息都恢复至原来的状态，否则就会出现重复调用过程的很多错误，我们首先来分析testn函数：
![image](https://user-images.githubusercontent.com/77330637/173727842-945d1f9f-82fb-4e5d-99f7-9118f976d6ed.png)
看着和test函数差不多?而后我们看看getbufn的反汇编代码：
![image](https://user-images.githubusercontent.com/77330637/173728995-ea181a62-628f-4e10-a198-454de9a182a6.png)
这里正好有getbufn和getbuf的对比，实际上差不多，之不多这里多分配了一些字节，这里分配了520个字节用于填充字符串，如果我们要溢出的话恐怕需要填充更多的字符串。
这里有一个问题在于ebp每一次的初值都不一样，也就是进入到getbufn中的时候，每一次的ebp都不一样，都是一个不固定的值，这就导致我们没有办法将一个固定的值填入以覆盖原来的ebp值达到相同的攻击效果，目前可行的一个解决方案是使用esp，也就是我们进入getbufn之前我们应该可以确定esp和对应的ebp应该是有一个固定的差值在，我们可以通过esp来确定ebp的旧值到底是多少，这个值当然不需要我们来观察testn函数来一个一个的计算，这个完全可以通过我们单步调试来完成计算，单步调试过程如下：

![image](https://user-images.githubusercontent.com/77330637/173768226-78266f93-1c47-4e54-a4ba-6edf468b2e9d.png)
经过这样几次调试我们可以发现这里ebp - esp = 0x30基本上就可以确定了，所以我们只需要将对应的位置写上将ebp赋给旧值就行，但是请注意这里是进入getbufn的时候的，等到返回的时候我们有8个字节没有算上所以我们需要加上这几个字节那么就变为ebp - esp = 0x28.
接下来就只需要确定我们到底把攻击的字符串放到哪个地方就OK了，这是另一条需要格外注意的点，我们此时知道字符串首址也是不固定的，但是字符串却有重合的地址，那么我们就只需找到这五次运行过程中字符串首址最大的那个地址就OK，然后我们在低地址处全部填上nop就可以，这也是为什么这里一下子分配上百个字节的原因。
我们仍然使用单步调试来观测字符串首址的最大值：
![image](https://user-images.githubusercontent.com/77330637/173772985-a44bd65c-3428-4998-8390-c1ba986d89ca.png)
可以看到字符串首址最大值为0x55682d08,然后这里我们就可以选择相应的攻击字符串来进行攻击了：
首先确定对应的汇编代码：
![image](https://user-images.githubusercontent.com/77330637/173785240-43756fb4-e0c4-4308-b385-a25e2e11576a.png)
而后编译运行：
![image](https://user-images.githubusercontent.com/77330637/173785300-78200116-3895-4e78-a058-8d27ae4dce36.png)
得到对应反汇编机器码：
![image](https://user-images.githubusercontent.com/77330637/173785922-78a2e2cb-92b4-4a30-9d69-7e4833593119.png)
然后我们打开.txt文件写入对应的机器字符串：
![image](https://user-images.githubusercontent.com/77330637/173786114-1b797c1c-e2ab-4e05-a2e5-120b6da5d5df.png)
接着就运行：
![image](https://user-images.githubusercontent.com/77330637/173786410-7abea8cf-2827-4137-9949-bc8ff5674d72.png)
可以发现攻击成功！
至此整个lab03完成。









































