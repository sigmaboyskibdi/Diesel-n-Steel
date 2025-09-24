for i,v in workspace:GetDescendants() do
    if v:IsA("Model") then
        game.ReplicatedStorage.Remotes.WalkTo:InvokeServer(
            {
                Humanoid = {
                    Animator = game.Players.LocalPlayer.Character:FindFirstChild(`Animator`,true);
                    Parent = v
                },
                Waypoints = {},
                IsThereAPath = false,
                Target = game.Players.LocalPlayer.Character.HumanoidRootPart
            }
        )
    end
end
