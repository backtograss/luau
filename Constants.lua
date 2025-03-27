local Constants = {}

-- Areas in the game world
-- Each area has a name and a required level to access
Constants.AREAS = {
	{name = "Starter Area", requiredLevel = 1},
	{name = "Forest", requiredLevel = 5},
	{name = "Desert", requiredLevel = 10},
	{name = "Mountain", requiredLevel = 15},
	{name = "Castle", requiredLevel = 20}
}

-- Pet definitions
-- Each pet has a name (key), rarity, and basic stats like strength and speed
Constants.PETS = {
	["Dog"] = {rarity = "Common", strength = 10, speed = 5},
	["Cat"] = {rarity = "Uncommon", strength = 15, speed = 7},
	["Dragon"] = {rarity = "Rare", strength = 20, speed = 10},
	["Unicorn"] = {rarity = "Legendary", strength = 25, speed = 15}
}

-- List of currencies used in the game
Constants.CURRENCIES = {"Coins", "Event Tokens", "Diamonds"}

-- List of skills available for mastery
Constants.SKILLS = {"Rolling", "Fishing", "Thieving", "Mining"}

-- Function to calculate cumulative XP required to reach a specific skill level
-- Formula: XP to reach level n = sum of k*206 for k from 1 to n-1
function Constants.getCumulativeXPForLevel(level)
	if level <= 1 then
		return 0
	else
		return 206 * (level - 1) * level / 2
	end
end

-- Cost to unlock trading (in Coins)
Constants.TRADING_UNLOCK_COST = 100000

-- Maximum number of players per server
Constants.MAX_PLAYERS = 8

-- Base luck value for hatching pets (can be modified by boosts)
Constants.BASE_LUCK = 1.0

-- Booth skins for trading booths
-- Each skin has a name (key), model name, and rarity
Constants.BOOTH_SKINS = {
	["Default"] = {model = "DefaultBoothModel"},
	["Golden"] = {model = "GoldenBoothModel", rarity = "Rare"},
	["Cat"] = {model = "CatBoothModel", rarity = "Common"}
}

return Constants
