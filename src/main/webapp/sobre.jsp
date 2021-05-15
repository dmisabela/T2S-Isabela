<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Sobre</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <%@ include file="WEB-INF/lib/navbar.jspf"  %>
<body>

<div class="w3-container">
  <h2>Sobre o projeto</h2>
  <p>Hist�rico de entregas</p>
  <a href="https://github.com/dmisabela/T2S-Isabela">Clique para ir ao Reposit�rio do Github</a>

  <table class="w3-table w3-striped">
    <tr>
      <th>Vers�o</th>
      <th>Releases</th>
      <th>Descri��o</th>
    </tr>
    <tr>
      <td>1.0</td>
      <td>Hello World</td>
      <td>Prepara��o do ambiente de desenvolvimento, criada a m�quina virtual AWS com Windows
      Server e configura��o do apache tomcat + ambiente java na VM</td>
    </tr>
    <tr>
      <td>1.1</td>
      <td>Banco de dados</td>
      <td>Cria��o de tabelas de container, movimenta��es e usu�rios</td>
    </tr>
    <tr>
      <td>1.2</td>
      <td>Conex�o com Banco de Dados</td>
      <td>Conectando banco de dados utilizando JDBC</td>
    </tr>
    <tr>
      <td>1.3</td>
      <td>Exibindo listagem dos conte�dos</td>
      <td>Conectando banco de dados utilizando JDBC e exibindo listagem inserida
      diretamente no banco</td>
    </tr>
    <tr>
      <td>1.4</td>
      <td>Cria��o das p�ginas login e cadastro</td>
      <td>Conex�o das interfaces de login e cadastro de usu�rio com banco de dados</td>
    </tr>
    <tr>
      <td>1.5</td>
      <td>Cadastro de Containers</td>
      <td>Cadastro de containers no banco de dados local e remoto</td>
    </tr>
    <tr>
      <td>1.6</td>
      <td>Autentica��o</td>
      <td>Permiss�o de que o usu�rio s� veja as p�ginas se estiver logado</td>
    </tr>
    <tr>
    <td>1.7</td>
      <td>CRUD - Containers</td>
      <td>Cria��o do CRUD de containers, permitindo inserir, deletar e editar</td>
    </tr>
  </table>
</div>

</body>
</html>