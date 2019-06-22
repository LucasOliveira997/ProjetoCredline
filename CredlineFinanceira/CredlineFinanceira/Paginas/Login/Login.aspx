<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CredlineFinanceira.Paginas.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet" />

    <style>
        #titulo{
            font-family: Arial;
        }
    </style>
    
</head>
<body>
    <div class="padding-all">
		<div class="header">
			<h1 id="titulo">CredLine Financeira</h1>
		</div>

		<div class="design-w3l">
			<div class="mail-form-agile">
				<form id="form1" runat="server">
					<br />
					<asp:Label ID="lblLogin" runat="server" Text="Login" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:Label>
					<asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
					<br />
                    <br />
                    <br />
					<asp:Label ID="lblSenha" runat="server" Text="Senha" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
                    <br /> <br /> <br />
                    <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
                    <br /> <br /> <br />
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
				</form>
			</div>
		  <div class="clear"> </div>
		</div>
		
		<div class="footer">
		<p>© 2017  Master  Login form. All Rights Reserved | Design by w3layouts</p>
		</div>
	</div>
</body>
</html>
