$(function() {
	var alllistPage = 1,//所有中奖信息第一页
		allPageCount = 10,//所有中奖信息总页数
		allPerPage = 5;//所有中奖信息每页条数
	var mylistPage = 1,//我的中奖信息第一页
		myPageCount = 10,//我的中奖信息总页数
		myPerPage = 6;//我的中奖信息每页条数
	var deadLine = 11;//活动结束时间
	var sysDate;//当前系统时间
	var isLogin = 0;
	getSysTime()
	getPrizeList(alllistPage, allPerPage);
	getMyPrizeList(mylistPage, myPerPage);
	$(".close").click(function() {
		$(this).parent().fadeOut();
		$("#mask").fadeOut();
		$("body").css("overflow-y","scroll")
	});
	//查看更多记录
	$(".more a").click(function() {
		alllistPage++;
		if (alllistPage <= allPageCount) {
			getPrizeList(alllistPage, allPerPage);
		};
	});
	var playnum = 0; //初始次数，由后台传入
	var isture = 0;
	var clickfunc = function(data) {
		switch (data) {
			case 1:
				rotateFunc(1, 330, '18元代金券');
				break;
			case 2:
				rotateFunc(2, 50, '58元代金券');
				break;
			case 3:
				rotateFunc(3, 135, '10元话费');
				break;
			case 4:
				rotateFunc(4, 295, '500M流量');
				break;
			case 5:
				rotateFunc(5, 0, '100元话费');
				break;
			case 6:
				rotateFunc(6, 180, '200元京东e卡');
				break;
			case 7:
				rotateFunc(7, 220, '小米空气净化器');
				break;
			case 8:
				rotateFunc(8, 95, 'ipad mini4 64G');
				break;
			case 9:
				rotateFunc(9, 255, 'iPhone7 Plus 32G');
				break;
		}
	}
	var rotateFunc = function(awards, angle, text) {
		isture = true;
		$('.playbtn').stopRotate();
		$('.playbtn').rotate({
			angle: 0,
			duration: 4000, //旋转时间
			animateTo: angle + 1440, //让它根据得出来的结果加上1440度旋转
			callback: function() {
				isture = false; // 标志为 执行完毕
				if (awards <= 5) {
					$(".big-font").html("恭喜您，抽中了" + text + "!");
					$(".small-font").html("请至“我的资产-我的奖励”查看，快去领福利吧")
				} else {
					$(".big-font").html("恭喜您，抽中了" + text + "!");
					$(".small-font").html("请耐心等待平台工作人员与您联系，保持电话畅通哦！")
				}
				$("#mask,.zhongjiang").fadeIn();
			}
		});
	};
	$(".cbtn img").click(function(){
		window.location.href="http://www.fullrong.com/product/ALL/1/10"
	})
	$('.playbtn').click(function() {
		//判断活动结束
		if (sysDate.getMonth() + 1 >= deadLine) {
			$("#mask,.gameover").fadeIn();
		} else {
			if (isture) return; // 如果在执行就退出
			isture = true; // 标志为 在执行
			//先判断是否登录,未登录则执行下面的函数
			if (!isLogin) {
				window.location.href = "http://www.fullrong.com/logoutSuccess";
				isture = false;
			} else { //登录了就执行下面
				if (playnum <= 0) { //当抽奖次数为0的时候执行
					$("#mask,.zero").fadeIn();
					$('.playnum').html(0);
					isture = false;
				} else { //还有次数就执行
					playnum = playnum - 1; //执行转盘了则次数减1
					if (playnum <= 0) {
						playnum = 0;
					}
					$('.playnum').html(playnum);
					drawPrize();
				}
			}
		}
	});
	//抽奖
	function drawPrize() {
		$.ajax({
			type: "get",
			// url: "data3.json", //URL
			url: "http://www.fullrong.com/draw/drawprize/1", //URL
			dataType: "json",
			success: function(jsondata) {
				if (jsondata.code == 0) {
					clickfunc(jsondata.prize.prizeId);
				};
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {}
		});
	}
	//得到所有人的中奖数据
	function getPrizeList(alllistPage, allPerPage) {
		$.ajax({
			type: "get",
			// url: "data1.json", //URL
			url: "http://www.fullrong.com/draw/drawinfo/1/" + alllistPage + "/"+allPerPage, //URL
			dataType: "json",
			success: function(jsondata) {
				allPageCount = Math.ceil(jsondata.prizeCount / allPerPage);
				var innerHtml = "";
				if (jsondata.prizeList.length == 0) {
					innerHtml = "<p class='nodata'>暂无记录</p>";
					$(".more").hide();
				} else {
					for (var i = 0; i < jsondata.prizeList.length; i++) {
						innerHtml += '<li><span class="span1">' + jsondata.prizeList[i].mobile + '</span><span class="span2">获得 ' + jsondata.prizeList[i].prizeName + '</span></li>';
					}
					if (jsondata.prizeCount <= 5) {
						$(".more").hide();
					};
				};
				$(".list ul").html(innerHtml);
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {}
		});
	}
	//得到个人的中奖信息
	function getMyPrizeList(mylistPage, myPerPage) {
		$.ajax({
			type: "get",
			// url: "data2.json", //URL
			url: "http://www.fullrong.com/draw/customerDrawInfo/1/1/5", //URL
			dataType: "json",
			success: function(jsondata) {
				if (jsondata.code == 1 || jsondata.mgs == "用户未登录") {
					isLogin = 0;
					$(".playnum").html(0);
				} else {
					myPageCount = Math.ceil(jsondata.prizeCount / myPerPage);
					isLogin = 1;
					playnum = jsondata.chanceCount;
					$(".playnum").html(jsondata.chanceCount);
					var innerHtml = "";
					if (jsondata.prizeList.length == 0) {
						innerHtml = "<p class='nodata'>暂无记录</p>";
					} else {
						var className = "odd";
						for (var i = 0; i < jsondata.prizeList.length; i++) {
							if (i % 2 == 0) {
								className = "even"
							} else {
								className = "odd"
							}
							innerHtml += '<li class="' + className + '"><i></i><span>' + jsondata.prizeList[i].mobile + '</span><span>获得 ' + jsondata.prizeList[i].prizeName + '</span></li>';
						}
					};
					$(".mylist ul").append(innerHtml);
				};
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {}
		});
	}
	// 获得系统时间
	function getSysTime() {
		$.ajax({
			type: "get",
			// url: "data4.json", //URL
			url: "http://www.fullrong.com/sysCurrentTime", //URL
			dataType: "json",
			success: function(jsondata) {
				sysDate = new Date(jsondata.sysCurrentTime)
				if (sysDate.getMonth() + 1 >= deadLine) {
					$("#mask,.gameover").fadeIn();
				};
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {}
		});
	}
	//
	$(".title img").click(function() {
		if (isLogin) {
			$("#mask,.mylist").fadeIn();
			$("body").css("overflow-y","hidden");
		} else {
			window.location.href = "http://www.fullrong.com/logoutSuccess";
		};
	});
	// 滚动到页面底部加载更多
	var nScrollHight = 0; //滚动距离总长(注意不是滚动条的长度)
	var nScrollTop = 0; //滚动到的当前位置
	var nDivHight = $(".mylist ul").height();
	$(".mylist ul").scroll(function() {
		nScrollHight = $(this)[0].scrollHeight;
		nScrollTop = $(this)[0].scrollTop;
		if (nScrollTop + nDivHight >= nScrollHight) {
			mylistPage++;
			console.log(mylistPage);
			if (mylistPage <= myPageCount) {
				getMyPrizeList(mylistPage, myPerPage);
			};
		}
	});
});