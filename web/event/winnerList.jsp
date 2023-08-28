<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>당첨자</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="../common.jsp"%>
    <script src=""></script>

    <style>

        .title {
            margin-top: 55px;
            text-align: center;
        }

        .box_wrap {
            position: relative;
            max-width: 1280px;
            min-height: 450px;
            margin: 50px auto 150px;
        }

        .event-list th:nth-child(1) {
            width: 12%;
        }

        .box_wrap {
            border-top: 2px solid #666;
        }

        .box_wrap thead th {
            padding: 15px 5px;
            border-bottom: 1px solid #d0cfd5;
            text-align: center;
        }


        .box_wrap tbody td {
            padding: 15px 5px;
            border-bottom: 1px solid #d0cfd5;
            text-align: center;
        }

        .item2 .al{
            text-decoration-line: none;
            color: black;
            display: block;
            text-overflow: ellipsis;
            max-height: 2.8em;
            line-height: 1.4em;
            word-wrap: break-word;
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            word-break: keep-all;
        }


        .item1, .item2, .item3 {
            font-size: 18px;
        }




        #tb1 { width:960px; margin:40px auto; }
        #tb1 th { background-color: #1D7151; color:#fff; }
        .item1 { width:10%; }
        .item2 { width:70%; }
        .item3 { width:10%; }
        #page-nation1 { width: 960px; margin:20px auto; }
    </style>

</head>
<body>
<div class="container-fluid">
    <%@ include file="../header.jsp"%>
    <h2 class="title">당첨자 발표</h2>
    <div class="container">
        <div class="box_wrap">
            <table class="winner-list" id="tb1">
                <thead>
                <tr>
                    <th class="item1">번호</th>
                    <th class="item2">제목</th>
                    <th class="item3">등록일</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="winner" items="${winnerList }" varStatus="status">
                    <tr>
                        <td class="item1">${status.count }</td>
                        <td class="item2">
                            <a href="${path }/Winner.do?no=${winner.no }" class="al">${winner.title }</a>
                        </td>
                        <td class="item3">${winner.resdate }</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
<script type="text/javascript" src="/js/bootstrap.js"></script>
</body>
</html>