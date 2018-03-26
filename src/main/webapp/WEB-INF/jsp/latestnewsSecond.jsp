<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<t:templetepage>

	<jsp:attribute name="header">     
    </jsp:attribute>
	<jsp:attribute name="footer">
    </jsp:attribute>
	<jsp:body>
	<link href="/resources/Modules/TopicArticleDisplay.css" rel="stylesheet"
			type="text/css" />

<script type="text/javascript">
    function OnSendArticle() {
        var result = window.showModalDialog("/resources//Modules/CMS/SendArticle.aspx", document.URL, "dialogHeight: 320px; dialogWidth: 450px;");
    }
    function OnBack() {
        window.history.back();
    }
    function OnGoToHead() {
        window.moveTo(0, 0);
    }

</script>
<script type="text/javascript">

    $(document).ready(function () {

        $(".slidingDiv").hide();
        $(".show_hide").show();

        $('.show_hide').click(function () {
            $(".slidingDiv").slideToggle();
        });

    });

</script>
<style type="text/css">
.bg_display {
	clear: both;
	float: left;
	background: #fff;
}

.title_display {
	color: #9F0E13;
	font-weight: bold;
	font-size: 14px;
	text-transform: uppercase;
	border-bottom: 1px dashed #0280bb;
	padding: 5px 0px 5px 10px;
	margin: 0px 10px;
}

.title_display a {
	color: #333 !important;
}

.title_display a:hover {
	color: #FF0000 !important;
}

.ct_tin_display {
	float: left;
	width: 670px;
	padding-bottom: 15px;
}

.articleTitle a {
	margin: 0px 5px 0px 5px;
	margin-bottom: 10px;
	color: #0280BB;
	font-weight: bold;
	font-size: 16px;
}

.articleDescription p {
	font: 13px Arial;
	color: #000;
	line-height: 20px;
	margin: 0px 5px 0px 5px;
}

.articleContent {
	font: 13px Arial;
	line-height: 150%;
	text-align: justify;
	margin: 0px 5px 0px 5px;
}

.articleContent ol, .articleContent ul {
	padding-left: 40px;
}

.articleContent a, .articleContent p, .articleContent span,
	.articleContent h1, .articleContent h2, .articleContent h3,
	.articleContent h4, .articleContent h5, .articleContent h6,
	.articleContent div, .articleContent ul, .articleContent li,
	.articleContent table, .articleContent th, .articleContent tr,
	.articleContent td {
	font-family: Arial;
	font-size: 13px;
	text-align: justify;
	line-height: 150%;
}

.tinkhac_display {
	float: left;
	width: 670px;
	margin: 0px 5px 0px 25px;
	list-style-image: url(/resources/Resources/ImagesPortal/HomePage/arrow.png);
}

.tinkhac_display a {
	font: 13px Arial;
	line-height: 20px;
	color: #333;
}

.tinkhac_display a:hover {
	color: #FF0000;
}
</style>

<div class="bg_display">
    <div class="display" style="float: left; width: 100%;">
        <div class="title_display">
             <a style='color: #666;'
						href=indexc059.html?TopicId=31ca0f13-71be-4bd9-ad28-d3589a3cf6d2>Latest news </a> 
        </div>
        <div style="margin-top: 10px;">
            <div style="margin-left: 5px; margin-bottom: 10px;">
                <div class="ct_tin_display">
                    <div class="articleTitle">
                        <a
									href="indexe41c.html?ArticleId=bc474489-26ce-4997-a1c0-b37dce27b202">ABSTRACT DEADLINE EXTENSION: MARCH 19, 2017</a>
                    </div>
                    <div
								style="float: left; width: 100%; margin: 5px 5px 5px 10px; display: none;">
                        <span
									style="font-weight: bold; font-style: italic">Tác giả </span>:
                    </div>
                   
                    <div class="articleContent">
                        <br />
