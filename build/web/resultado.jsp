<%-- 
    Document   : resultado
    Created on : 27 de mai. de 2023, 11:04:54
    Author     : Felipe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Chalé Hotel</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
        <script>
            function validarFormulario() {
                var campo1 = document.getElementById("adultos").value;
                var campo2 = document.getElementById("criancas").value;

                if (campo1 === "" || campo2 === "") {
                    alert("Por favor, preencha todos os campos.");
                    return false; // Impede o envio do formulário
                }
                if (campo1 < 0 || campo2 <0){
                    alert("Os campos não podem conter valores negativos.");
                    return false;
                }
            }
         </script>
</head>
<body>

	<div id="container"><!-- Início container-->
	<header><!-- Início header-->
		<div id="logo">
			<h1><a href="index.html">Chalé Hotel</a></h1>
		</div>

		<nav><!-- Início nav-->
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="historia.html">História</a></li>
				<li><a href="contato.html">Contato</a></li>
				
			</ul>
		</nav><!-- Fim nav-->

	</header><!-- Fim header-->

	<div id="principal"><!-- Início principal-->

		<div id="conteudo"><!-- Início conteúdo-->
			<section id="capa">
				<img src="imagens/topo-imagem-principal2.png">				
			</section>

			<section id="postagem">
				<article id="conteudo">
				 <h2>Seja bem vindo ao Chalé Hotel</h2>
                                
                                <p style="font-size: 12pt">A pousada fica próxima de excelentes restaurantes, farmácias, mercados e a 900 metros da Praia do Tenório e Praia Grande.</p>

                                <p style="font-size: 12pt">Oferecemos um delicioso café da manhã e todos os quartos possuem ar condicionado, frigobar, roupa de cama e banho. Nosso estacionamento privativo é monitorado por câmeras de segurança, garantindo assim a segurança de seu veículo.</p>

                                <p style="font-size: 12pt">Durma com o som das ondas, e aproveite a tranquilidade que essa parte do Itaguá tem para oferecer. Esperamos por você!</p>
				</article>

				
				
			</section>

		</div><!-- Fim conteúdo-->

		<aside><!-- Início aside-->
			
                    <section id="visita">
				<h4>Faça uma visita</h4>
				<form class="formulario" action="resultado.jsp" method="post" onsubmit="return validarFormulario();">
					<fieldset>
						<label for="qtd">Quantidade de pessoas:</label>
                                                <input class="campo" style="width:30px;" type="number" id="adultos" name="valor"><br>
                                                
                                                <label for="qtd">Quantidade de crianças até 5 anos:</label>
						<input class="campo" style="width:30px;" type="number" id="criancas" name="meia">
					</fieldset>
                                        
					<input class="botao" type="submit" value="Calcular reserva"> 
				</form>
			</section>

			<section id="visita">
				
				<form class="formulario" action="resultado.jsp" method="post" onsubmit="return validarFormulario();">
					<fieldset>
                                        <%
                                                // Obter o valor enviado pelo formulário
                                                int valor = Integer.parseInt(request.getParameter("valor"));
                                                int meia = Integer.parseInt(request.getParameter("meia"));
                                                // Definir a constante
                                                int diaria = 150;
                                                int meiaD = 50;

                                                // Realizar a multiplicação
                                                int resultado = (valor * diaria)+ (meia*meiaD);
                                         %>

                                                <h4>Resultado:</h4>
                                                <p>O valor da sua reserva é: R$ <%= resultado %> reais</p>
                                                
					</fieldset>
                                        
					
				</form>
			</section>

			<section id="galeria">
				
				<a href="apartamentos.html">
					<img src="imagens/apartamento.jpg" height="200" width="400">
					<h3>Apartamento</h3>
					<p>Acomodações confortáveis e tranquilas. Todas as nossas suítes são equipadas com ar condicionado, frigobar, internet wi-fi, chuveiro elétrico, roupa de cama e banho.
                                           Pensamos em cada detalhe para que sua estada seja a mais agradável possível. </p>
				</a>

				<a href="restaurante.html">
					<img src="imagens/restaurante.jpg" height="200" width="400">
					<h3>Restaurante</h3>
						<p>Nosso restaurante oferece um cardápio cuidadosamente elaborado, com uma variedade de pratos que satisfazem todos os gostos e preferências.
                                                   Nossa equipe utiliza ingredientes frescos e selecionados para criar pratos inspirados, que combinam técnicas culinárias modernas com sabores tradicionais. </p>
				</a>

							
					
			</section>
		</aside><!-- Fim aside-->

	</div><!-- Fim principal-->

	</div><!-- Fim container-->

	<footer style="clear: both">
			<p>
				<a href="index.html">Home</a>
				<a href="historia.html">História</a>
				<a href="contato.html">Contato</a>
			</p>
			<p>
				 <h4> 2023 Chalé Hotel - Todos os direitos reservados.</h4>
			</p>
		</footer>
</body>
</html>