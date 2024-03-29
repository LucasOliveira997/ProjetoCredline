﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcessoNegado.aspx.cs" Inherits="CredlineFinanceira.Paginas.Login.Erro.AcessoNegado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body {
  background-color: #332851;
}
body .base {
  width: 100%;
  height: 100vh;
  position: relative;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  flex-direction: column;
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
}
body .base h1 {
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
  font-family: 'Ubuntu', sans-serif;
  text-transform: uppercase;
  text-align: center;
  font-size: 30vw;
  display: block;
  margin: 0;
  color: #9ae1e2;
  position: relative;
  z-index: 0;
  animation: colors .4s ease-in-out forwards;
  animation-delay: 1.7s;
}
body .base h1:before {
  content: "U";
  position: absolute;
  top: -9%;
  right: 40%;
  transform: rotate(180deg);
  font-size: 15vw;
  color: #f6c667;
  z-index: -1;
  text-align: center;
  animation: lock .2s ease-in-out forwards;
  animation-delay: 1.5s;
}
body .base h2 {
  font-family: 'Cabin', sans-serif;
  color: #9ae1e2;
  font-size: 5vw;
  margin: 0;
  text-transform: uppercase;
  text-align: center;
  animation: colors .4s ease-in-out forwards;
  animation-delay: 2s;
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
}
body .base h5 {
  font-family: 'Cabin', sans-serif;
  color: #9ae1e2;
  font-size: 2vw;
  margin: 0;
  text-align: center;
  opacity: 0;
  animation: show 2s ease-in-out forwards;
  color: #ca3074;
  animation-delay: 3s;
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
}

@keyframes lock {
  50% {
    top: -4%;
  }
  100% {
    top: -6%;
  }
}
@keyframes colors {
  50% {
    transform: scale(1.1);
  }
  100% {
    color: #ca3074;
  }
}
@keyframes show {
  100% {
    opacity: 1;
  }
}
a:visited{
    color: white;
}
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="base io"> 
  <h1 class="io">403</h1>
  <h2>Acesso Negado</h2>
  <h5><a href="../Login.aspx">Voltar para a tela de login</a></h5>
</div>
    </form>
</body>
</html>
