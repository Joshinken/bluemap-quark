#$wood_types = "acacia", "ancient", "azalea", "bamboo", "birch", "blossom", "cherry", "crimson", "dark_oak", "jungle", "mangrove", "nether_brick", "oak", "prismarine", "purpur", "spruce", "warped"


New-Item -ItemType "Directory" -Path "./blockstates"
$wood_types = Get-ChildItem ./textures/entity/chest
foreach ($wood_name in $wood_types) {
	(Get-Content -path ./templates/blockstate_template.json) -replace "template", "${wood_name}/${wood_name}" | Set-Content "blockstates/${wood_name}_chest.json"
	(Get-Content -path ./templates/blockstate_template.json) -replace "template", "${wood_name}/${wood_name}_trapped" | Set-Content "blockstates/${wood_name}_trapped_chest.json"
	New-Item -ItemType "Directory" -Path "./models/entity/chest/${wood_name}"
	(Get-Content -path ./templates/model_template.json) -replace "template", $wood_name | Set-Content "./models/entity/chest/${wood_name}/${wood_name}.json"
	(Get-Content -path ./templates/model_template_double_right.json) -replace "template", $wood_name | Set-Content "./models/entity/chest/${wood_name}/${wood_name}_double_right.json"
	(Get-Content -path ./templates/model_template_double_left.json) -replace "template", $wood_name | Set-Content "./models/entity/chest/${wood_name}/${wood_name}_double_left.json" 
	(Get-Content -path ./templates/model_template.json) -replace "template", $wood_name -replace "normal", "trap" | Set-Content "./models/entity/chest/${wood_name}/${wood_name}_trapped.json"
	(Get-Content -path ./templates/model_template_double_right.json) -replace "template", $wood_name -replace "/right", "/trap_right" | Set-Content "./models/entity/chest/${wood_name}/${wood_name}_trapped_double_right.json"
	(Get-Content -path ./templates/model_template_double_left.json) -replace "template", $wood_name -replace "/left", "/trap_left" | Set-Content "./models/entity/chest/${wood_name}/${wood_name}_trapped_double_left.json" 
	}