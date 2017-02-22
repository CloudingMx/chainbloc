<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.chainbloc.HelloInfo" %>
<!-- [START_EXCLUDE] -->
<%--
  ~ Copyright (c) 2016 Google Inc. All Rights Reserved.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License"); you
  ~ may not use this file except in compliance with the License. You may
  ~ obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
  ~ implied. See the License for the specific language governing
  ~ permissions and limitations under the License.
  --%>
<!-- [END_EXCLUDE] -->
<html>
<head>
  <link href='//fonts.googleapis.com/css?family=Marmelad' rel='stylesheet' type='text/css'>
  <title>Encrypt BlocChain</title>
  <link rel="shortcut icon" href="images/Private-Cloud.png" type="image/x-icon">
  <script src="js/encrypt.js"></script>
  
  <style type = "text/css">
  body {
  background-image: url("images/ChainBloc_BG.jpg");
  background-size:cover;
  }
  
  p {
  background-color: white;
  background-color: rgba(255, 255, 255, .85);
  max-width: 300px;
  }
 </style>
  
  
</head>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Encrypt BlocChain</title>

    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .demo-long {
        margin-top: 50px;
        margin-bottom: 100px;
      }
    </style>
  </head>

  <body>

    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Encrypt BlocChain</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Default</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container">

      <p class="demo-long">
        
		<h1>Hello App Engine -- Flexible!</h1>
		<p>This is <%= HelloInfo.getInfo() %>.</p>
	  <table>
		<tr>
		  <td colspan="2" style="font-weight:bold;">Available Servlets:</td>
		</tr>
		<tr>
		  <td><a href='/hello'>The servlet</a></td>
		</tr>
	  </table>
	  
<div id="login_ctl" style="width: 800px; height: 150px">
	  <table style="width:100%; height: 100px">
			<tr>		
				<td width="2%"></td>	
				<td width="10%" align="left">
				Data:
				</td>
                                <td width="10%" align="right">
				
				<textarea name="Text1" id="data" cols="40" rows="5"></textarea>
				
				
                                <input type="hidden" name="userName" value="">
                                <input type="hidden" name="userType" value="">
				</td>
				<td width="78%"></td>				
			</tr>
            <tr>		
				<td width="2%"></td>	
				<td width="10%" align="left">
				Key:
                                </td>
                                <td width="10%" align="right">
				<input type="password" id="key" style="width: 180px;" />
				</td>
				<td width="78%"></td>				
			</tr>
			<tr>		
				<td width="2%"></td>	
				<td width="10%" align="left">
				Result:
                                </td>
                                <td width="10%" align="right">
				
				<textarea name="Text2" id="result" cols="40" rows="5"></textarea>
				</td>
				<td width="78%"></td>				
			</tr>
		</table>
		<table style="width:100%; height: 50px">
            <tr>		
				<td width="2%"></td>	
				<td width="10%" align="left">
                <input type="button" class="btn btn-primary" id="encrypt" value="encrypt">
                </td>
				<td width="10%" align="left">
                <input type="button" class="btn btn-primary" id="dencrypt" value="dencrypt">
                </td>
                <td width="10%" align="left">
				<input type="button" class="btn btn-primary" id="reset" value="reset"/>
				</td>
				<td width="50%"></td>				
			</tr>
		</table>
		
				</div>    

		
      </p>
      

    </div>

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <script src="../src/jquery.bootstrap-autohidingnavbar.js"></script>

    <script>
      $("div.navbar-fixed-top").autoHidingNavbar();
    </script>
	<script>
    var mydata_login="";
    var http_response="";
    $('#encrypt').click(function(event){
        
        var x = document.getElementById('data').value;
        var y = document.getElementById('key').value;
        if (x === "" ||y === "") {
            alert("User Data / Key  must be filled out");
            return false;
        }
        encrypt(0,x,y);
        document.getElementById('result').value=http_response;
        return;
    });
	$('#dencrypt').click(function(event){
        
        var x = document.getElementById('data').value;
        var y = document.getElementById('key').value;
        if (x === "" ||y === "") {
            alert("User Data / Key  must be filled out");
            return false;
        }
        encrypt(1,x,y);
        document.getElementById('result').value=http_response;
        return;
    }); 
        $('#reset').click(function(event){
               document.getElementById('data').value = "";
               document.getElementById('key').value = "";
			   document.getElementById('result').value = "";
               document.getElementById('data').focus();
	});  
	

</script>




</html>
