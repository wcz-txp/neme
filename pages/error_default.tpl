<txp:php>
	if ($_POST['submit']) {
		$url = $_POST['site'].$_POST['terms'];
		if ($_POST['section'] && ($_POST['section'] != 'null')) $url = $url.'&s='.$_POST['section'];
		header('Location: '.$url);
	} else {
		header('content-type: text/html; charset=utf-8');
	}
</txp:php>


<txp:if_logged_in not><txp:pat_speeder gzip="0"/></txp:if_logged_in>
<!doctype html>
<!--[if lt IE 7]> <html lang="en-gb" class="ie ie6 lte9 lte8 lte7"> <![endif]-->
<!--[if IE 7]> <html lang="en-gb" class="ie ie7 lte9 lte8 lte7"> <![endif]-->
<!--[if IE 8]> <html lang="en-gb" class="ie ie8 lte9 lte8"> <![endif]-->
<!--[if IE 9]> <html lang="en-gb" class="ie ie9 lte9"> <![endif]-->
<!--[if gt IE 9]> <html lang="en-gb" class="ie10"> <![endif]-->
<!--[if !IE]><!--> <html lang="en-gb"> <!--<![endif]-->

<head>
<meta charset="utf-8" />

<title><txp:site_name />: <txp:error_status /></title>
<meta name="Robots" content="noindex,follow" />
<link rel="home" href="<txp:site_url />" />

<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1" />

<meta name="format-detection" content="telephone=no" />

<txp:feed_link flavor="atom" format="link" label="Atom" />
<txp:feed_link flavor="rss" format="link" label="RSS" />

<txp:css name="default" format="flat.link" media="all" />

<!--[if IE]>
<txp:css name="ie-fluid" format="flat.link" />
<![endif]-->

<txp:css name="print" format="flat.link" media="print" />

<!--[if (IE 6)|(IE 7)|(IE 8)]>
<script src="<txp:output_form form="jquery1x.js" context="flat.url" />"></script>
<![endif]-->
<!--[if gte IE 9]>
<script src="<txp:output_form form="jquery.js" context="flat.url" />"></script>
<![endif]-->
<!--[if !IE]>-->
<script src="<txp:output_form form="jquery.js" context="flat.url" />"></script>
<!--<![endif]-->


<script>
$(document).ready(function() {
$('body').removeClass('no-js').addClass('js');
});
</script>

<script>
$(function() {
var pull = $('#pull1');
menu = $('nav ul');
menuHeight = menu.height();

$(pull).on('click', function(e) {
e.preventDefault();
menu.slideToggle();
});

$(window).resize(function(){
var w = $(window).width();
if(w > 320 && menu.is(':hidden')) {
menu.removeAttr('style');
}
});
});
</script>


</head>
<body id="error">

<div id="nav"><div class="container_24">
<div class="grid_24" id="menu">
<nav itemtype="http://schema.org/SiteNavigationElement" itemscope="itemscope"  class="menu" id="menu-primary">
<div class="menu-container">
<div id="menu-toggle-primary">
<a class="open-menu-primary" href="#menu-primary"><span class="screen-reader-text">Menu</span></a>
<a class="close-menu-primary" href="#"><span class="screen-reader-text">Close menu</span></a>
</div><!-- .menu-toggle -->
<div class="wrap">
<ul class="menu-items" id="menu-primary-items">
<li><a href="<txp:site_url />" <txp:if_section name="">class="active"</txp:if_section> rel="home">Home</a></li>
<li><a href="<txp:site_url />about/"<txp:if_section name="about"> class="active"</txp:if_section> rel="bookmark">About</a></li>
<li><a href="<txp:site_url />nac/"<txp:if_section name="nac"> class="active"</txp:if_section> rel="bookmark">NAC</a></li>
<li><a href="<txp:site_url />events/"<txp:if_section name="events"> class="active"</txp:if_section> rel="section">Events</a></li>
<li><a href="<txp:site_url />participations/"<txp:if_section name="participations"> class="active"</txp:if_section> rel="section">Participations</a></li>
<li><a href="<txp:site_url />publications/"<txp:if_section name="publications"> class="active"</txp:if_section> rel="bookmark">Publications</a></li>
<li><a href="<txp:site_url />workshops/"<txp:if_section name="workshops"> class="active"</txp:if_section> rel="bookmark">Workshops</a></li>
<li><a href="<txp:site_url />texts/"<txp:if_section name="texts"> class="active"</txp:if_section> rel="bookmark">Texts</a></li>
<li><a href="<txp:site_url />newsletter/"<txp:if_section name="newsletter"> class="active"</txp:if_section> rel="nofollow">Newsletter</a></li>
<li><a href="<txp:site_url />contact/"<txp:if_section name="contact"> class="active"</txp:if_section> rel="nofollow">Contact</a></li>
<li class="nosmall">&nbsp;&nbsp;</li>
<li><a href="http://forum.neme.org/" rel="external">Forum</a></li>
<li><a href="<txp:site_url />related-links/" <txp:if_section name="related-links"> class="active"</txp:if_section> rel="bookmark">Links</a></li><txp:if_logged_in><txp:if_individual_article><li><a href="<txp:site_url />textpattern/index.php?event=article&amp;step=edit&amp;ID=<txp:article_id />"><txp:article_id /></a></li></txp:if_individual_article></txp:if_logged_in>

</ul>
</div>
</div>
</nav>
</div>

<div class="clear">&nbsp;</div>

</div><!-- end .container_24 --></div>

<div id="header">
<div class="container_24">

<div class="grid_2">
<a href="<txp:site_url />"><txp:image id="792" /></a>
</div>

<div class="grid_20">
<h1><txp:site_name />: <txp:error_status /></h1>
</div>
</div>
<div class="clear">&nbsp;</div>
</div>

<div id="content">
<div class="container_24">

<h2 class="error-msg"><txp:if_status status="404">The page<br /><strong>neme.org<txp:page_url /></strong><br />does not exist. Check that the url is typed correctly.<txp:else /><txp:error_message /></txp:if_status></h2>

<div class="announce"><p>Note that since the redesign of our site many urls might return a 404 error. Except from the <a rel="bookmark" href="/texts/">texts</a> all our previously published international arts information and calls have been relocated to our <a href="http://www.neme.org/blog/">blog</a> section which is now hosting our legacy content.</p></div>

</div><!-- end .container_24 -->
</div>

<txp:output_form form="colak_foot" />
<txp:output_form form="javascripts" />
<txp:oui_cookie name="accept_cookies" duration="+1 year" values="yes" />
<!--googleoff: all-->
<txp:oui_if_cookie name="accept_cookies">
<txp:output_form form="cookies" />
<txp:else />
<div id="eucookies" class="noprint"><div class="container_24">
<p class="grid_18">To make sure that this website remains accessible in the European Union, we are forced to include this annoying notice so as to alert you that this website, like most of the websites in the world, uses cookies. We do not profile you or use the data for any commercial purposes except to study ways to enhance user experience in this site. By continuing to use the site, we assume that you are happy with that. You can find out more about our use of cookies by reading our <a rel="nofollow" href="http://www.neme.org/about/privacy-policy">privacy policy</a>.</p>
<p class="grid_6"><a rel="nofollow" href="?accept_cookies=yes">Accept</a></p>
</div></div>
</txp:oui_if_cookie>
<!--googleon: all-->

</body>
</html>
