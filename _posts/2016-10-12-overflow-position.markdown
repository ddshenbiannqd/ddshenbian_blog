---
layout: post
title:  "Welcome to Jekyll!"
date:   2016-10-02 05:36:27 +0800
categories: jekyll update
---

---
关于页面横向滚动条固定到相应位置的Bug
---
公司产品给的UI：

![image03](https://zhangtao-git.github.io/jekyll_demo/img/over.png)
页面要求显示一半图标。目的在于告诉用户这是个可以左右滑动的。

我的页面布局为6个浮动的li，overflow-x:scroll.既然浮动了以后，图标肯定是从左到右依次排列。这时就得用JS控制滚动条的位置。

解决方法如下：

`var li_width = $('某一个Li').width();`

`document.getElementById('d1').scrollLeft = li_width*0.7;`

其实后来还想到了另外一种方法，现在来整理一下

可以利用css的animate来将滚动条固定到相应位置。


(function(){

	var $objTr = $("要固定的li"); //找到要定位的地方
    var objTr = $objTr[0];//转化为dom对象 
    $("#d1").animate({scrollLeft:objTr.offsetLeft*1},"fast"); //定位 
    console.log(objTr.offsetLeft);
            })
()
[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
