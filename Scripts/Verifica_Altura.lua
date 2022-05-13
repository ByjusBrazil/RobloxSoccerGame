bola = workspace.Bola
inicio_bola = workspace.Inicio_Bola

while true do
	if bola.Position.Y <= 0 then
		bola.Position = inicio_bola.Position
		bola.Velocity = Vector3.new(0,0,0)
		bola.RotVelocity = Vector3.new(0,0,0)
	end
	wait(0.5)
end

