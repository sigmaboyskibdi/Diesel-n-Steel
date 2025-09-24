for i,v in workspace:GetDescendants() do
	if v:IsA("Humanoid") then
		game.ReplicatedStorage.Remotes.WalkTo:InvokeServer(
			{
				Humanoid = v,
				Waypoints = {},
				IsThereAPath = false,
				Target = game.Players.LocalPlayer.Character.HumanoidRootPart
			}
		)
	end
end
