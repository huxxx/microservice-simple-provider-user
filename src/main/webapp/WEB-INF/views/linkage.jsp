<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <%@include file="/WEB-INF/jsp/tbsp/common/taglibs.jspf"%> --%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" href="/css/stylesheet.css" />
	<style media=print type="text/css">
		.noprint{visibility:hidden}
	</style>
</head>
</head>
<body link="blue" vlink="purple" class="xl66">
<div align="center">
	<input type="button" class="noprint"  value="打印"onclick="window.print()" />
</div>
<table  align="center" width="734.33" border="0" cellpadding="0" cellspacing="0" style='border-collapse:collapse'>
	<col width="56" class="xl66" style='mso-width-source:userset;mso-width-alt:1792;'/>
	<col width="69.80" class="xl67" style='mso-width-source:userset;mso-width-alt:2233;'/>
	<col width="106.93" class="xl66" style='mso-width-source:userset;mso-width-alt:3421;'/>
	<col width="115.60" class="xl66" style='mso-width-source:userset;mso-width-alt:3699;'/>
	<col width="48.73" class="xl66" style='mso-width-source:userset;mso-width-alt:1559;'/>
	<col width="90.13" class="xl66" style='mso-width-source:userset;mso-width-alt:2884;'/>
	<col width="101.80" class="xl66" style='mso-width-source:userset;mso-width-alt:3257;'/>
	<col width="112" class="xl66" style='mso-width-source:userset;mso-width-alt:3584;'/>
	<tr height="31" class="xl65" style='height:23.25pt;'>
		<td class="xl69" height="31" width="701" colspan="8" style='height:23.25pt;width:525.75pt;border-bottom:none;'  >
		<c:if test="${dealDetailInfoVO.contract.contType=='50010003'}">
			联动合同-自行成交报告
		</c:if>
		<c:if test="${dealDetailInfoVO.contract.contType=='50010004'}">
			联动合同-分销成交报告
		</c:if>
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl71" height="20" colspan="8" style='height:15.00pt;border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'  >一、总成交信息</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >成交报告编号</td>
		<td class="xl76">${contractInfo.dealCode}</td>
		<td class="xl75"  >成交分行及组别</td>
		<td class="xl77" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'>
			${dealGroup}
		</td>
		<td class="xl75"  >填写日期</td>
		<td class="xl79">
			<fmt:formatDate
					value='${dealDetailInfoVO.contractRemark.fileDate}'
					pattern='yyyy-MM-dd' />
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl75" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >盘源编号</td>
		<td class="xl75"></td>
		<td class="xl75"  >客源编号</td>
		<td class="xl77" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'>
			${buyyerRoleVO.tDmPersonBizRole.bizRoleProCode }
		</td>
		<td class="xl75"  >成交日期</td>
		<td class="xl79">
			<fmt:formatDate
					value='${contractInfo.getDealDate()}' pattern='yyyy-MM-dd' />
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl75" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >项目名称</td>
		<td class="xl76"></td>
		<td class="xl75"  >栋/座/楼层</td>
		<td class="xl77" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
		<td class="xl75"  >客户确认日期</td>
		<td class="xl80"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl75" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >交易类型</td>
		<td class="xl75">
			<aist:dict name="contractRemark.dealProperty"
					   dictCode="${dealDetailInfoVO.contractRemark.dealProperty}"
					   id="dealProperty" display="onlyLabel" dictType="50090"
					   ligerui='inline-block input-two' clazz="form-control input-two"
					   tag="liandong" />
		</td>
		<td class="xl75"  >成交合同编号</td>
		<td class="xl77" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'>
			${contractInfo.filedContCode}
		</td>
		<td class="xl75"  >成交总价/元</td>
		<td class="xl80">${contractInfo.dealPrice}万元</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl75" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >总业绩/元</td>
		<td class="xl75">${zyj }</td>
		<td class="xl75"  >对外拆佣/元</td>
		<td class="xl75" colspan="2" style='border-right:none;border-bottom:none;'>
			${dwcy}
		</td>
		<td class="xl75"  >公司业绩/元</td>
		<td class="xl80">${zyj-dwcy}</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl75" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >业主佣金</td>
		<td class="xl84">${yzyj}</td>
		<td class="xl84"  >客户佣金</td>
		<td class="xl82" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:none;'>${khyj}</td>
		<td class="xl86"></td>
		<td class="xl87"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl75" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >产权地址</td>
		<td class="xl75" colspan="6" style='border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl88" height="20" colspan="8" style='height:15.00pt;border-right:1.0pt solid windowtext;border-bottom:1.0pt solid windowtext;'  >二、物业资料</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >建筑面积</td>
		<td class="xl93">${houseInfo.getArea()}</td>
		<td class="xl92"  >户型</td>
		<td class="xl94" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'>
			${dealDetailInfoVO.houseRemark.bedroom }室${dealDetailInfoVO.houseRemark.livingroom }厅${dealDetailInfoVO.houseRemark.kitchen }卫${dealDetailInfoVO.houseRemark.bathroom }厨
		</td>
		<td class="xl92"  >朝向</td>
		<td class="xl96">
			<aist:dict id="contType" name="contType" display="onlyLabel"
					   dictType="10010" dictCode="${houseInfo.orientation}"
					   ligerui='none'></aist:dict>
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >建筑结构</td>
		<td class="xl76">
			<aist:dict  name="houseRemark.buildStructure" id="buildStructure" dictCode="${dealDetailInfoVO.houseRemark.buildStructure }" display="onlyLabel" dictType="50019"/>
		</td>
		<td class="xl75"  >物业状况</td>
		<td class="xl77" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'>
			<aist:dict  name="houseRemark.houseStatus" id="houseStatus" dictCode="${dealDetailInfoVO.houseRemark.houseStatus }" display="onlyLabel" dictType="50017" />
		</td>
		<td class="xl75"  >物业性质</td>
		<td class="xl79">
			<aist:dict  name="houseRemark.houseProperty" id="houseProperty" dictCode="${dealDetailInfoVO.houseRemark.houseProperty }" display="onlyLabel" dictType="50012"  />
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl97" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:1.0pt solid windowtext;'  >房产证/预售合同号</td>
		<td class="xl99">${dealDetailInfoVO.house.offerCotContNo}</td>
		<td class="xl100"  >楼盘系统地址</td>
		<td class="xl101" colspan="4" style='border-right:1.0pt solid windowtext;border-bottom:1.0pt solid windowtext;'>
			${houseInfo.getHouseAddr()}
		</td>

	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl71" height="20" colspan="8" style='height:15.00pt;border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'  >三、相关方资料</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >人员信息</td>
		<td class="xl106"  >客户</td>
		<td class="xl106"  >客户1</td>
		<td class="xl107" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >人员信息</td>
		<td class="xl106"  >客户2</td>
		<td class="xl106"  >客户代理人</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >姓名</td>
		<td class="xl75">
			${buyyerRoleVO.gettDmPerson().getName()}
		</td>
		<td class="xl111">
			${sellerShareRoleList[0].gettDmPerson().getName()}
		</td>
		<td class="xl112" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >姓名</td>
		<td class="xl111">
			${sellerShareRoleList[1].gettDmPerson().getName()}
		</td>
		<td class="xl111">
			${bailorRoleVO.gettDmPerson().getName()}
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >性别</td>
		<td class="xl75">
			<c:if test="${buyyerRoleVO.gettDmPerson().getGender() == '0'}">
				男
			</c:if>
			<c:if test="${buyyerRoleVO.gettDmPerson().getGender() == '1'}">
				女
			</c:if>
		</td>
		<td class="xl111">
			<c:if test="${ sellerShareRoleList[0].gettDmPerson().getGender() == '0'}">
				男
			</c:if>
			<c:if test="${ sellerShareRoleList[0].gettDmPerson().getGender() == '1'}">
				女
			</c:if>
		</td>
		<td class="xl112" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >性别</td>
		<td class="xl111">
			<c:if test="${ sellerShareRoleList[1].gettDmPerson().getGender() == '0'}">
				男
			</c:if>
			<c:if test="${ sellerShareRoleList[1].gettDmPerson().getGender() == '1'}">
				女
			</c:if>
		</td>
		<td class="xl111">
			<c:if test="${ bailorRoleVO.gettDmPerson().getGender() == '0'}">
				男
			</c:if>
			<c:if test="${ bailorRoleVO.gettDmPerson().getGender() == '1'}">
				女
			</c:if>
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >联系电话</td>
		<td class="xl75">
			${buyyerRoleVO.gettDmPerson().getTelNo()}
		</td>
		<td class="xl111">
			${ sellerShareRoleList[0].gettDmPerson().getTelNo()}
		</td>
		<td class="xl112" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >联系电话</td>
		<td class="xl111">
			${ sellerShareRoleList[1].gettDmPerson().getTelNo()}
		</td>
		<td class="xl111">
			${bailorRoleVO.gettDmPerson().getTelNo()}
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >户籍</td>
		<td class="xl75">
			${buyyerRoleVO.gettDmPerson().register}
		</td>
		<td class="xl75">
			${ sellerShareRoleList[0].gettDmPerson().register}
		</td>
		<td class="xl75" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >户籍</td>
		<td class="xl75">
			${sellerShareRoleList[1].gettDmPerson().register}
		</td>
		<td class="xl75">
			${bailorRoleVO.gettDmPerson().register}
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl91" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >身份证/护照/营业执照号</td>
		<td class="xl76">
			${buyyerRoleVO.gettDmPerson().getCardNo()}
		</td>
		<td class="xl116">
			${sellerShareRoleList[0].gettDmPerson().getCardNo()}
		</td>
		<td class="xl117" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >身份证/护照/营业执照号</td>
		<td class="xl116">
			${sellerShareRoleList[1].gettDmPerson().getCardNo()}
		</td>
		<td class="xl116">
			${bailorRoleVO.gettDmPerson().getCardNo()}
		</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl125" height="40" rowspan="2" style='height:30.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >其他</td>
		<td class="xl126"  >客户来源</td>
		<td class="xl111">
			<aist:dict id="ownerSource" name="ownerSource" display="onlyLabel"
					   dictType="10018" dictCode="${dealDetailInfoVO.contractRemark.ownerSource}"
					   ligerui='none' tag="ParentSource"></aist:dict>	</td>
		<td class="xl127"></td>
		<td class="xl125" rowspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >其他</td>
		<td class="xl126"  >客户来源</td>
		<td class="xl128"></td>
		<td class="xl129"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl126"  ><span style='mso-spacerun:yes;'>&nbsp;</span>媒体</td>
		<td class="xl111"></td>
		<td class="xl130"></td>
		<td class="xl126"  ><span style='mso-spacerun:yes;'>&nbsp;</span>媒体</td>
		<td class="xl128"></td>
		<td class="xl131"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl132" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:1.0pt dashed windowtext;border-bottom-style:dot-dash;'  >购买目的</td>
		<td class="xl134" colspan="6" style='border-right:.5pt solid windowtext;border-bottom:1.0pt dashed windowtext;border-bottom-style:dot-dash;'>
			<aist:dict hasEmpty="true" id="custBuyPurpose" name="contractRemark.custBuyPurpose" dictCode="${dealDetailInfoVO.contractRemark.custBuyPurpose }" display="onlyLabel" dictType="50016"/>	</td>
		</td>
	</tr>
	<tr height="21.33" style='height:16.00pt;mso-height-source:userset;mso-height-alt:320;'>
		<td class="xl138" height="21.33" colspan="8" style='height:16.00pt;border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'  >
			<font
					class="font3">认购书中约定的楼款成交信息<span style='mso-spacerun: yes;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</span></font><font class="font2">付款类型：
			<u><aist:dict name="contractRemark.offerPaymentType" dictCode="${dealDetailInfoVO.contractRemark.offerPaymentType }"
						  id="offerPaymentType" display="onlyLabel" dictType="50021"
						  clazz="form-control input-two" /></u></font>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl141" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >区分</td>
		<td class="xl106"  >金额</td>
		<td class="xl106"  >支付日期</td>
		<td class="xl142" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >区分</td>
		<td class="xl106"  >金额</td>
		<td class="xl143"  >支付日期</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >
			①定金</td>
		<td class="xl76">${dealDetailInfoVO.contractRemark.offerDeposit }元</td>
		<td class="xl76"><fmt:formatDate value='${dealDetailInfoVO.contractRemark.offerDepositDate }' pattern='yyyy-MM-dd'/></td>
		<td class="xl106" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
		<td class="xl112" colspan="2" style='border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >
			②首期楼款</td>
		<td class="xl76">${dealDetailInfoVO.contractRemark.offerDownpay }元</td>
		<td class="xl76"><fmt:formatDate value='${dealDetailInfoVO.contractRemark.offerDownpayDate }' pattern='yyyy-MM-dd'/></td>
		<td class="xl106" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
		<td class="xl112" colspan="2" style='border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
	</tr>


	<c:if test="${dealDetailInfoVO.contractRemark.offerPaymentType=='50021003' }">
		<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl145" height="80"  style='height:60.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'
			rowspan="<fmt:formatNumber type="number" value="${fn:length(dealDetailInfoVO.getOfferPaymentsList()) /2} " maxFractionDigits="0"/>"
		>③部分楼款</td>
		<c:forEach  var="o" items="${dealDetailInfoVO.getOfferPaymentsList() }" varStatus="status" >
			<c:if test="${status.count%2 != 0}">
				<td class="xl75">${o.offerPaymentPeriod}期</td>
				<td class="xl75">${o.offerPaymentAmount }元</td>
				<td class="xl76"><fmt:formatDate value='${o.offerPaymentDate }' pattern='yyyy-MM-dd'/></td>
				<c:if test="${status.last}">
					<td  class="xl75" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'></td>
					<td class="xl75"></td>
					<td class="xl80"></td>
				</c:if>
			</c:if>
			<c:if test="${status.count%2 == 0}">
				<td class="xl75" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >
						${o.offerPaymentPeriod}期
				</td>
				<td class="xl75">${o.offerPaymentAmount }元</td>
				<td class="xl80"><fmt:formatDate value='${o.offerPaymentDate }' pattern='yyyy-MM-dd'/></td>
				<c:if test="${!status.last}">
					</tr><tr height="20" class="xl67"
					style='height: 15.00pt; mso-height-source: userset; mso-height-alt: 300;'>
				</c:if>
			</c:if>
		</c:forEach>
		</tr>
	</c:if>

	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl146" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:1.0pt solid windowtext;'  >
			④尾期楼款</td>
		<td class="xl99">${dealDetailInfoVO.contractRemark.offerRemaining }元</td>
		<td class="xl147"><fmt:formatDate value='${dealDetailInfoVO.contractRemark.offerRemainingDate }' pattern='yyyy-MM-dd'/></td>
		<td class="xl101" colspan="4" style='border-right:1.0pt solid windowtext;border-bottom:1.0pt solid windowtext;'></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl148" height="20" colspan="8" style='height:15.00pt;border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'  >四、个人业绩</td>
		<td class="xl68"></td>
		<td class="xl66"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" colspan="2" style='height:15.00pt;border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >序号</td>
		<td class="xl75"  >营业员</td>
		<td class="xl75"  >合作比例/%</td>
		<td class="xl75" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'  >个人业绩/元</td>
		<td class="xl75" colspan="2" style='border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'  >分行/组别</td>
	</tr>


	<c:forEach var="share" items="${sharesList}" varStatus="share_count">
		<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
			<td class="xl74" height="20" colspan="2"
				style='height: 15.00pt; border-right: .5pt solid windowtext; border-bottom: .5pt solid windowtext;'
				x:num>${ share_count.index + 1}</td>
			<td class="xl75">${share.getRoleName()}(${share.getRoleTypeName()})</td>
			<td class="xl75"><fmt:formatNumber type="number" value="${share.getSharePerc()*100}"   maxFractionDigits="0"/>%</td>
			<td class="xl75" colspan="2" style='border-right:.5pt solid windowtext;border-bottom:.5pt solid windowtext;'>	${share.getShareAmount()}元	</td>
			<td class="xl106" colspan="2"
				style='border-right: 1.0pt solid windowtext; border-bottom: .5pt solid windowtext;'>${share.getRoleOrgName()}</td>
		</tr>
	</c:forEach>

	<tr height="26.67" style='height:20.00pt;mso-height-source:userset;mso-height-alt:400;'>
		<td class="xl151" height="26.67" colspan="2" style='height:20.00pt;border-right:.5pt solid windowtext;border-bottom:none;'  >备注</td>
		<td class="xl86" colspan="6" style='border-right:1.0pt solid windowtext;border-bottom:none;'>${dealDetailInfoVO.contractRemark.remarks }</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl71" height="20" colspan="8" style='height:15.00pt;border-right:1.0pt solid windowtext;border-bottom:.5pt solid windowtext;'  >五、审核流程</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" style='height:15.00pt;'  >序号</td>
		<td class="xl75"  >审核人</td>
		<td class="xl75"  >签字（手写）</td>
		<td class="xl75"  >日期（手写）</td>
		<td class="xl75"  >序号</td>
		<td class="xl75"  >审核人</td>
		<td class="xl75"  >签字（手写）</td>
		<td class="xl79"  >日期（手写）</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" style='height:15.00pt;' x:num>1</td>
		<td class="xl75"  ><font class="font2">物业顾问</font></td>
		<td class="xl75"></td>
		<td class="xl75"></td>
		<td class="xl75" x:num>4</td>
		<td class="xl75"  >区域经理</td>
		<td class="xl75"></td>
		<td class="xl79"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl74" height="20" style='height:15.00pt;' x:num>2</td>
		<td class="xl75"  >门店经理</td>
		<td class="xl75"></td>
		<td class="xl75"></td>
		<td class="xl75" x:num>5</td>
		<td class="xl75"  >区域总监</td>
		<td class="xl75"></td>
		<td class="xl79"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl146" height="20" style='height:15.00pt;' x:num>3</td>
		<td class="xl100"  >文员</td>
		<td class="xl100"></td>
		<td class="xl100"></td>
		<td class="xl100" x:num>6</td>
		<td class="xl153"  >分公司业务管理部</td>
		<td class="xl100"></td>
		<td class="xl154"></td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl155" height="20" colspan="8" style='height:15.00pt;border-right:none;border-bottom:none;'  >填表说明：</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl66" height="20" style='height:15.00pt;' x:num>1</td>
		<td class="xl156" colspan="7" style='border-right:none;border-bottom:none;'  >在总成交信息栏中，成交日期指实际成交日期。</td>
	</tr>
	<tr height="19" style='height:14.25pt;'>
		<td class="xl66" height="19" style='height:14.25pt;' x:num>2</td>
		<td class="xl156" colspan="7" style='border-right:none;border-bottom:none;'  >在总成交信息栏中，产权地址按认购书中地址填写。</td>
	</tr>
	<tr height="20" style='height:15.00pt;mso-height-source:userset;mso-height-alt:300;'>
		<td class="xl66" height="20" style='height:15.00pt;' x:num>3</td>
		<td class="xl156" colspan="7" style='border-right:none;border-bottom:none;'  >在个人业绩栏中，合作比例总和应为100%，且个人业绩=公司业绩*对应比例。</td>
	</tr>
</table>
</body>
</html>


