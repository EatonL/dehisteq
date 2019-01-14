本代码用于反直方图均衡。

由于测量图像的动态范围小、对比度低，而且目标所占像素较少，采用传统直方图均衡方法进行图像增强 时，往往导致目标灰度级与背景灰度级合并，损失目标信息。

而本反直方图均衡代码，合并占灰度级较多的像素灰度值， 增加小概率灰度值像素的灰度间隔，从而克服了标 准直方图均衡损失目标细节的问题，其结果表 明，本算法对测量图像具有较好的增强效果，能够有效 地抑制图像的背景，突出目标。

## **数学原理：**

（1）建立原始直方图：



![image](https://img-blog.csdnimg.cn/20190114191646578.jpg)

（2）累积各灰度级直方图值的反向和：



![image](https://img-blog.csdnimg.cn/20190114191714185.jpg)


（3）将S(k)带回直方图均衡公式。



## 效果图：

### 原图：
![image](https://img-blog.csdnimg.cn/20190114191756946.jpg)

### 原图直方图：

![image](https://img-blog.csdnimg.cn/20190114191834335.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2JhemhpZGFvMDAzMQ==,size_16,color_FFFFFF,t_70)

## 直方图均衡：

![image](https://img-blog.csdnimg.cn/20190114191908198.jpg)

## 均衡后直方图：

![image](https://img-blog.csdnimg.cn/20190114191940346.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2JhemhpZGFvMDAzMQ==,size_16,color_FFFFFF,t_70)

## 反直方图均衡：

![image](https://img-blog.csdnimg.cn/2019011419201228.jpg)

## 反均衡后直方图：

![image](https://img-blog.csdnimg.cn/20190114192030670.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2JhemhpZGFvMDAzMQ==,size_16,color_FFFFFF,t_70)
