local a=5231339475

local function beli(itemnya)
	game:GetService("MarketplaceService"):PromptPurchase(game.Players.LocalPlayer,itemnya)	
end

script.Parent.FocusLost:Connect(function(enter)
	a=script.Parent.Text
	beli(a)

end)
