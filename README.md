本代码用于反直方图均衡。

由于测量图像的动态范围小、对比度低，而且目标所占像素较少，采用传统直方图均衡方法进行图像增强 时，往往导致目标灰度级与背景灰度级合并，损失目标信息。

而本反直方图均衡代码，合并占灰度级较多的像素灰度值， 增加小概率灰度值像素的灰度间隔，从而克服了标 准直方图均衡损失目标细节的问题，其结果表 明，本算法对测量图像具有较好的增强效果，能够有效 地抑制图像的背景，突出目标。

## **数学原理：**

（1）建立原始直方图：

![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/29540178.jpg)


（2）累积各灰度级直方图值的反向和：
![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/65175493.jpg)


（3）将S(k)带回直方图均衡公式。



## 效果图：

### 原图：
![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/58904745.jpg)

### 原图直方图：

![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/81017104.jpg)

## 直方图均衡：

![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/1604248.jpg)

## 均衡后直方图：

![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/28108786.jpg)

## 反直方图均衡：

![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/49482982.jpg)

## 反均衡后直方图：

![image](http://pco31cl5b.bkt.clouddn.com/18-7-30/19050755.jpg)
