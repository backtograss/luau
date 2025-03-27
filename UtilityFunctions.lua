local UtilityFunctions = {}

-- Deep copy a table (recursively copies nested tables)
-- @param original The table to copy
-- @return A deep copy of the original table
function UtilityFunctions.deepCopy(original)
	local copy = {}
	for k, v in pairs(original) do
		if type(v) == "table" then
			copy[k] = UtilityFunctions.deepCopy(v)
		else
			copy[k] = v
		end
	end
	return copy
end

-- Calculate the Euclidean distance between two Vector3 points
-- @param point1 Vector3
-- @param point2 Vector3
-- @return The distance between the two points
function UtilityFunctions.calculateDistance(point1, point2)
	return (point1 - point2).Magnitude
end

-- Generate a random number within a specified range
-- @param min The minimum value (inclusive)
-- @param max The maximum value (inclusive)
-- @return A random number between min and max
function UtilityFunctions.randomInRange(min, max)
	return math.random(min, max)
end

-- Clamp a value between a minimum and maximum
-- @param value The value to clamp
-- @param min The minimum allowed value
-- @param max The maximum allowed value
-- @return The clamped value
function UtilityFunctions.clamp(value, min, max)
	return math.max(min, math.min(max, value))
end

-- Check if a value exists in a table
-- @param tbl The table to search
-- @param value The value to find
-- @return True if the value is found, false otherwise
function UtilityFunctions.tableContains(tbl, value)
	for _, v in pairs(tbl) do
		if v == value then
			return true
		end
	end
	return false
end

-- Merge two tables (shallow merge)
-- @param tbl1 The first table
-- @param tbl2 The second table to merge into tbl1
-- @return A new table with tbl1 and tbl2 merged
function UtilityFunctions.mergeTables(tbl1, tbl2)
	local merged = UtilityFunctions.deepCopy(tbl1)
	for k, v in pairs(tbl2) do
		merged[k] = v
	end
	return merged
end

-- Get a random element from a table
-- @param tbl The table to select from
-- @return A random element from the table
function UtilityFunctions.getRandomElement(tbl)
	local keys = {}
	for k in pairs(tbl) do
		table.insert(keys, k)
	end
	local randomKey = keys[math.random(1, #keys)]
	return tbl[randomKey]
end

return UtilityFunctions
