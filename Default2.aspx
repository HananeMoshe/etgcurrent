﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body {
    font: 16px/1.4em 'PT Sans', sans-serif;;
    color: #1c1c1c;
}
 
p,
ul {
    margin: 0 0 1.5em;
}
 
ul {
    list-style: disc;
    padding: 0 0 0 20px;
}
 
a {
    color: #1D745A;
}
 
h1 {
 
}
 
h2 {
    font-family: 'PT Serif', serif;
    font-size: 32px;
    line-height: 1.4em;
    margin: 0 0 .4em;
    font-weight: bold;
}
 
/*layout*/
 
.wrapper {
}
 
article {
    border-bottom: 1px solid #d8d8d8;
    padding: 10px 20px 0 20px;
    margin: 10px 0;
}
 
/*header*/
 
header {
    background: #1c1c1c;
    padding: 15px 20px;
}
 
        /*shorter clearfix http://nicolasgallagher.com/micro-clearfix-hack/*/
        header:before,
        header:after {
            content:"";
            display:table;
        }
         
        header:after {
            clear:both;
        }
         
        /* For IE 6/7 (trigger hasLayout) */
        header {
            zoom:1;
        }
 
h1.logo a {
    color: #d8d8d8;
    text-decoration: none;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 20px;
    line-height: 22px;
    float: left;
    letter-spacing: 0.2em;
}
 
a.to_nav {
    float: right;
    color: #fff;
    background: #4e4e4e;
    text-decoration: none;
    padding: 0 10px;
    font-size: 12px;
    font-weight: bold;
    line-height: 22px;
    height: 22px;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
}
 
a.to_nav:hover,
a.to_nav:focus {
    color: #1c1c1c;
    background: #ccc;
}

/*navigation*/ 
 
#primary_nav ul {
    list-style: none;
    background: #1c1c1c;
    padding: 5px 0;
}
 
#primary_nav li a {
    display: block;
    padding: 0 20px;
    color: #fff;
    text-decoration: none;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    letter-spacing: 0.1em;
    line-height: 2em;
    height: 2em;
    border-bottom: 1px solid #383838;
}
 
#primary_nav li:last-child a {
    border-bottom: none;
}
 
#primary_nav li a:hover,
#primary_nav li a:focus {
    color: #1c1c1c;
    background: #ccc;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <nav id="primary_nav">
 
    <ul>
     
        <li><a href="#">Portfolio</a></li>
     
        <li><a href="#">About Me</a></li>
     
        <li><a href="#">Nonsense</a></li>
     
        <li><a href="#">Services</a></li>
     
        <li><a href="#">Contact</a></li>
     
        <li><a href="#home">Top</a></li>
     
    </ul>
 
</nav><!--end primary_nav-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>

