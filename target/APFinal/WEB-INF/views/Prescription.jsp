﻿<%@ page import="com.clinic.models.Prescriptiondetails" %>

<%
    Prescriptiondetails temp = (Prescriptiondetails) request.getAttribute("prescription");
%>
<!DOCTYPE html>
<html>
<head>
    <link href="~/Cont/prescription.css" rel="stylesheet" />
    <style>

        body {
            font-family: 'Source Sans Pro', sans-serif;
            margin: 0;
        }
        body .main-pic {
            background-position: center;
            background-size: cover;
            background-repeat:no-repeat;
            width:100%;
            height:99%;
            position:absolute;
            filter: blur(4px);
        }

        button {
            border-radius: 40px;
            background-color: #0795ff;
            color: #FFFFFF;
            outline: none;
            font-size: 24px;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
            cursor: pointer;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
            padding: 12px 80px;
            margin-left: 25%;
            margin-right: 75%;
            margin-top:50%;
        }

        button:active {
            transform: scale(0.95);
        }

        button:focus {
            outline: none;
        }

        button.ghost {
            background-color: transparent;
            border-color: #FFFFFF;
        }

        button:hover {
            transition: 0.3s ease-in-out;
            background: #14d897;
        }




        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
            position: relative;
            overflow: hidden;
            width: 60%;
            max-width: 100%;
            min-height: 620px;
            top: 50px;
            margin-left: 20%;
            margin-right: 20%;
            margin-bottom: 100px;
            z-index:99;
        }
        .container h1{
            font-size:28px;
            font-weight:500;
            text-align:center;
            margin-right:20%;
        }

        .l1{
            height:2px;
            margin-bottom:10px;
        }
        .pname {
            margin-left: 10%;
            position: absolute;
        }
        label{
            font-size:20px;
            font-weight:600;
            margin-bottom:-1%;
        }
        .dname {
            position:absolute;
            margin-left: 50%;
        }

        .age {
            margin-top: 7%;
            position: absolute;
            margin-left: 10%;
        }
        .gender {
            margin-top: 7%;
            position: absolute;
            margin-left: 50%;

        }

        .l2{
            margin-top:15%;
            margin-left:10%;
            width:65%;
            height:3px;
            border-radius:50%;
            background-color:rgba(0,0,0,0.5);
            position:absolute;
        }

        .tests{
            margin-top: 17%;
            position: absolute;
            margin-left: 50%;
        }
        .tests textarea {
            background-color: #eee;
            border: thin;
            border-radius: 5px;
            box-shadow: 0 2px 0 2px rgba(0,0,0,0.22);
            margin: 10px 0;
            width: 250px;
            height: 120px;
            font-size: 18px;
            resize: none;
        }

        .meds{
            margin-top: 17%;
            position: absolute;
            margin-left: 10%;
        }
        .meds textarea {
            background-color: #eee;
            border: thin;
            border-radius: 5px;
            box-shadow: 0 2px 0 2px rgba(0,0,0,0.22);
            margin: 10px 0;
            width: 250px;
            height:240px;
            resize:none;
            font-size:18px;
        }
        textarea:focus {
            box-shadow: 0 0 5px rgb(45, 103, 191);
            background-color: #ebf0fd;
            outline: none;
        }

        .disease {
            margin-top: 38%;
            position: absolute;
            margin-left: 50%;
        }


        .disease input{
            background-color: #eee;
            border: thin;
            border-radius: 5px;
            box-shadow: 0 2px 0 2px rgba(0,0,0,0.22);
            margin: 10px 0;
            width: 250px;
            height: 50px;
            font-size: 18px;
        }
        input:focus {
            box-shadow: 0 0 5px rgb(45, 103, 191);
            background-color: #ebf0fd;
            outline: none;
        }

        .form-container {

        }

        .reg-container {
            z-index: 2;
        }

        .overlay-container {
            position: absolute;
            top: 0;
            left: 80%;
            width: 20%;
            height: 100%;
            overflow: hidden;
            z-index: 100;
        }

        .overlay {
            background: linear-gradient(to right, #0795ff,#30FFB7);
            color: #FFFFFF;
            position: relative;
            left: -100%;
            height: 100%;
            width: 200%;
        }

        .overlay img {
            height: 80px;
            width: 350px;
            transform: rotate(90deg);
            float: right;
            margin-right: -20%;
            margin-top: 70%;
            opacity:0.4;
        }
        .error-message {
            color: #ee3939;
            display: inline-block;
            border-color: #ff0000;
        }

    </style>

</head>
<body>
    <img class="main-pic" src="${pageContext.request.contextPath}/resources/imgs/wp2469685.jpg" />
    <div class="container" id="container">
        <h1>Appointment Prescription</h1>
        <hr class="l1" />
        <div class="form-container reg-container">
            <form method="post" action="AddPrescription">
                <div class="pname">
                    <label>Patient Name :</label>
                    <text><%=temp.patient_name%></text>
                </div>
                <div class="dname">
                    <label>Doctor Name :</label>
                    <text><%=temp.doctor_name%></text>
                </div>
                <div class="age">
                    <label>Age :</label>
                    <text><%=temp.patient_age%></text>
                </div>
                <div class="gender">
                    <label>Gender :</label>
                    <text><%=temp.patient_gender%></text>
                </div>
                <hr class="l2" />
                <div class="meds">
                    <label>Medicines Prescribed</label><br />
                    <textarea placeholder="Medicine,quantity     Medicine,quantity        ...." id="med_box" name="med_box"></textarea>
                </div>
                <div class="disease">
                    <label>Disease Diagnosed</label><br />
                    <input type="text" placeholder="Disease" id="disease_box" name="disease_box" required />
                </div>
                <div class="tests">
                    <label>Tests Prescribed</label><br />
                    <textarea placeholder="Test.....           Test....." id="test_box" name="test_box"></textarea>
                </div>

                <button type="submit" id="pres_btn">Submit</button>
            </form>

        </div>
        <div class="overlay-container">
            <div class="overlay">
                <img src="${pageContext.request.contextPath}/resources/imgs/logo black.png" />
            </div>
        </div>
    </div>

</body>
</html>