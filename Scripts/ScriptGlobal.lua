--Inicia as variáveis de pontuação. 
--Para transformas em global e poder se acessa de todos scripts
--colocmos o _G. na frente da variável
_G.pontosVermelho = 0
_G.pontosAzul = 0

--Inicia a variável bola e o objeto inicio
bola = workspace.Bola
inicio = workspace.Inicio_Bola

--Quando o jogo iniciar, muda a posição da bola para a posição inicio
bola.Position = inicio.Position

