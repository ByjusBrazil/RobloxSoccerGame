--Inicia o objeto Bola na variável bola
bola = workspace.Bola
--Inicia o objeto Inicio_Bola na variavel inicio_bola
inicio_bola = workspace.Inicio_Bola

--Função que testa a colisão de um objeto
script.Parent.Touched:Connect(function(hit)
	--Testa se o objeto Bola está colidindo com o objeto desse escript(Gol_Azul)
	if hit.Name == "Bola" then
		--Imprime Gol
		print("Gol")
		--Reseta a posição da bola para o inico_bola
		bola.Position = inicio_bola.Position
		--Reseta a velocidade da bola
		bola.Velocity = Vector3.new(0,0,0)
		--Reseta a velocidade de rotação a bola
		bola.RotVelocity = Vector3.new(0,0,0)
		--Adiciona mais um (1) na variavel global pontosAzul
		_G.pontosAzul = _G.pontosAzul + 1
	end
end)

