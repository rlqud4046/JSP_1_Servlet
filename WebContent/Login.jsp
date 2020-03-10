<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>

    <div align="center">
        <h2>회원 로그인</h2>
        <form action="Login" method="post">
            <table border="1" cellspacing="0">
                <tr>
                    <th>아이디</th>
                    <td><input type="text" name="id" required="required"></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="pwd" required="required"></td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td><input type="text" name="name" required="required"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="로그인">&ensp;
                        <input type="reset" value="취소">
                    </td>
                </tr>



            </table>

        </form>

    </div>

</body>

</html>