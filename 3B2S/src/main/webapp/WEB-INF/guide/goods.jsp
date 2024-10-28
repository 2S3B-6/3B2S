<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유니폼 구매 가이드</title>
<style type="text/css">
.goods-container {
   width: 100%;
   max-width: 1000px;
   margin: 0 auto;
   padding: 20px;
   border: 2px solid #003366; /* 칠판 같은 테두리 */
   border-radius: 10px;
   background-color: #fff;
   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
   margin-top: 50px;
   margin-left: 20px;
   margin-right: 20px;
   margin-bottom: 50px;
}
.container {
    display: flex;
    flex-direction: row; 
    width : auto;
}
.uniform-img {
    width: 400px;
    height: 400px;
    padding : 5px;
    border: 0.5px solid #777879;
    border-radius: 50px;
}
.uniform-selection {
    display: flex; /* Flexbox 사용 */
    flex-wrap: nowrap; /* 줄바꿈 하지 않도록 설정 */
    gap: 10px; /* 이미지 간 간격 */
}

.hcontainer{
   padding: 10px 40px;
}
</style>
</head>
<body>
    <div class="inner-information-text">
        <div class="hcontainer">
            <h3>유니폼 구매 가이드</h3>
            <ul class="breadcrumb">
                <li><a href="../main/main.do">Home</a></li>
                <li class="active">guide</li>
            </ul>
        </div>
    </div>
<div class="container">
<div class="goods-container">
<div>
<h3>유니폼과 마킹 구매하기</h3>
<div class="1">
<h5>1. 원하는 유니폼과 마킹을 선택합니다.</h5>
<div class="uniform-selection">
<img src="../images/uniform/3.png" class="uniform-img">
<img src="../images/uniform/5.png" class="uniform-img">
</div>
<h1>  </h1>
<h5>2. 선택한 상품을 장바구니에 넣어주세요.</h5>
<h5>3. 장바구니에 여러 상품이 있다면, 2S3B@gmail.com 으로 매칭할 상품을 말씀해주시면 됩니다.</h5>
</div>
</div>
</div>

<div class="goods-container">
<h3>마킹 할 유니폼 고르기</h3>
<h5>유니폼은 뒤에 마킹되지 않은 것으로 구매해주셔야 합니다.</h5>
<h5>1. 상품 이름에 선수 이름이 없는 유니폼 찾기</h5>
<h5>&nbsp;&nbsp;예시) [두산베어스] 레플리카 원정 유니폼</h5>
<h5>2. 상세페이지 내에서 상품 확인하기</h5>
<img src="../images/uniform/4.png" class="uniform-img">
</div>

<div class="goods-container">
<h3>마지막 단계</h3>
<h5>1. 이제 원하는 유니폼에 원하는 선수의 이름이 마킹이 가능합니다.</h5>
<h5>*만약 마킹하려는 유니폼이 기성품에 존재하다면, 
그 상품을 구매해주시면 되며 이는 따로 구매하시는 것과 차이가 없음을 알려드립니다.</h5>
<img src="../images/uniform/6.png" class="uniform-img">
</div>

</div>
<div class="container" style=" justify-content: center; display:flex;">
<div class="goods-container">
<h1>유니폼 마킹 시 주의사항</h1>
<div>
- 마킹, 자수가 포함된 유니폼은 제작 상품으로 결제 완료 후 주문 상태가 상품 준비 중, 배송 중 상태로 변경된 건은 교환, 환불 불가능하니 신중히 구매해 주시기 바랍니다.
</div>
<div>
- 마킹 유니폼과 같은 출고가 즉시 되지 않는 상품과 다른 상품을 함께 구매 시, 전상품 출고가 지연될 수 있습니다.
</div>
<div>
- 부착에 관해 다른 문의가 있으신 분은 페이지 하단 기재된 메일로 문의 주시기 바랍니다.
</div>
</div>
</div>

</body>
</html>