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
  <p>Histórico de entregas</p>
  <a href="https://github.com/dmisabela/T2S-Isabela">Clique para ir ao Repositório do Github</a>

  <table class="w3-table w3-striped">
    <tr>
      <th>Versão</th>
      <th>Releases</th>
      <th>Descrição</th>
    </tr>
    <tr>
      <td>1.0</td>
      <td>Hello World</td>
      <td>Preparação do ambiente de desenvolvimento, criada a máquina virtual AWS com Windows
      Server e configuração do apache tomcat + ambiente java na VM</td>
    </tr>
    <tr>
      <td>1.1</td>
      <td>Banco de dados</td>
      <td>Criação de tabelas de container, movimentações e usuários</td>
    </tr>
    <tr>
      <td>1.2</td>
      <td>Conexão com Banco de Dados</td>
      <td>Conectando banco de dados utilizando JDBC</td>
    </tr>
    <tr>
      <td>1.3</td>
      <td>Exibindo listagem dos conteúdos</td>
      <td>Conectando banco de dados utilizando JDBC e exibindo listagem inserida
      diretamente no banco</td>
    </tr>
    <tr>
      <td>1.4</td>
      <td>Criação das páginas login e cadastro</td>
      <td>Conexão das interfaces de login e cadastro de usuário com banco de dados</td>
    </tr>
    <tr>
      <td>1.5</td>
      <td>Cadastro de Containers</td>
      <td>Cadastro de containers no banco de dados local e remoto</td>
    </tr>
    <tr>
      <td>1.6</td>
      <td>Autenticação</td>
      <td>Permissão de que o usuário só veja as páginas se estiver logado</td>
    </tr>
    <tr>
    <td>1.7</td>
      <td>CRUD - Containers</td>
      <td>Criação do CRUD de containers, permitindo inserir, deletar e editar</td>
    </tr>
  </table>
</div>

</body>
</html>