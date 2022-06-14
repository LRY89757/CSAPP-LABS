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
`gcc -m32 -c bang.s`
`objdump -d bang.o > bang_.asm`


