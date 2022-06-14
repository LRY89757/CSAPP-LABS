# Lab03

## refer
* https://cloud.tencent.com/developer/article/1826664

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



