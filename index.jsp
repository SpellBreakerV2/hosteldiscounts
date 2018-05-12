<!DOCTYPE>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
    <head>
        <title>Full Tabs Page</title>
        <link rel="stylesheet" href="css/style.css" lang="text/css">
    </head>
    
    <body>
        <script src="js/functions.js" type="text/javascript"></script> 
        <sql:setDataSource var = "snapshot" driver = "oracle.jdbc.OracleDriver"
         url = "jdbc:oracle:thin:@localhost:1521:XE"
         user = "K3cgr"  password = "k3cgr"/>
        <sql:query dataSource = "${snapshot}" var = "hostels">
            select * from HOSTELI
        </sql:query>
        <sql:query dataSource = "${snapshot}" var = "rooms">
            select * from ROOMS
        </sql:query>

        <!--<button class="tabbutton" onclick="openPage('Home', this, 'green')" id="defaultOpen">Home</button>
        <button class="tabbutton" onclick="openPage('Search', this, '#ff3333')">Search</button>-->
        <div class="tabs">
            <div class="tab">
                <input type="radio" id="tab-1" name="tab-group-1" checked>
                <label for="tab-1">Home</label>

                <div class="content" id="Home">

                    <c:forEach var = "hostel" items = "${hostels.rows}">
                        <div class="elem">
                            <a></a>
                            <div class="desc">
                                <h6>Some super cool and affordable room</h6>
                                <c:forEach var = "room" items = "${rooms.rows}">
                                    <div class="room" id="room1">
                                        <img src="img/hotel-512.png" class="taken"/>
                                        <img src="img/hotel-512.png" class="taken"/>
                                        <img src="img/hotel-512.png" class="taken"/>
                                        <img src="img/hotel-512.png" class="taken"/>
                                        <img src="img/hotel-512.png" class="taken"/>
                                        <img src="img/hotel-512.png" class="available" />
                                        <img src="img/hotel-512.png" class="available" />
                                        <img src="img/hotel-512.png" class="available" />
                                        <div class="price">24.9$</div> 
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </c:forEach>

                    <!--
                    <div class="elem">
                    <a></a>
                    <div class="desc">
                        <h6>Some super cool and affordable room</h6>
                        <div class="room" id="room1">
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="available" />
                            <img src="img/hotel-512.png" class="available" />
                            <img src="img/hotel-512.png" class="available" />
                            <div class="price">24.9$</div> 
                        </div>
                        <div class="room">
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="available" />
                            <img src="img/hotel-512.png" class="available" />
                            <div class="price">24.9$</div> 
                        </div>
                        <div class="room">
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="taken"/>
                            <img src="img/hotel-512.png" class="available" />
                            <img src="img/hotel-512.png" class="available" />
                            <img src="img/hotel-512.png" class="available" />
                            <div class="price">24.9$</div> 
                        </div>
                    </div>
                </div>
                <div class="elem">
                    <a></a>
                </div>
                <div class="elem">
                    <a></a>
                </div>
                </div> -->
            </div>
            
            <div class="tab" id="tab2">
                <input type="radio" id="tab-2" name="tab-group-1">  
                <label for="tab-2">Search</label>
       
               <div class="content" id="Search">
                   
                </div> 
            </div>  
        </div>
    </body>
</html>