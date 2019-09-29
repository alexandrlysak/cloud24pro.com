/**
 *
 * @authors chan.yisen (aihuacyc@gmail.com)
 * @date    2018-06-19 09:25:51
 * @version $Id$
 */

$(function(){
	//onchange="MM_jumpMenu('parent',this,0)"
	var $header = $("header"),
		$banner = $("#banner"),
		$ic = $("#index-content"),
		$innerBanner = $(".inner-banner");
	var jb = {
		SetHeader: function(){
			var $navList = $header.find("ul.nav-list"),
				$navLi = $navList.find(">li"),
				$nava = $navLi.find("a");
			var $height = $header.outerHeight(true);
			var $ahash = $("a.a-hash");
			$ahash.css("top", "-"+$height+"px");
			$nava.on("click", function(e){
				// e.preventDefault();
				var $h = $(this).attr("href").split("#")[1];
				var $hash = $("#"+$(this).attr("href").split("#")[1]);
				// var $stop = $hash.length ? $hash.offset().top : 0;
				var $stop = $hash.offset().top;
				if($h){
					e.preventDefault();
				}
				$("html,body").animate({scrollTop: $stop}, 600, function(){
					window.location.href = "#"+$h;
				});
				console.log($hash);
				console.log($stop);
			});
		},
		SetPhone: function(){
			var $menu = $("#menu"),
				$close = $("#close"),
				$phone = $("#phone");
			$menu.on("click", function(){
				$phone.fadeIn()
			});
			$close.on("click", function(){
				$phone.fadeOut();
			});
		},
		SetBanner: function(){
			var $hh = $header.outerHeight(true);
			$innerBanner.css("margin-top", $hh);
			$banner.css("margin-top", $hh);
			$(window).resize(function(){
				$hh = $header.outerHeight(true);
				$innerBanner.css("margin-top", $hh);
				$banner.css("margin-top", $hh);
			});
			var $sd = $("#scroll-down");
			$sd.on("click", function(){
				var $ics = $ic.length ? $ic.offset().top : 0;
				$("html,body").animate({scrollTop: $ics-$hh}, 600);
			});
		},
		SetYear: function(){
			var $ywrap = $(".year-wrap"),
				$cyear = $ywrap.find(".current-year"),
				$ybox = $ywrap.find(".year-box");
			if(Modernizr.touch){
				$cyear.on("click", function(){
					$(this).next().toggle();
				});
			}else{
				$ywrap.hover(function(){
					$(this).find(".year-box").show();
				},function(){
					$(this).find(".year-box").hide();
				});
			}
		},
		SetSlick: function(){
			var $mw = $(".medicines-wrap"),
				$mb = $mw.find(".medicines-box"),
				$mimg = $mb.find(".img"),
				$mprev = $mw.find(".p-prev"),
				$mnext = $mw.find(".p-next"),
				$bw = $(".brands-wrap"),
				$bb = $bw.find(".brands-box"),
				$bimg = $bb.find(".img"),
				$bprev = $bw.find(".p-prev"),
				$bnext = $bw.find(".p-next");
			var $ir2 = $("ul.ir-2-right-list"),
				$ir2h = $ir2.find("li").find("h6"),
				$ir2name = $ir2.find("li").find(".name");
			$mimg.matchHeight();
			$bimg.matchHeight();
			// $ir2h.matchHeight();
			$ir2name.matchHeight();
			$mb.slick({
				dots: false,
				infinite: false,
				slidesToShow: 3,
				slidesToScroll: 1,
				prevArrow: $mprev,
				nextArrow: $mnext,
				responsive: [
					{
						breakpoint: 1024,
						settings: {
							slidesToShow: 2
						}
					},
					{
						breakpoint: 759,
						settings: {
							slidesToShow: 1
						}
					}
				]
			});
			$bb.slick({
				dots: false,
				infinite: false,
				slidesToShow: 3,
				slidesToScroll: 1,
				prevArrow: $bprev,
				nextArrow: $bnext,
				responsive: [
					{
						breakpoint: 1024,
						settings: {
							slidesToShow: 2
						}
					},
					{
						breakpoint: 759,
						settings: {
							slidesToShow: 1
						}
					}
				]
			});
			var $ihw = $(".ir-highlight-wrap"),
				$ihb = $ihw.find(".ir-highlight-box"),
				$iprev = $ihw.find(".h-prev"),
				$inext = $ihw.find(".h-next"),
				$rw = $(".report-wrap"),
				$rb = $rw.find(".report-box"),
				$rprev = $rw.find(".report-prev"),
				$rnext = $rw.find(".report-next");
			$ihb.slick({
				dots: false,
				infinite: false,
				slidesToShow: 2,
				slidesToScroll: 1,
				prevArrow: $iprev,
				nextArrow: $inext,
				responsive: [
					{
						breakpoint: 759,
						settings: {
							slidesToShow: 1
						}
					}
				]
			});
			$rb.slick({
				dots: false,
				infinite: false,
				slidesToShow: 4,
				slidesToScroll: 1,
				prevArrow: $rprev,
				nextArrow: $rnext,
				responsive: [
					{
						breakpoint: 1400,
						settings: {
							slidesToShow: 3
						}
					},
					{
						breakpoint: 1024,
						settings: {
							slidesToShow: 2
						}
					},
					{
						breakpoint: 759,
						settings: {
							slidesToShow: 1
						}
					}
				]
			});
		},
		SetOthers: function(){
			var $medlist = $("ul.med-list"),
				$mw = $medlist.innerWidth(),
				$sw = $medlist.find("span.s-w");
			$sw.css('border-left-width', $mw/2);
			$(window).resize(function(){
				$mw = $medlist.innerWidth();
				$sw.css('border-left-width', $mw/2);
			});
		},
		NumberJump: function(time){
			$('.counter').each(function () {
			    $(this).prop('Counter',0).animate({
			        Counter: $(this).attr("data-num")
			    }, {
			        duration: time,
			        easing: 'swing',
			        step: function (now) {
			            $(this).text(Math.ceil(now));
			            $(this).text(toThousands($(this).text()));
			        }
			    });
			});
			function toThousands(num) {
			    var num = (num || 0).toString(), result = '';
			    while (num.length > 3) {
			        result = ',' + num.slice(-3) + result;
			        num = num.slice(0, num.length - 3);
			    }
			    if (num) { result = num + result; }
			    return result;
			}
		}
	}
	ContactForm();
	function ContactForm(){
		var $f = $("#form"),
			$input = $f.find(".i-group").find("input,textarea"),
			$name = $f.find(".name"),
			$nameVal = $name.val(),
			$email = $f.find(".email"),
			$emailVal = $email.val(),
			$msg = $f.find(".msg"),
			$submit = $f.find(".submit"),
			$val;
		$input.focus(function(event) {
			$val = $(this).val();
			$(this).val("").removeClass('error');
		}).blur(function(event) {
			var $valv = $(this).val();
			if($valv == ""){
				$(this).val($val);
			}
		});;
		$submit.on("click", function(){
			if($name.val() == $nameVal){
				$name.addClass('error');
			}
			if($email.val() == $emailVal || !/.+@.+\.[a-zA-Z]{2,4}$/.test($email.val())){
				$email.addClass('error');
			}
			if($name.val() == $nameVal || $email.val() == $emailVal || ($email.val() !="" && !/.+@.+\.[a-zA-Z]{2,4}$/.test($email.val()))){
				return false;
			}
		});
	}
	// var w = new WOW({});
	// w.init();
	jb.SetHeader();
	jb.SetPhone();
	jb.SetBanner();
	jb.SetYear();
	jb.SetSlick();
	jb.SetOthers();

	$(window).scroll(function(){
		if(isScrolledIntoView(".index-product-left")){
			jb.NumberJump(3000);
		}
	});

	function isScrolledIntoView(elem) {
	    var docViewTop = $(window).scrollTop();  //视窗滚动的高度
	    var docViewBottom = docViewTop + $(window).height();  //视窗底部距离文档顶部的距离
	    var elemTop = $("#banner").length ? $(elem).offset().top : 0;  //元素顶部距离文档顶部的距离
	    var elemBottom = elemTop + $(elem).height();  //元素底部距离文档顶部的距离
	    return ((elemBottom >= docViewTop) && (elemTop <= docViewBottom));  //判断元素是否在当前视窗，是的话返回true，否则返回false
     }
	//免责声明
	var $disc = $("#disc");
	$disc.click(function(){
		window.open('include/disclaimer.php','disclaimer','status=yes,scrollbars=no,width=550,height=500');
	});
	
	// Flow scroll to element
	$('.flowing-scroll').on( 'click', function(){ 
        var el = $(this);
        var dest = el.attr('href'); // получаем направление
        if(dest !== undefined && dest !== '') { // проверяем существование
            $('html').animate({ 
                scrollTop: $(dest).offset().top - 100 // прокручиваем страницу к требуемому элементу
            }, 500 // скорость прокрутки
            );
        }
        return false;
    });
	
});