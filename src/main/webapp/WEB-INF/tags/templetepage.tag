<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@ attribute name="header" fragment="true"%>
<%@ attribute name="footer" fragment="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WELCOME TO ICSSE 2017</title>

<link href="/resources/css/show_img.css" rel="stylesheet"
	type="text/css" />

<script type="text/javascript"
	src="<c:url value="/resources/Portlets/PanelBar/js/jquery-1.7.2.min.js"/>"></script>
<script src="<c:url value="/resources/js/Common.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/PagingContent.js" />"
	type="text/javascript"></script>
<link rel="shortcut icon" type="image/png"
	href="<c:url value="/resources/Resources/Imagephoto/logo.png"/>" />
<link href="<c:url value="/resources/component/lightbox/css/lightbox.css"/>"
	rel="stylesheet" type="text/css" />
<script src="<c:url value="/resources/component/lightbox/js/lightbox.min.js"/>"
	type="text/javascript"></script>
<link href="/resources/css/search_Article.css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
	function SearchProcess(event) {
		if (event.keyCode == 13) {
			OnSearch(document.getElementById('txtSearchArticle').value);
			return false;
		}
		return true;
	}
	function OnSearch(query) {
		PSCPortal.Services.CMS.SearchAndPaging(query, currentPage,
				OnSearchSuccess, OnSearchFailed);
	}

	function OnSearchSuccess(results, context, methodName) {
		var position = results.indexOf('_');
		totalRecords = results.substring(0, position);
		results = results.substring(position + 1);
		LoadContentAndPaging(results);
	}
	function OnSearchFailed(results, context, methodName) {
	}

	function retitleUrl(str) {
		str = str.replace(/^\s+|\s+$/g, ''); // trim
		str = str.toLowerCase();
		// remove accents, swap Ã± for n, etc
		var from = "Ã Ã¡áº£Ã£áº¡Äáº±áº¯áº³áºµáº·Ã¢áº§áº¥áº©áº«áº­ÄÃ¨Ã©áº»áº½áº¹Ãªá»áº¿á»á»á»Ã¬Ã­á»Ä©á»Ã²Ã³á»Ãµá»Ã´á»á»á»á»á»Æ¡á»á»á»á»¡á»£Ã¹Ãºá»§Å©á»¥Æ°á»«á»©á»­á»¯á»±á»³Ã½á»·á»¹á»µÂ·/_,:;";
		var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
		for (var i = 0, l = from.length; i < l; i++) {
			str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
		}
		str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
		.replace(/\s+/g, '-') // collapse whitespace and replace by -
		.replace(/-+/g, '-'); // collapse dashes
		return str;
	};

	function popunder() {
		$('a').not(
				'[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]')
				.each(
						function() {
							$(this).attr(
									'href',
									function(index, value) {
										if (value != undefined) {
											var index = value
													.indexOf("Default.aspx");
											if (index >= 0)
												return value = "/"
														+ value.substring(
																index,
																value.length);
										}
									});
						});
		var articleId = '' != '' ? '' : '';
		var topicId = '' != '' ? '' : '';
		var moduleId = '' != '' ? '' : '';
		if (articleId != '') {
			if (window.history.state == null) {
				if (articleId.indexOf("index.html") > -1)
					articleId = articleId.substr(0, articleId
							.indexOf("index.html"));
				window.history.replaceState({
					ArticleId : articleId
				}, "ArticleId", "/ArticleId/" + articleId + "/"
						+ retitleUrl(''));
			}
		}
		if (topicId != '') {
			if (window.history.state == null) {
				if (topicId.indexOf("index.html") > -1)
					topicId = topicId.substr(0, topicId.indexOf("index.html"));
				window.history.replaceState({
					TopicId : topicId
				}, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
			}
		}

	}
</script>


<link
	href="<c:url value = "/resources/css/WebResource35b9.css"/>"
	type="text/css" rel="stylesheet" class="Telerik_stylesheet" />

	<link
	href="<c:url value = "/resources/css/WebResourceb3b4.css"/>"
	type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
<link
	href="<c:url value="/resources/css/WebResourcee0ee.css"/>"
	type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
	
	<link href="/resources/assets/WebResource.axd" type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
	<link href="/resources/assets/WebResource2.axd" type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
	<link href="/resources/assets/WebResource5.axd" type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
</head>
<body class="body" onload='popunder();'>

	<!-- header -->
	<jsp:invoke fragment="header" />
	<form name="form1" method="post" action="#" id="form1">
		<div>
			<input type="hidden" name="RadScriptManager1_TSM"
				id="RadScriptManager1_TSM" value="" /> <input type="hidden"
				name="__EVENTTARGET" id="__EVENTTARGET" value="" /> <input
				type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPaA8FDzhkNDcwM2E4MmIzZTg1NxgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgURUmFkV2luZG93TWFuYWdlcjEFOmN0bDA2JHBvcnRsZXRfODAwODg2YTgtY2NiNS00MGRkLTgxM2EtMmMwMmFjMGQyZTkyJFJhZE1lbnWWq04WBGWRJGLcOwi3PFP5x9B5Cw==" />
		</div>

		<script src="/resources/assets/WebResource9.axd" type="text/javascript"></script>
		
	<script src="/resources/assets/Telerik.Web.UI.WebResource.axd" type="text/javascript"></script>
	<script type="text/javascript">
		//<![CDATA[
		if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
		//]]>
	</script>

	<script src="/resources/Services/PortletProxy.asmx/jsdebug.js" type="text/javascript"></script>
	<script src="/resources/Services/ModuleProxy.asmx/jsdebug.js" type="text/javascript"></script>
	<script src="/resources/Services/CMS.asmx/jsdebug.js" type="text/javascript"></script>
	<script src="/resources/Services/WeatherService.asmx/jsdebug.js" type="text/javascript"></script>
	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
    <div id="RadWindowManager1" style="display:none;">
		<!-- 2011.1.315.35 -->
		<div id="RadWindowManager1_alerttemplate" style="display:none;">
			<div class="rwDialogPopup radalert">			
				<div class="rwDialogText">
				{1}				
				</div>
				
				<div>
					<a  onclick="$find('{0}').close(true);"
					class="rwPopupButton" href="javascript:void(0);">
						<span class="rwOuterSpan">
							<span class="rwInnerSpan">##LOC[OK]##</span>
						</span>
					</a>				
				</div>
			</div>
		</div>
		<div id="RadWindowManager1_prompttemplate" style="display:none;">
			 <div class="rwDialogPopup radprompt">			
					<div class="rwDialogText">
					{1}				
					</div>		
					<div>
						<script type="text/javascript">
						function RadWindowprompt_detectenter(id, ev, input)
						{							
							if (!ev) ev = window.event;                
							if (ev.keyCode == 13)
							{															        
								var but = input.parentNode.parentNode.getElementsByTagName("A")[0];					        
								if (but)
								{							
									if (but.click) but.click();
									else if (but.onclick)
									{
										but.focus(); var click = but.onclick; but.onclick = null; if (click) click.call(but);							 
									}
								}
							   return false;
							} 
							else return true;
						}	 
						</script>
						<input title="Eneter Value" onkeydown="return RadWindowprompt_detectenter('{0}', event, this);" type="text"  class="rwDialogInput" value="{2}" />
					</div>
					<div>
						<a onclick="$find('{0}').close(this.parentNode.parentNode.getElementsByTagName('input')[0].value);"				
							class="rwPopupButton" href="javascript:void(0);" ><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
						<a onclick="$find('{0}').close(null);" class="rwPopupButton"  href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
					</div>
				</div>				       
		</div>
		<div id="RadWindowManager1_confirmtemplate" style="display:none;">
			<div class="rwDialogPopup radconfirm">			
				<div class="rwDialogText">
				{1}				
				</div>						
				<div>
					<a onclick="$find('{0}').close(true);"  class="rwPopupButton" href="javascript:void(0);" ><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
					<a onclick="$find('{0}').close(false);" class="rwPopupButton"  href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
				</div>
			</div>		
		</div>
		<input id="RadWindowManager1_ClientState" name="RadWindowManager1_ClientState" type="hidden" />
	</div>
		<script type="text/javascript">
			//<![CDATA[
			Sys.WebForms.PageRequestManager._initialize('RadScriptManager1',
					'form1', [], [], [], 90, '');
			//]]>
		</script>


		<link
			href="/resources/Resources/ImagesPortal/PhongBan/main.css"
			rel="stylesheet" />
		<link href="<c:url value = "/resources/css/mainPortlets.css"/>" rel="stylesheet" />
		<script language="javascript" type="text/javascript">
			function SearchProcess(event) {
				if (event.keyCode == 13) {
					OnSearch(document.getElementById('txtSearchArticle').value);
					return false;
				}
				return true;
			}
			function OnSearch(query) {
				PSCPortal.Services.CMS.SearchAndPaging(query, currentPage,
						OnSearchSuccess, OnSearchFailed);
			}

			function OnSearchSuccess(results, context, methodName) {
				var position = results.indexOf('_');
				totalRecords = results.substring(0, position);
				results = results.substring(position + 1);
				LoadContentAndPaging(results);
			}
			function OnSearchFailed(results, context, methodName) {
			}
		</script>
		<div class="wrapper">
			<table cellspacing="0" cellpadding="0" border="0"
				style="border-collapse: collapse;">
				<tr>
					<td colspan="2"><div id="pnTop">
							<div id="pnTopDisplay" style="width: 100%; float: left">
								<div id='ctl06_portlet_83a3e05a-eb99-4512-bd1a-5af90706fcf3'
									style="width:70%; float: left">
									<div>
										<div class="P_top">
											<div class="P_logo">
												<div class="anh_logo">
													<img alt=""
														src="<c:url value = "/resources/Resources/Images/SubDomain/icsse2017/Banner_Hoi_nghi_quoc_te_sua.jpg"/>"
														style="width: auto; height: 188px;" /><br />
												</div>
												<div class="name_ute"></div>
											</div>
										</div>

									</div>
								</div>
								<div id='ctl06_portlet_6299a742-1878-4325-8536-4faefa3c1b4c'
									style="width: 30%; float: right">
									<div>
										<div class="search_phong">
											<input class="bgsearch_phong" id="txtSearchArticle"
												onkeydown="return SearchProcess(event);" type="text" /><input
												class="btsearch_phong"
												onclick="OnSearch(document.getElementById('txtSearchArticle').value);"
												type="button" />
										</div>
										<div class="link_trang">
											<a href="home.jsp">http://icsse2017.hcmute.edu.vn</a>
										</div>

									</div>
								</div>
								<div id='ctl06_portlet_e28a24d5-befe-4213-a3d5-2e1ebcb2a71e'
									style="width: 100%; float: left">
									<div>

										<link
											href="<c:url value = "/resources/Portlets/NivoSlider/CSS/nivo-slider.css"/>"
											rel="stylesheet" />
										<link
											href="<c:url value = "/resources/Portlets/NivoSlider/CSS/themes/default/default.css"/>"
											rel="stylesheet" />

										<script
											src="<c:url value = "/resources/Portlets/NivoSlider/Scripts/jquery.nivo.slider.js"/>"></script>




										<div class="container" style="height: 350px;">
											<div class="slider-wrapper theme-default">
												<div id="slider" class="nivoSlider">

													<a href="#" target="_blank"> <img
														src="<c:url value = "/resources/Resources/imagesPortlet/hnqt/HNQT3.jpg"/>"
														title="" /></a> <a href="#" target="_blank"> <img
														src="<c:url value = "/resources/Resources/imagesPortlet/hnqt/HNQT2.jpg"/>"
														title="" /></a> <a href="#" target="_blank"> <img
														src="<c:url value = "/resources/Resources/imagesPortlet/hnqt/HNQT1.jpg"/>"
														title="" /></a>

												</div>
											</div>
										</div>
										<script>
											$(document)
													.ready(
															function() {
																$(".nivoSlider")
																		.nivoSlider(
																				{
																					effect : 'random',
																					slices : 15,
																					boxCols : 8,
																					boxRows : 4,
																					animSpeed : 500,
																					pauseTime : 3000,
																					startSlide : 0,
																					directionNav : true,
																					controlNav : true,
																					controlNavThumbs : false,
																					pauseOnHover : true,
																					manualAdvance : false,
																					prevText : 'Prev',
																					nextText : 'Next',
																					randomStart : false,
																					beforeChange : function() {
																					},
																					afterChange : function() {
																					},
																					slideshowEnd : function() {
																					},
																					lastSlide : function() {
																					},
																					afterLoad : function() {
																					}
																				});
																$('.nivoSlider')
																		.css(
																				'height',
																				'350px');
																$(
																		'.nivoSlider img')
																		.css(
																				'height',
																				'350px');
															})
										</script>
									</div>
								</div>
								<div id='ctl06_portlet'
									style="padding: 10px 0px 0px 0px; width: 100%; float: left">
									<div>

										<link
											href="<c:url value = "/resources/Portlets/MenuRad/Menu.Green.css"/>"
											rel="stylesheet" type="text/css" />
										<div
											id="ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"
											class="RadMenu RadMenu_Green rmSized"
											style="height: 40px; z-index: 1; width: 100%;">
											<ul class="rmRootGroup rmHorizontal">
												<li class="rmItem rmFirst"><a
													href="<c:url value="/${19}"/>"
													class="rmLink rmRootLink"><span class="rmText">Home</span></a></li>
												
												<li class="rmItem "><a
													
													class="rmLink rmRootLink"><span class="rmText"   data-toggle="modal" data-target="#DoiMK1" title="Add member" class="add-member">PopUp</span></a></li>
												<li class="rmItem "><a
													href="<c:url value="/${15}"/>"
													class="rmLink rmRootLink"><span class="rmText">Keynote
															Speakers</span></a></li>
												<li class="rmItem "><a
													href="<c:url value="/${16}"/>"
													class="rmLink rmRootLink"><span class="rmText">PROGRAM</span></a></li>
												<li class="rmItem "><a
													href="<c:url value="/${17}" />"
													class="rmLink rmRootLink"><span class="rmText">PUBLICATION</span></a></li>
												<li class="rmItem "><a
										
													class="rmLink rmRootLink" href="#"><span class="rmText">VENUE & HOTEL</span></a></li>
												<li class="rmItem "><a
													href="<c:url value="/${18}"/>"
													class="rmLink rmRootLink"><span class="rmText">GALLERY</span></a></li>
												<li class="rmItem "><a
													href="<c:url value="/${20 }"/>" class="rmLink rmRootLink"><span
														class="rmText">Contact</span></a></li>
															
												<li class="rmItem rmLast">
												<c:if test="${!sessionScope.login}">
												
												<a
													href="/acc" class="rmLink rmRootLink"><span
														class="rmText">Log in</span></a>
												</c:if>
					
												
														</li>
												<li class="rmItem rmLast">
												<c:if test="${sessionScope.login}">
												<a
														href="/acc" class="rmLink rmRootLink">
														<span class="rmText">Log out</span>
												</a>
														<li ><a href="/${20 }" class="rmLink rmRootLink"><span
														class="rmText">Add news</span></a></li>
														
												</c:if>
												</li>
											
												
											</ul>
											
										</div>

									</div>
								</div>
							</div>
						</div></td>

				</tr>

				<tr valign="top">

					<td class="col-md-9" >
							<div id="pnCenterDisplay"   ><div id="pnCenter">

								<jsp:doBody />

							</div>


						</div></td>
					</td>
					<td class="col-md-3">
					<div id="pnRight">
							<div id="pnRightDisplay" >
								<div id='ctl06_portlet_b633be64-8363-4e53-9952-6acf34d3e9e9'
									style="float: left;">
									<div>

										<style type="text/css">
</style>
										<div class="thongbao_phong">
											<div class="topictb_phong_blue">
												<h3>Latest news
												<span><a href="/edit-webpage-${1001}" class="rmLink" style="width: auto; background-color : grey; color: inherit;" id="news">.</a></span>
												</h3>
												
												<a class="wobble-horizontal"
													href="indexc059.html?TopicId=31ca0f13-71be-4bd9-ad28-d3589a3cf6d2">
													<img
													src="/resources/Resources/ImagesPortal/PhongBan/arrow_all_phong.png">
												</a>
												
											</div>
											
											<div class="listtb_phong">
												<ul>
													<c:forEach var="l" items="${noidung}">
														<li>
															<a href="/view/${l.getID()}"><p>Create date</p> ${l.getTieuDe()}</a>
														</li>
													</c:forEach>
												</ul>
										
											</div>
											<!--end listtb_phong-->
										</div>

									</div>
								</div>
								<div id='ctl06_portlet_9d945843-6c22-4daf-9b88-835da3891673'
									style="float: left">
									<div>
										<table>
											<tbody>
												<tr>
													<td
														style="text-align: left; width: 350px; height: 40px; vertical-align: middle; background-color: #ff0000;">&nbsp;<span
														style="font-size: 20px; color: #ffff00;"><strong>IMPORTANT
																DEADLINES</strong></span>
														<span><a href="/edit-webpage-${1002}" class="rmLink" style="width: auto; background-color : grey; color: inherit;" id="news">.</a></span>
														</td>
												</tr>
											</tbody>
										</table>
											${deadlines.content}
										
									</div>
								</div>
								<div id='ctl06_portlet_553574d9-9245-4da8-a214-baf51898689a'
									style="float: left;">
									<div>
										<table>
											<tbody>
												<tr>
													<td
														style="width: 350px; height: 40px; background-color: #92d050;"><strong><span><span
																style="font-size: 20px; color: #c00000;">SPECIAL
																	SESSION</span><br /> </span></strong>
									<span><a href="/edit-webpage-${1003}" class="rmLink" style="width: auto; background-color : grey; color: inherit;" id="news">.</a></span>
												</tr>
											</tbody>
										</table>
											${special.content}
									

									</div>
								</div>
								<div id='ctl06_portlet_78439b67-a318-4ced-ac29-33d02da2a0fb'
									style="float: left;">
									<div>
										<table>
											<tbody>
												<tr>
													<td
														style="text-align: left; width: 350px; vertical-align: middle; height: 40px; background-color: #002060;">&nbsp;<span
														style="font-size: 20px; color: #ffff00;"><strong>KEY
																LINKS</strong></span>
									<span><a href="/edit-webpage-${1004}" class="rmLink" style="width: auto; background-color : grey; color: inherit;" id="news">.</a></span>
												</tr>
											</tbody>
										</table>
										${key.content }
										
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<!-- end of header -->
				<!-- body -->



				<!-- end of body -->
				<!-- footer -->
				<jsp:invoke fragment="footer" />
				<tr>
					<td colspan="2"><div id="pnBottom">
							<div id="pnBottomDisplay"
								style="clear: both; background: url(/resources/Resources/ImagesPortal/PhongBan/bgfooter_phong.png) repeat-x; width: 100%; height: 110px;">
								<div id='ctl06_portlet_5c231c9e-b9b3-474f-bb01-834b95465666'
									style="float: right">
									<div>

										<div class="truycap_ute">
											<p>
												Visit month: <span
													id="ctl06_portlet_5c231c9e-b9b3-474f-bb01-834b95465666_Label4">2,509</span>
											</p>
											<p class="line_footer"></p>
											<p>
												Visit total:<span
													id="ctl06_portlet_5c231c9e-b9b3-474f-bb01-834b95465666_Label1">5,987</span>
											</p>
										</div>

									</div>
								</div>
								<div id='ctl06_portlet_8b056785-3dc4-4de8-9516-a546e8152a5c'
									style="float: left;">
									<div>
										<div class="addute">
											<p>
												<span style="font-size: 14px; color: #ffffff;">2017
													IEEE International Conference on System Science and
													Engineering<br /> <span style="font-size: 14px;">HCMC
														University of Technology and Education</span><br /> Add: No 1 Vo
													Van Ngan Street, Linh Chieu Ward, Thu Duc District, Ho Chi
													Minh City<br /> Tel: (+84.8) 37 221 223 - Ext: 8161 / 8163<br />
													E-mail: icsse2017@hcmute.edu.vn
												</span>
											</p>
										</div>

									</div>
								</div>
							</div>
						</div></td>
				</tr>
			</table>
		</div>


	</form>
	<!-- end of footer -->
</body>
</html>