<br />
<table border="0" cellpadding="0" cellspacing="0"
									style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px; margin-left: 0px; border-collapse: collapse; border-width: medium; border-style: none; margin-right: auto;">
    <tbody>
        <tr>
            <td colspan="3" valign="top"
												style="margin: 0px; width: 16cm; background-color: #002060; padding: 0cm 5.4pt;"></td>
        </tr>
        <tr>
            <td colspan="3" valign="top"
												style="margin: 0px; width: 16cm; padding: 0cm 5.4pt; background-color: #002060;"><span
												style="font-size: 14px; font-family: arial; color: #500050;"
												class="im">
            <p
														style="font-family: arial; margin: 0px 0px 0.0001pt; line-height: 25.5pt; background-color: #0b1d2f; vertical-align: top; text-align: center;">
														<strong><span
															style="font-size: 14px; color: #ffc063;"></span></strong>
													</p>
            <p
														style="font-family: arial; margin: 0px 0px 0.0001pt; line-height: 25.5pt; vertical-align: top; text-align: center;">
														<strong><span
															style="font-size: 28px; color: #ffc063;">Abstract Deadline&nbsp;Extension:<br />
            March 19,&nbsp;2017</span></strong> </p>
            <p
														style="margin: 0px 0px 0.0001pt; line-height: 15pt; vertical-align: top; text-align: center;">
														<span
															style="font-size: 14px; font-family: arial; color: white;">&nbsp;</span><span
															style="font-size: 18px; color: white;">Your requests for an extension have been granted!</span>
													</p>
            <p
														style="font-family: arial; margin: 0px 0px 0.0001pt; line-height: 19.5pt; vertical-align: top; text-align: center;">
														<span style="font-size: 14px; color: white;"><br />
            </span>
													</p>
            <p
														style="font-family: arial; margin: 0px 0px 0.0001pt; line-height: 19.5pt; background-color: #0b1d2f; vertical-align: top; text-align: center;">
														<span style="font-size: 14px; color: white;"></span>
													</p>
            </span>
            <p
													style="margin: 12pt 0cm 0.0001pt; line-height: 17.25pt; background-color: #0b1d2f; vertical-align: top;">
													<span
														style="font-size: 14px; font-family: arial; color: white;"></span>
												</p>
            <p
													style="margin: 12pt 0cm 0.0001pt; line-height: 17.25pt; vertical-align: top;">
													<span style="font-size: 18px; color: #ffff00;"><span
														style="text-align: start; font-family: arial; font-size: 18px;">Dear all distinguished delegates,&nbsp;<br />
            </span><span style="font-size: 18px;"><br />
            The abstracts are pouring in, but in order to honor the&nbsp;many requests asking for more time to write and submit an abstract for #ICSSE2017, the FINAL deadline has been extended to March 19,&nbsp;2017.&nbsp; Don't miss your precious opportunity to show your work and ideas among your peers!<br />
            </span></span><span
														style="font-size: large; font-family: arial; color: #ffff00;"><br />
            Click "Submit an Abstract" below for more information on suggested abstract topics and guidelines.</span>
												</p>
            <span class="im"
												style="font-size: 14px; font-family: arial; color: #500050;">
            <p style="margin: 6pt 0cm; text-align: justify;">
														<span style="font-size: 14px; color: #ffffff;"></span><span
															style="font-size: 14px; color: #ffffff;"></span>
													</p>
            </span><span class="im" style="color: #500050;">
            <p style="margin: 6pt 0cm; text-align: justify;">
														<span style="font-size: 14pt; color: #ffffff;"><br />
            </span>
													</p>
            </span></td>
        </tr>
        <tr>
            <td valign="top"
												style="margin: 0px; width: 120.5pt; background-color: #002060; padding: 0cm 5.4pt;">
            <p style="margin: 6pt 0cm; text-align: center;">&nbsp;</p>
            </td>
            <td valign="top"
												style="margin: 0px; width: 219.7pt; background-color: #ffc000; padding: 0cm 5.4pt;">
            <p style="margin: 6pt 0cm; text-align: center;">
													<strong><a
														href="ArticleId/945864b5-165f-45a3-8e75-a9ba5ac1f9ef/index.html"
														target="_blank"
														data-saferedirecturl="https://www.google.com/url?hl=vi&amp;q=http://icsse2017.hcmute.edu.vn/ArticleId/945864b5-165f-45a3-8e75-a9ba5ac1f9ef/&amp;source=gmail&amp;ust=1488964221386000&amp;usg=AFQjCNE_xwiDIZk_wbcoxO_EA9ontqAH7A"
														style="color: #1155cc;"><span style="font-size: 18px;">SUBMIT AN ABSTRACT</span></a></strong>
												</p>
            </td>
            <td valign="top"
												style="margin: 0px; width: 4cm; background-color: #002060; padding: 0cm 5.4pt;">
            <p style="margin: 6pt 0cm; text-align: center;">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td valign="top"
												style="margin: 0px; width: 120.5pt; background-color: #002060; padding: 0cm 5.4pt;">&nbsp;</td>
            <td valign="top"
												style="margin: 0px; width: 219.7pt; background-color: #002060; padding: 0cm 5.4pt;">&nbsp;</td>
            <td valign="top"
												style="margin: 0px; width: 4cm; background-color: #002060; padding: 0cm 5.4pt;">&nbsp;</td>
        </tr>
        <tr>
            <td valign="top"
												style="text-align: justify; margin: 0px; width: 120.5pt; background-color: #002060; padding: 0cm 5.4pt;"
												colspan="3"><span
												style="font-family: arial; font-size: 18px; color: #ffff00;">To be able to meet rest of the deadlines we have started with abstract evaluation process. Results of this process you can follow up on EasyChair conference system.</span></td>
        </tr>
    </tbody>
