-- Script to remove all textures and decals from the Workspace

local function removeTexturesFrom(instance)
	for _, descendant in ipairs(instance:GetDescendants()) do
		if descendant:IsA("Texture") or descendant:IsA("Decal") or descendant:IsA("SurfaceAppearance") then
			descendant:Destroy()
		end
	end
end

-- Run once on load
removeTexturesFrom(workspace)

-- Optional: Remove textures from future parts added to the game
workspace.DescendantAdded:Connect(function(descendant)
	if descendant:IsA("Texture") or descendant:IsA("Decal") or descendant:IsA("SurfaceAppearance") then
		descendant:Destroy()
	end
end)
