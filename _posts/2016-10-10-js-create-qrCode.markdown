---
layout: post
title:  "js生成制定字符串二维码"
date:   2016-10-10 15:50:27 +0800
categories: jekyll update
---

#### 使用方法
载入 JavaScript 文件

	HTML Code
	<script src="qrcode.js"></script>

DOM 结构

	HTML Code
	<div id="qrcode"></div>

调用
	
	Javascript Code
	// 简单方式
	new QRCode(document.getElementById('qrcode'), 'your content');
	
	// 设置参数方式
	var qrcode = new QRCode('qrcode', {
	  text: 'your content',
	  width: 256,
	  height: 256,
	  colorDark : '#000000',
	  colorLight : '#ffffff',
	  correctLevel : QRCode.CorrectLevel.H
	});
	
	// 使用 API
	qrcode.clear();
	qrcode.makeCode('new content');

#### 参数说明
	
	Javascript Code
	new QRCode(element, option)


<table>
	<thead>
		<tr>
			<th>名称</th>
			<th>默认值</th>
			<th>说明</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>element</td>
			<td>-</td>
			<td>显示二维码的元素或该元素的 ID</td>
		</tr>
		<tr>
			<td>option</td>
			<td></td>
			<td>参数配置</td>
		</tr>
	</tbody>
</table>

#### option 参数说明
<table>
	<thead>
		<tr>
			<th>名称</th>
			<th>默认值</th>
			<th>说明</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>width</td>
			<td>256</td>
			<td>图像宽度</td>
		</tr>
		<tr>
			<td>height</td>
			<td>256</td>
			<td>图像高度</td>
		</tr>
		<tr>
			<td>typeNumber</td>
			<td>4</td>
			<td></td>
		</tr>
		<tr>
			<td>colorDark</td>
			<td>"#000000"</td>
			<td>前景色</td>
		</tr>
		<tr>
			<td>colorLight</td>
			<td>"#ffffff"</td>
			<td>背景色</td>
		</tr>
		<tr>
			<td>correctLevel</td>
			<td>QRCode.CorrectLevel.L</td>
			<td>容错级别，可设置为：<br>QRCode.CorrectLevel.L <br> QRCode.CorrectLevel.M<br> QRCode.CorrectLevel.Q<br> QRCode.CorrectLevel.H</td>
		</tr>
	</tbody>
</table>

#### API 接口

<table>
	<thead>
		<tr>
			<th>名称</th>
			<th>说明</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>makeCode(text)</td>
			<td>设置二维码内容</td>
		</tr>
		<tr>
			<td>clear()</td>
			<td>清除二维码。（仅在不支持 Canvas 的浏览器下有效</td>
		</tr>
	</tbody>
</table>



资源地址：https://github.com/ddshenbiannqd/ddshenbian_blog/tree/gh-pages/resource/qrCode
[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