</table>
                    </div>
                </div>
                                            
            </div>
            <div style="margin-left: 5px">
                <img style="float: left;"
							src="/resources/Resources/ImagesPortal/HomePage/tinkhac.png" />
                <a
							style="color: #0280BB; text-transform: uppercase; font: 13px Verdana; float: left; margin-left: 10px; font-weight: bold;"
							href="#">Others</a>
            </div>
            <div
						style="float: left; width: 670px; margin-bottom: 10px; padding-top: 5px; clear: both; margin: 0px 5px 0px 5px;">
                <div id="ctl06_ctl01_pnCactinkhac">
					
                    <ul>
                        
                                <li class="tinkhac_display"><a
									href="indexc489.html?ArticleId=f796f938-0681-4d25-b47e-6bcd24536152">
                                    SPECIAL SESSION 01 FOR ICSSE2017: INTELLIGENT HEALTHCARE SYSTEMS<span
										style="font: italic 11px Arial, Helvetica, sans-serif; color: #999999"></span>
								</a> </li>
                            
                    </ul>
                
				</div>
            </div>

        </div>
    </div>
    <div id="ctl06_ctl01_ValidationSummary1"
				style="color: Red; display: none;">

				</div>
    
    <div
				style="margin-top: 10px; margin-right: 25px; margin-left: 20px; text-align: justify; float: left; margin-bottom: 10px; display: none;">
        <div style="float: left; width: 100%;">
            <div
						style="background: url(/resources/Resources/ImagesPortal/HomePage/guigopy.png) no-repeat; width: 76px; height: 24px; float: left;">
                <div
							style="font-weight: bold; font: 13px Verdana; color: #fff; padding-top: 3px; text-align: center;"
							class="show_hide">
                    Comments
                </div>
            </div>
        </div>
        <div
					style="font-family: Verdana; font-size: small; color: #FF0000; float: left; width: 100%;">
            
        </div>

        <div class="slidingDiv" style="float: left;">
            <table border="0" cellpadding="0" cellspacing="0"
						style="width: 100%;">
                <tr>
                    <td align="right"
								style="font-family: Verdana; font-size: 11px; color: #333; font-weight: bold; padding: 5px"
								width="80px">
                        Full Name:
                    </td>
                    <td align="left" style="width: 230px;">
                        <input name="ctl06$ctl01$txtFullName"
								type="text" id="ctl06_ctl01_txtFullName" style="width: 200px;" />
                        <span style="color: Red">*</span><span
								id="ctl06_ctl01_RequiredFieldValidator1" title="Required"
								style="color: Red; display: none;"></span>
                    </td>
                    <td align="left">&nbsp;
                
                    </td>
                </tr>
                <tr>
                    <td align="right"
								style="font-family: Verdana; color: #333; font-size: 11px; font-weight: bold; padding: 5px"
								width="80px">Email:
                    </td>
                    <td align="left" style="width: 230px;">
                        <input name="ctl06$ctl01$txtEmail" type="text"
								id="ctl06_ctl01_txtEmail" style="width: 200px;" />
                        <span style="color: Red">*</span><span
								id="ctl06_ctl01_RequiredFieldValidator3" title="Required"
								style="color: Red; display: none;"></span>
                        <span
								id="ctl06_ctl01_RegularExpressionValidator3"
								title="Invalid Email" style="color: Red; display: none;"></span>
                    </td>
                    <td align="left">&nbsp;
                
                    </td>
                </tr>
                <tr>
                    <td align="right"
								style="font-family: Verdana; font-size: 11px; color: #333; font-weight: bold; padding: 5px"
								width="80px">
                        Title:
                    </td>
                    <td align="left" style="width: 230px;">
                        <input name="ctl06$ctl01$txtTitle" type="text"
								id="ctl06_ctl01_txtTitle" style="width: 200px;" />
                        <span style="color: Red">*</span><span
								id="ctl06_ctl01_RequiredFieldValidator4" title="Required"
								style="color: Red; display: none;"></span>
                    </td>
                    <td align="left">&nbsp;
                
                    </td>
                </tr>
                <tr>
                    <td align="right"
								style="font-family: Verdana; font-size: 11px; color: #333; font-weight: bold; padding: 5px"
								width="80px">
                        Captcha:
                    </td>
                    <td align="left" style="width: 250px;">
                        <div id="ctl06_ctl01_RadCaptcha1"
									class="RadCaptcha RadCaptcha_Default" style="float: left;">
					<span id="ctl06_ctl01_RadCaptcha1_ctl00"
										style="color: Red; visibility: hidden;"></span>
									<div id="ctl06_ctl01_RadCaptcha1_SpamProtectorPanel">
						<img id="ctl06_ctl01_RadCaptcha1_CaptchaImage" alt=""
											src="Telerik.Web.UI.WebResource7e85.jpg?type=rca&amp;guid=92aedcfb-4152-4f91-bed6-ad95feb343de"
											style="height: 50px; width: 150px; border-width: 0px; display: block;" />
					</div>
									<input id="ctl06_ctl01_RadCaptcha1_ClientState"
										name="ctl06_ctl01_RadCaptcha1_ClientState" type="hidden" />
				</div>
                        <input name="ctl06$ctl01$txtCapCha" type="text"
								id="ctl06_ctl01_txtCapCha" style="width: 204px;" />
                        <span id="ctl06_ctl01_RequiredFieldValidator6"
								title="Invalid Code" style="color: Red; visibility: hidden;">(*)</span>
                    </td>
                </tr>
                <tr>
                    <td align="right"
								style="font-family: Verdana; font-size: 11px; font-weight: bold; color: #fff; padding: 5px"
								colspan="3">
                        <div id="ctl06_ctl01_fckContent"
									class="RadEditor Default reWrapper"
									style="height: 210px; width: 380px; float: left;">
					<div id="ctl06_ctl01_fckContent_dialogOpener"
										style="display: none;">
						<div id="ctl06_ctl01_fckContent_dialogOpener_Window"
											style="display: none;">
							<div id="ctl06_ctl01_fckContent_dialogOpener_Window_C">

							</div>
											<input
												id="ctl06_ctl01_fckContent_dialogOpener_Window_ClientState"
												name="ctl06_ctl01_fckContent_dialogOpener_Window_ClientState"
												type="hidden" />
						</div>
										<input id="ctl06_ctl01_fckContent_dialogOpener_ClientState"
											name="ctl06_ctl01_fckContent_dialogOpener_ClientState"
											type="hidden" />
					</div>
									<table id="ctl06_ctl01_fckContentWrapper" cellpadding="0"
										cellspacing="0"
										style="table-layout: auto; width: 100%; height: 210px;">
						<tbody>
							<tr>
								<td class="reWrapper_corner reCorner_top_left">&nbsp;</td>
												<td class="reWrapper_center reCenter_top" colspan="3">&nbsp;</td>
												<td class="reWrapper_corner reCorner_top_right">&nbsp;</td>
							</tr>
											<tr>
								<td class="reLeftVerticalSide" rowspan="4">&nbsp;</td>
												<td rowspan="4" id="ctl06_ctl01_fckContentLeft"
													class="reTlbVertical"></td>
												<td id="ctl06_ctl01_fckContentTop" class="reToolCell"
													style="width: 100%;"><div
														class="Default reToolbarWrapper">
									<ul class="reToolbar Default">
										<li class="reGrip grip_first">&nbsp;</li>
															<li><a title="Bold" class="reTool" href="#"><span
																	class="Bold">&nbsp;</span></a></li>
															<li><a title="Italic" class="reTool" href="#"><span
																	class="Italic">&nbsp;</span></a></li>
															<li><a title="Align Left" class="reTool" href="#"><span
																	class="JustifyLeft">&nbsp;</span></a></li>
															<li><a title="Align Right" class="reTool" href="#"><span
																	class="JustifyRight">&nbsp;</span></a></li>
															<li><a title="Align Center" class="reTool" href="#"><span
																	class="JustifyCenter">&nbsp;</span></a></li>
															<li><a title="Justify" class="reTool" href="#"><span
																	class="JustifyFull">&nbsp;</span></a></li>
															<li class="reGrip grip_last">&nbsp;</li>
									</ul>
								</div></td>
												<td rowspan="4" id="ctl06_ctl01_fckContentRight"
													class="reTlbVertical"></td>
												<td rowspan="4" class="reRightVerticalSide">&nbsp;</td>
							</tr>
											<tr>
								<td valign="top" id="ctl06_ctl01_fckContentCenter"
													class="reContentCell" style="height: 100%;"><label
													for="ctl06_ctl01_fckContentContentHiddenTextarea"
													style="display: none;">RadEditor hidden textarea</label>
												<textarea id="ctl06_ctl01_fckContentContentHiddenTextarea"
														name="ctl06$ctl01$fckContent" rows="4" cols="20"
														style="display: none;"></textarea></td>
							</tr>
											<tr>
								<td class="reToolZone"><table cellpadding="0"
														cellspacing="0" id="ctl06_ctl01_fckContent_BottomTable"
														style="width: 100%;">
									<tbody>
										<tr>
											<td class="reEditorModesCell"><div class="reEditorModes"
																		id="ctl06_ctl01_fckContent_ModesWrapper">
												<ul>
													<li><a href="javascript:void(0);" title="Design"
																				class="reMode_design reMode_selected"><span>Design</span></a></li>
																			<li><a href="javascript:void(0);" title="HTML"
																				class="reMode_html"><span>HTML</span></a></li>
																			<li><a href="javascript:void(0);"
																				title="Preview" class="reMode_preview"><span>Preview</span></a></li>
												</ul>
											</div></td>
																<td class="reBottomZone"
																	id="ctl06_ctl01_fckContentBottom">&nbsp;</td>
																<td class="reResizeCell" valign="bottom" align="right"
																	style="width: 15px;"><div
																		id="ctl06_ctl01_fckContentBottomResizer">
												&nbsp;
											</div></td>
										</tr>
									</tbody>
								</table>
													<noscript>
									<p>RadEditor - please enable JavaScript to use the rich text editor.</p>
								</noscript></td>
							</tr>
											<tr>
								<td id="ctl06_ctl01_fckContentModule" class="reToolZone"></td>
							</tr>
											<tr>
								<td class="reWrapper_corner reCorner_bottom_left">&nbsp;</td>
												<td class="reWrapper_center reCenter_bottom" colspan="3">&nbsp;</td>
												<td class="reWrapper_corner reCorner_bottom_right">&nbsp;</td>
							</tr>
						</tbody>
					</table>
									<input id="ctl06_ctl01_fckContent_ClientState"
										name="ctl06_ctl01_fckContent_ClientState" type="hidden" />
				</div>
                        <span style="color: Red; font-size: 12px;">&nbsp;* </span>
                        <span id="ctl06_ctl01_RequiredFieldValidator2"
								title="Required" style="color: Red; display: none;"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center" height="25px">
                        <input type="submit" name="ctl06$ctl01$btnSend"
								value="Send"
								onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl06$ctl01$btnSend&quot;, &quot;&quot;, true, &quot;Feedback&quot;, &quot;&quot;, false, false))"
								id="ctl06_ctl01_btnSend" style="height: 25px; width: 50px;" />
                        <input type="submit"
								name="ctl06$ctl01$btnCancel" value="Cancel"
								id="ctl06_ctl01_btnCancel" style="height: 25px; width: 50px;" />
                    </td>
                </tr>


            </table>
        </div>
    </div>
