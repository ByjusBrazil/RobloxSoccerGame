--Inicia o objeto Bola na variável bola
bola = workspace.Bola
--Inicia o objeto Inicio_Bola na variavel inicio_bola
inicio_bola = workspace.Inicio_Bola

--Usamos a função while que permite executar
--o tempo todo o que estiver dentro dela
while true do
	--Se a posiçõa da bola menor ou igual a 0 
	if bola.Position.Y <= 0 then
		--Reseta a posição da bola para o inico_bola
		bola.Position = inicio_bola.Position
		--Reseta a velocidade da bola
		bola.Velocity = Vector3.new(0,0,0)
		--Reseta a velocidade de rotação a bola
		bola.RotVelocity = Vector3.new(0,0,0)
	end

	--Precisa colocar a função wait() para não dar timeout
	wait(0.5)
end

