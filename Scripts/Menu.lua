--Inicia o objeto (frame) menu na variável Menu
Menu = script.Parent
--Inicia o botão jogar na variável BtJogar
BtJogar = Menu.Jogar
--Inicia o objeto (frame) HUD na variável HUD
HUD = Menu.Parent.HUD

--Deixa o menu visível quando o jogo iniciar
Menu.Visible = true
--Deixa o HUD invisível quando o jogo iniciar
HUD.Visible = false

--Criamos uma função que deixa o HUD visível e o menu invisível
function jogar()
	Menu.Visible = false
	HUD.Visible = true
end

--Chama a função jogar() quando clicamos no botão jogar (BtJogar)
BtJogar.MouseButton1Click:Connect(jogar)