</div>
<div id="ctl06_ctl01_rwUserLogin" style="display: none;">
					<div id="ctl06_ctl01_rwUserLogin_C">

					</div>
			<input id="ctl06_ctl01_rwUserLogin_ClientState"
				name="ctl06_ctl01_rwUserLogin_ClientState" type="hidden" />
				</div>
<script language="javascript" type="text/javascript">
    var dialogMethod;
    function CallWebMethodSuccess(results, context, methodName) {
        switch (methodName) {
            case "AllowWatchArticle":
                {
                    CheckUserWatchCallback(results, context, methodName);
                }
                break;
        }
    }

    function CallWebMethodFailed(results, context, methodName) {
        alert(results._message);
    }
    // check user login
    function getQuerystringNameValue(name) {
        // For example... passing a name parameter of "name1" will return a value of "100", etc.
        // page.htm?name1=100 or page.htm/name1/100
        var articleId;
        var winURL = window.location.href;
        var index = winURL.indexOf(name);
        if (index > -1) {
            winURL = winURL.substr(index, winURL.length);
            var arr = winURL.indexOf("index.html") > -1 ? winURL.split("index.html") : winURL.split("=");;
            articleId = arr[1];
        }
        return articleId;
    }
    function CheckUserWatchArticle() {
        PSCPortal.Services.CMS.AllowWatchArticle(getQuerystringNameValue("ArticleId"), CallWebMethodSuccess);
    }
    var dialogMethod;
    function CheckUserWatchCallback(results, context, methodName) {
        if (!results) {
            dialogMethod = "CheckUserWatchArticle";
            var oWnd = $find("ctl06_ctl01_rwUserLogin");
            oWnd.setSize(380, 180);
            oWnd.setUrl("/Modules/CMS/UserLogin.aspx");
            oWnd.set_title("Login");
            oWnd.show();
        }
    }
    function RadCheckUserWatchClose(sender, args) {
        switch (dialogMethod) {
            case "CheckUserWatchArticle":
                {
                    PSCPortal.Services.CMS.CheckUserWatchArticle(CallCheckUserWatchWebMethodSuccess);
                }
                break;
        }
    }
    function CallCheckUserWatchWebMethodSuccess(results, context, methodName) {
        if (!results)
            window.history.back();
    }
    //end check user login

    function pageLoad() {
        CheckUserWatchArticle();
    }
</script>
<style type="text/css">
.TelerikModalOverlay {
	filter: alpha(opacity = 95) !important; /*for IE 5.5+*/
	opacity: .95 !important; /*for FF 2x, Opera 9x*/
	-moz-opacity: .95 !important; /*for FF 1x*/
	background-color: #666666 !important;
}
</style>
	</jsp:body>
</t:templetepage>