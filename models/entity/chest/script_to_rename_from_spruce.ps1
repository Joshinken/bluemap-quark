$wood_types = "acacia", "ancient", "azalea", "bamboo", "birch", "blossom", "cherry", "crimson", "dark_oak", "jungle", "mangrove", "nether_brick", "oak", "prismarine", "purpur", "warped"


(Get-Content -path ./spruce.json) -replace "normal", "trap" | Set-Content "spruce_trapped.json"
(Get-Content -path ./spruce_double_right.json) -replace "/right", "/trap_right" | Set-Content "spruce_trapped_double_right.json"
(Get-Content -path ./spruce_double_left.json) -replace "/left", "/trap_left" | Set-Content "spruce_trapped_double_left.json"
foreach ($wood_name in $wood_types) {(Get-Content -path ./spruce.json) -replace "spruce", $wood_name | Set-Content "${wood_name}.json"
	(Get-Content -path ./spruce_double_right.json) -replace "spruce", $wood_name | Set-Content "${wood_name}_double_right.json"
	(Get-Content -path ./spruce_double_left.json) -replace "spruce", $wood_name | Set-Content "${wood_name}_double_left.json" 
	(Get-Content -path ./spruce.json) -replace "spruce", $wood_name -replace "normal", "trap" | Set-Content "${wood_name}_trapped.json"
	(Get-Content -path ./spruce_double_right.json) -replace "spruce", $wood_name -replace "/right", "/trap_right" | Set-Content "${wood_name}_trapped_double_right.json"
	(Get-Content -path ./spruce_double_left.json) -replace "spruce", $wood_name -replace "/left", "/trap_left" | Set-Content "${wood_name}_trapped_double_left.json" 
	}