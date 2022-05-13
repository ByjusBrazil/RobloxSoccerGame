--Inicia o objeto (frame) HUD na variável HUD
HUD = script.Parent
--Inicia o texto (a pontuação no HUD) Pontos_Azul na variável ptsAzul
ptsAzul = HUD.Pontos_Azul
--Inicia o texto (a pontuação no HUD) Pontos_Vermelho na variável ptsVermelho
ptsVermelho = HUD.Pontos_Vermelho

--Usamos a função while que permite executar
--o tempo todo o que estiver dentro dela
while true do
	--Pegamos a propriedade text dentro do objeto ptsAzul e atualizamos com a pontuação
	ptsAzul.Text = _G.pontosVermelho
	ptsVermelho.Text = _G.pontosAzul
	
	--Precisa colocar a função wait() para não dar timeout
	wait()
end


