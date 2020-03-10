<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="CSS/bootstrap-3.4.1.css">
</head>
<style>
    th{
        text-align: center;

    }
</style>
<body>
<form action="regist" method="post">
    <div class="container">
        <table class="table table-bordered">     <caption align="left">
            <font color="red" size="1">*</font>
            <font size="1">표시 항목은 필수 입력사항입니다.</font>
            </caption>
            <tr>
                <th width="100" bgcolor="#efefef">아이디</th>
                <td>
                    <div class="form-inline">
                        <font color="red">&nbsp;*&nbsp;</font><input type="text" autofocus required
                            class="form-control" placeholder="ID를 입력하세요" name="id"> <input type="button" value="ID중복검사" class="btn btn-info"><br />
                        <font size="1">아이디는 영문, 숫자 조합으로 하셔야 합니다.[4자리이상 12자리이하] 아이디는 소문자로
                            저장됩니다.</font>
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">암호</th>
                <td>
                    <div class="form-inline">
                        <font color="red">&nbsp;*&nbsp;</font><input type="password" required
                            class="form-control" placeholder="PW를 입력하세요" name="pwd"><br />
                        <font size="1">비밀번호는
                            4자리 이상 12자리 이하로 입력해주세요.</font><br />
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">암호확인</th>
                <td>
                    <div class="form-inline">
                        <font color="red">&nbsp;*&nbsp;</font><input type="password" required
                            class="form-control" placeholder="PW를 확인하세요" name="pwdcheck"><br />
                        <font size="1">비밀번호 확인은
                            위 비밀번호와 동일하게 입력해주세요.</font><br />
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">이름</th>
                <td>
                    <div class="form-inline">
                        <font color="red">&nbsp;*&nbsp;</font><input type="text" required class="form-control" placeholder="이름을 입력하세요" name="name" >
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">대화명</th>
                <td>
                    <div class="form-inline">
                        &nbsp;&nbsp;&nbsp;<input type="text" class="form-control" name="nickname"> <input type="button"
                            value="중복검사" class="btn btn-info"><br />
                        <font size="1">대화명을 저장하지 않으시면 회원님의 이름으로 대화명이 지정됩니다. 대화명은 10글자 이내로 하셔야 합니다.</font>
                </div>
                </td>
            </tr>

            <tr>
                <th width="110" bgcolor="#efefef">주민등록번호</th>
                <td>
                    <div class="form-inline">
                        <font color="red">&nbsp;*&nbsp;</font><input type="text" maxlength="6" required size="6" class="form-control" placeholder="000000" name ="rrn1"> - <input
                        type="password" maxlength="7" required size="7" class="form-control" placeholder="0000000" name ="rrn2"><br />
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">생년월일</th>
                <td>
                    <div class="form-inline">
                        <font color="red">&nbsp;*&nbsp;</font>
                        <select class="form-control" name="year">
                            <option value="">년</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                        </select>
                        -
                        <select class="form-control" name="month">
                            <option value="">월</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        -
                        <select class="form-control" name="day">
                            <option value="">일</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">성별</th>
                <td>
                    <font color="red">&nbsp;*&nbsp;</font><input type="radio" name="gender" value="남자" required>남자
                    <input type="radio" name="gender" value="여자" required>여자
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">E-mail</th>
                <td>
                    <div class="form-inline">

                        <font color="red">&nbsp;*&nbsp;</font><input type="email" required class="form-control">
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">메일수신</th>
                <td>
                    <font color="red">&nbsp;*&nbsp;</font><input type="radio" name="reception" value="수신동의"
                        required>수신동의
                    <input type="radio" name="reception" value="수신거부" required>수신거부
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">우편번호</th>
                <td>
                    <div class="form-inline">

                        <font color="red">&nbsp;*&nbsp;</font><input type="text" maxlength="3" required size="2" class="form-control"> - <input
                        type="password" maxlength="3" required size="2" class="form-control"> <input type="button" value="검색" class="btn btn-info">
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">주소</th>
                <td>
                    <div class="form-inline">

                        <font color="red">&nbsp;*&nbsp;</font><input type="text" required class="form-control"><br /> &nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" required size="12" class="form-control">
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">전화번호</th>
                <td>
                    <div class="form-inline">&nbsp;&nbsp;&nbsp;
                        <input type="text" maxlength="4" required size="4" class="form-control"> - 
                        <input type="text" maxlength="4" required size="4" class="form-control"> - 
                        <input type="text" maxlength="4" required size="4" class="form-control">
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">핸 드 폰</th>
                <td>
                    <div class="form-inline">
                        
                        <font color="red">&nbsp;*&nbsp;</font><input type="text" maxlength="4" required size="4" class="form-control"> - <input
                        type="text" maxlength="4" required size="4" class="form-control"> - <input type="text" maxlength="4" required
                        size="4" class="form-control">
                    </div>
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">직업</th>
                <td>
                    <div class="form-inline">

                        &nbsp;&nbsp;&nbsp;<select name="job" class="form-control">
                            <option value="">선택하세요</option>
                            <option value="회사원">회사원</option>
                            <option value="공무원">공무원</option>
                            <option value="학생">학생</option>
                            <option value="주부">주부</option>
                            <option value="무직">무직</option>
                            <option value="기타">기타</option>
                        </select>
                    </div>
                    </td>
            </tr>
            <tr>
                <th width="100" bgcolor="#efefef">취미</th>
                <td>
                    <input type="checkbox" name="hobby" value="스포츠">스포츠 <input
                        type="checkbox" name="hobby" value="쇼핑">쇼핑 <input type="checkbox" name="hobby" value="인터넷">인터넷
                    <input type="checkbox" name="hobby" value="여행">여행 <input type="checkbox" name="hobby"
                        value="영화감상">영화감상
                    <input type="checkbox" name="hobby" value="음악감상">음악감상 <input type="checkbox" name="hobby"
                        value="쇼핑">쇼핑
                </td>
            </tr>

            <tr>
                <th width="100" bgcolor="#efefef">자기소개</th>
                <td>
                    <div class="form-inline">

                        &nbsp;&nbsp;&nbsp;
                        <textarea rows="4" cols="70" class="form-control"></textarea>
                    </div>
                </td>
            </tr>
 
            <tr> 
                <td colspan="2" align="center"><button type="submit" value="등록" class = "btn btn-info" >등록</button>&emsp; &emsp; 
                    <button type="reset" value="취소" class = "btn btn-danger">취소</button>
                    등록 버튼은 나중에 필수 입력사항 다 쓰면 활성화
                </td>
            </tr>



        </table>
    </div>
</form>
</body>

</html>