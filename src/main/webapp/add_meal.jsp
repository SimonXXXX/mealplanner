
<%@ page import="unsw.comp4920.project.User" %>
<%--

  Created by IntelliJ IDEA.
  User: Darren
  Date: 04-Oct-17
  Time: 4:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add meal plan</title>
    <link type="text/css" rel="stylesheet" href="login_register.css">
</head>
<body>
<%
    User user = (User)request.getSession().getAttribute("currentUser");
    String meal = request.getParameter("meal_type");
    String date = request.getParameter("plan_date");
    out.println("User : " + user.getUsername());
    out.println("Meal is " + meal + " on date " +date);
%>

<div class="form-style-8">
    <form action="./home" method="get">
        <h2>Add to your meal plan</h2>
            <input type="text" name="add_food" placeholder="eg. Lasagne">
            <input type="hidden" name="meal_type" value="<%=meal%>">
            <input type="hidden" name="plan_date" value="<%=date%>">
            <input type="hidden" name="action" value="add_meal">
            <input type="submit" value="Add meal" />
        <br><br>
    </form>
    <a href="/home" class="button_sign_up">Back</a>

</div>

</body>
</html>
