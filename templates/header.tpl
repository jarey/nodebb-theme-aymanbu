<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{css-buster}" />
	<!-- BEGIN linkTags -->
	<link<!-- IF linkTags.link --> link="{linkTags.link}"<!-- ENDIF linkTags.link --><!-- IF linkTags.rel --> rel="{linkTags.rel}"<!-- ENDIF linkTags.rel --><!-- IF linkTags.type --> type="{linkTags.type}"<!-- ENDIF linkTags.type --><!-- IF linkTags.href --> href="{linkTags.href}"<!-- ENDIF linkTags.href --> />
	<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
	</script>
	<script src="{relative_path}/nodebb.min.js?{script-buster}"></script>
	<script type="text/javascript" src="/js/detect.min.js"></script>
	<script type="text/javascript" src="/js/popwin.js"></script>
	<link href="/css/sidebar.css" rel="stylesheet" type="text/css">
    <script>
		require.config({
			baseUrl: "{relative_path}/src/modules",
			waitSeconds: 3,
			urlArgs: "{cache-buster}",
			paths: {
				'forum': '../forum',
				'vendor': '../../vendor'
			}
		});
	</script>

	<!-- IF useCustomJS -->
	{customJS}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{customCSS}</style>
	<!-- ENDIF useCustomCSS -->

</head>

<body>
	<div class="navbar navbar-default navbar-fixed-top header" role="navigation" id="header-menu">
		<div class="loading-bar"></div>
		<div class="container">
			<!-- IMPORT partials/menu.tpl -->
		</div>
		<div id="moquu_wxin" class="moquu_wxin"><a href="javascript:void(0)"><div class="moquu_wxinh"></div></a></div>
		<div id="moquu_wshare" class="moquu_wshare"><a href="javascript:void(0)"><div class="moquu_wshareh"></div></a></div>
		<a id="moquu_top" href="javascript:void(0)"></a>
	</div>

	<div class="container" id="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
