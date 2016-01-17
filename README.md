
相关博客：[项目中用到的Makefile总结](http://shujun.github.io/2013/08/20/makefile-template/)

#### 介绍

好的	Makefile 模板应该有以下特点：
- 结构简单，方便扩展修改。
- 很容易读懂，避免过于复杂的技巧和高级的语法。

#### 如何使用

在某子目录下添加一个源文件，步骤如下：
- 修改目录下的build.mk 里面，将源文件追加到变量 CSRC 后面即可。

添加新的sub module目录，步骤如下：
- 创建一个新的文件夹，在此文件夹下创建一个新的build.mk文件。
- 在主Makefile里面 include 此build.mk 文件。
- 在此build.mk 文件里面，为变量` INCLUDE_DIRS 和 CSRC`追加新的内容，分别是头文件搜索路径，和参与编译的c 源文件.


#### 使用方法

```bash
$ make clean
remove all objs .....

$ make
Building file: main/main.c
Building file: submod1/test1.c
Building file: submod2/test2.c
Link output: out.a

$ ./out.a
Test Makefile: main/main.c@5: main
submod1/test1.c@6: fun_1
submod2/test2.c@5: fun_2

```
