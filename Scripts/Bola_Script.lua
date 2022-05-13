--Não alterar nada, apenas onde for permitido
local Services = {
	Players = game:GetService("Players"),
	Debris = game:GetService("Debris")

}
local Settings = {
	--Tempo de espera para poder chutar novamente. Pode alterar o valor.
	Kick_Cooldown = 1,
	--Força do chute. Pode alterar o valor.
	Kick_Force = 30
}
local Ball = script.Parent
local IgnoreTable = {}

Ball.Touched:Connect(function(Part)
	local Character = Part.Parent
	if not Character then
		return
	end
	local Player = Services.Players:GetPlayerFromCharacter(Character)
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	local Root = Character:FindFirstChild("HumanoidRootPart")
	if not Player or not Humanoid or Humanoid.Health <= 0 or not Root or table.find(IgnoreTable, Player) then
		return
	end
	table.insert(IgnoreTable, Player)
	delay(Settings.Kick_Cooldown, function()
		if not Player then
			return
		end
		local Position = table.find(IgnoreTable, Player)
		if not Position then
			return
		end
		table.remove(IgnoreTable, Position)
	end)
	local Direction = CFrame.lookAt(Root.Position, Ball.Position).LookVector
	if Direction.Magnitude < 0.001 then
		return
	end
	local Velocity = Instance.new("BodyVelocity")
	Velocity.Parent = Ball
	Velocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
	Velocity.Velocity = (Direction.Unit * Settings.Kick_Force) + Vector3.new(0, Settings.Kick_Force /1.05, 0)
	Services.Debris:AddItem(Velocity, 0.2)
end)