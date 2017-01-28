<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html/>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="pt-br">
<head>
 <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<c:url value="/css/main.css" var="jstlCss" />

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Tutorial</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
	</nav>


	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>Passo</th>
				<th>Descrição</th>
				<th>OBS:</th>
			</tr>

			<tr>
				<td>1.</td>
				<td><a href="http://start.spring.io" target="_blank">SPRING
						INITIALIZR</a></td>
				<td>Criar um projeto. Não usar a engine Thymeleaf</td>
			</tr>
			<tr>
				<td>2.</td>
				<td><a href="http://start.spring.io" target="_blank">SPRING
						INITIALIZR</a></td>
				<td>Selecionar: <br> Web ( Full-stack web development with
					Tomcat and Spring MVC) <br> DevTools (Spring Boot Development
					Tools)
				</td>
			</tr>
			<tr>
				<td>3.</td>
				<td></td>
				<td>Clique: Gerar, projeto e importe no Eclipse com a opção
					projeto Maven.</td>
			</tr>
			<tr>
				<td>4.</td>
				<td>Depois de importado o projeto.</td>
				<td>Crie uma hierarquia de pastas: webapp>WEB-INF>views dentro
					de: <br /> src>main<br /> A estrutura será:
					src>main>webapp>WEB-INF>views<br /> Dentro
				</td>
			</tr>
			<tr>
				<td>5.</td>
				<td>Configuração do properties</td>
				<td>Dentro do arquivo application.properties que está em:
					src>main>resources<br> Coloque a seguinte configuração: <br>
					spring.mvc.view.prefix: /WEB-INF/views/ <br>
					spring.mvc.view.suffix: .jsp <br> <br> welcome.message:
					Olá mundo <br>
				</td>
			</tr>
			<tr>
				<td>6.</td>
				<td>Na classe principal.(@SpringBootApplication)</td>
				<td>Extenda a classe de inicialização da servlet: <br>
					extends SpringBootServletInitializer <BR> Implemente o
					seguinte método:<br> @Override protected
					SpringApplicationBuilder configure(SpringApplicationBuilder
					application) { return
					application.sources(NomeDaMesmaClasseComAanotaçãoAcima.class); } <br>
					o importe é: <br> import
					org.springframework.boot.web.support.SpringBootServletInitializer;
				</td>
			</tr>
			<tr>
				<td>7.</td>
				<td>Pom xml</td>
				<td>No pom xml coloque: <br> <!-- Web with Tomcat + Embed -->
					<dependency> <groupId>org.springframework.boot</groupId>
					<artifactId>spring-boot-starter-tomcat</artifactId> <scope>provided</scope>
					</dependency> <!-- JSTL --> <dependency> <groupId>javax.servlet</groupId>
					<artifactId>jstl</artifactId> </dependency> <!-- Need this to compile JSP --> <dependency>
					<groupId>org.apache.tomcat.embed</groupId> <artifactId>tomcat-embed-jasper</artifactId>
					<scope>provided</scope> </dependency> <!-- Need this to compile JSP --> <dependency>
					<groupId>org.eclipse.jdt.core.compiler</groupId> <artifactId>ecj</artifactId>
					<version>4.6.1</version> <scope>provided</scope> </dependency>
				</td>
			</tr>
		</table>
	</div>

</body>

</html>
