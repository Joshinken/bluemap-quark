$wood_types = "acacia", "ancient", "azalea", "bamboo", "birch", "blossom", "cherry", "crimson", "dark_oak", "jungle", "mangrove", "nether_brick", "oak", "prismarine", "purpur", "warped"


(Get-Content -path ./spruce_chest.json) -replace "spruce", "spruce_trapped" | Set-Content "spruce_trapped_chest.json"
foreach ($wood_name in $wood_types) {(Get-Content -path ./spruce_chest.json) -replace "spruce", $wood_name | Set-Content "${wood_name}_chest.json"
	(Get-Content -path ./spruce_chest.json) -replace "spruce", "${wood_name}_trapped" | Set-Content "${wood_name}_trapped_chest.json"
	}