<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓 예매 가이드</title>
<style type="text/css">
.goods-container {
   padding: 20px;
   border: 2px solid #003366;
   border-radius: 10px;
   background-color: #fff;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.hcontainer {
    display: grid;
    grid-template-columns: repeat(2, 1fr); /* 2열 레이아웃 */
    gap: 20px;
    grid-auto-flow: row;
    max-width: 1000px;
    margin-bottom: 50px;
    margin-top: 100px;
    margin-left: 25%;
}

.ticket-img {
    width: 100%;
    max-width: 350px;
    height: auto;
    padding: 5px;
    border: 0.5px solid #1e62a6;
    border-radius: 50px;
    margin-bottom: 30px;
}

.ticket-selection {
    display: flex;
    gap: 10px;
}
</style>
</head>
<body>
    <div class="inner-information-text">
        <div class="container">
            <h3>티켓 예매 가이드</h3>
            <ul class="breadcrumb">
                <li><a href="../main/main.do">Home</a></li>
                <li class="active">guide</li>
            </ul>
        </div>
    </div>
<div class="hcontainer">
    <div class="goods-container">
        <h3>티켓 예매 하기</h3>
        <h5>1. 원하는 좌석과 날짜를 선택합니다.</h5>
        <img class="text-center" src="../images/ticket/11.png" class="ticket-img">
    </div>
    
    <div class="goods-container">
        <h3>티켓 예매 하기</h3>
        <h5>2. 원하는 날짜를 선택합니다.</h5>
        <img class="text-center" src="../images/ticket/12.png" class="ticket-img">
    </div>

    <div class="goods-container">
        <h3>3. 선택한 티켓 내역을 확인합니다</h3>
        <h5>정상적인 예매 진행</h5>
        <div class="ticket-selection">
            <img class="text-center" src="../images/ticket/15.png" class="ticket-img">
        </div>
    </div>
    
    <div class="goods-container">
        <h3>*주의 사항</h3>
        <h5>이미 지난 경기는 예매 되지 않습니다.</h5>
        <div class="ticket-selection">
            <img class="text-center"  src="../images/ticket/14.png" class="ticket-img">
        </div>
    </div>

    <div class="goods-container">
        <h3>4. 좌석 선택</h3>
        <h5>원하는 좌석을 선택합니다. 예매 불가 좌석은 빨간색으로 표시되며, 선택할 수 없습니다.</h5>
        <img  class="text-center" src="../images/ticket/16.png" class="ticket-img">
    </div>

    <div class="goods-container">
        <h3>5. 결제</h3>
        <h5>5. 옆에 선택한 좌석의 정보를 확인 후 결제하면 예매가 완료됩니다.</h5>
        <img  class="text-center"  src="../images/ticket/17.png" class="ticket-img">
    </div>
</div>

<div class="container" style="justify-content: center; display:flex; margin-bottom:50px;">
    <div class="goods-container" style="max-width: 600px;">
        <h1>티켓 구매 시 주의사항</h1>
        <div>- 티켓은 암표 방지를 위해 ID 당 1좌석만 구매 가능합니다.</div>
        <div>- 좌석 선택 후, 좌석 재선택을 원하시면 처음부터 진행해야 합니다.</div>
        <div>- 티켓 예매 내역 확인은 마이페이지 내에서 가능합니다.</div>
    </div>
</div>

</body>
</html>