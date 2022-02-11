import crafttweaker.item.IItemStack;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.astralsorcery.LiquidInteraction;
import mods.thaumcraft.Infusion;
import mods.astralsorcery.Altar;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.StarlightInfusion;
import mods.appliedenergistics2.Grinder;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Utils;

print("==================== loading astral_sorcery.zs ====================");
##########################################################################################

val itemstoRemove =
[
	<minecraft:beacon>,
]
 as IItemStack[];

for item in itemstoRemove {
	recipes.remove(item);
}



//Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);
//StarDust
Grinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>, 4);
Grinder.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:blockcustomore:1>, 4, <astralsorcery:itemcraftingcomponent:2>, 1);


//<astralsorcery:blockinfusedwood>.addTooltip(format.aqua("Drop any log into liquid Starlight to create"));
<astralsorcery:itemcelestialcrystal>.addTooltip(format.aqua("Grows from a Celestal Crystal Cluster"));

//Wand with no starlight
recipes.addShaped(<astralsorcery:itemwand>, [[null, <astralsorcery:itemcraftingcomponent>, <arcanearchives:shaped_quartz>],[null, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent>], [<ore:stoneMarble>, null, null]]);


//mods.astralsorcery.Lightwell.addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex);

//Starmetal
LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, true);
LightTransmutation.addTransmutation(<contenttweaker:sub_block_holder_0:7>, <astralsorcery:blockcustomore:1>, 20);

//1000 max starlight for first tier altar
Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 950, 200, [

			<arcanearchives:containment_field>, <astralsorcery:blockblackmarble>, <arcanearchives:containment_field>,

			<astralsorcery:blockmarble:2>, <contenttweaker:activatedaspectusdawnstone>, <astralsorcery:blockmarble:2>,

			<astralsorcery:blockmarble:4>, <botania:storage>, <astralsorcery:blockmarble:4>]);

//2000 max starlight 2nd tier


<ore:littleLight>.add(<thaumictinkerer:energetic_nitor>);
<ore:littleLight>.add(<bloodmagic:sigil_blood_light>);
<ore:littleLight>.add(<embers:glimmer_lamp>);

Altar.addAttunementAltarRecipe("internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 1500, 300, [
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<chisel:energizedvoidstone:2>, <ore:littleLight>, <chisel:energizedvoidstone:2>,
			<astralsorcery:itemcraftingcomponent:2>, <chisel:energizedvoidstone:2>, <astralsorcery:itemcraftingcomponent:2>,
			<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>]);

Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 1900, 400, [
			<astralsorcery:itemcraftingcomponent>, null, <astralsorcery:itemcraftingcomponent>,
			<astralsorcery:blockmarble:2>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockmarble:2>,
			<moreplates:energetic_silver_plate>, <contenttweaker:starmetal_block>, <moreplates:energetic_silver_plate>,
			<embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>, <embers:focal_lens>]);

Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 3800, 500, [
			<actuallyadditions:item_crystal_empowered:5>, <contenttweaker:ingot_reinforced_starmetal>, <actuallyadditions:item_crystal_empowered:5>,
			<contenttweaker:ingot_reinforced_starmetal>, <astralsorcery:itemcelestialcrystal>, <contenttweaker:ingot_reinforced_starmetal>,
			<actuallyadditions:item_crystal_empowered:5>, <contenttweaker:ingot_reinforced_starmetal>, <actuallyadditions:item_crystal_empowered:5>,
			<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<cyclicmagic:crystallized_obsidian>, <cyclicmagic:crystallized_obsidian>,
			<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]);

//Altar.addTraitAltarRecipe(string recipeLocation, IItemStack output, int starlight, int craftTickTime, IIngredient[] inputs, @optional String iRequiredConstellationFocusName);
Altar.addTraitAltarRecipe("mm:shaped/internal/altar/beacon", <minecraft:beacon>, 5000, 400, [

	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<botania:manaresource:2>, <minecraft:nether_star>, <botania:manaresource:2>, 
	<botania:manaresource:2>, <botania:manaresource:2>, <botania:manaresource:2>,
	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>, <minecraft:obsidian>, <minecraft:obsidian>,
	<thermalfoundation:glass_alloy:6>, 	<thermalfoundation:glass_alloy:6>,	
	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>, 

	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>,
	<minecraft:obsidian>, <minecraft:obsidian>,

	<thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:6>,
	<thermalfoundation:glass_alloy:6>, <minecraft:obsidian>,

	//Outer Items, indices 25+

	<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>

]);

//illumination powder
Altar.addDiscoveryAltarRecipe("internal/altar/illuminationpowder", <astralsorcery:itemusabledust>*16, 250, 200, [

			null, <arcanearchives:radiant_dust>, null,
	<arcanearchives:radiant_dust>, <jaopca:item_dustaquamarine>, <arcanearchives:radiant_dust>,
			null, <arcanearchives:radiant_dust>, null]);

			
/*
Altar.addAttunementAltarRecipe("multiblockmadness:shaped/internal/altar/runealtar", <botania:runealtar>, 500, 300, [
			<arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>, <arcanearchives:quartz_sliver>,
			<botania:livingrock>, <botania:livingrock>, <botania:livingrock>,
			<botania:livingrock>, <astralsorcery:itemshiftingstar>, <botania:livingrock>,
			<botania:manaresource:23>, <botania:manaresource:23>, <bloodmagic:blood_rune>, <bloodmagic:blood_rune>]);
*/

//Illumination Powder
StarlightInfusion.addInfusion(<arcanearchives:radiant_dust>, <astralsorcery:itemusabledust>*8, false, 0.5, 200);

//Lens x2 recipe
StarlightInfusion.addInfusion(<botania:managlasspane>, <astralsorcery:itemcraftingcomponent:3>*2, false, 0.75, 200);

//Skystone
LightTransmutation.addTransmutation(<embers:ashen_stone>, <appliedenergistics2:sky_stone_block>, 5);

//LiquidInteraction.addInteraction(ILiquidStack liquidIn1, float chanceConsumption1, ILiquidStack liquidIn2, float chanceConsumption2, int weight, IItemStack output);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 89, <appliedenergistics2:sky_stone_block>);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 10, <appliedenergistics2:smooth_sky_stone_block>);
LiquidInteraction.addInteraction(<liquid:petrotheum> * 50, 0.5, <liquid:astralsorcery.liquidstarlight> * 200, 0.5, 1, <contenttweaker:starmetal_block>);


Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");

Infusion.registerRecipe("chalice", "", 
<astralsorcery:blockchalice>, 5, 
[<aspect:praecantatio>*150, <aspect:potentia>*100, <aspect:vinculum>*100, <aspect:vacuos>*50], 
<arcanearchives:radiant_tank>, 
[<astralsorcery:blockmarble:6>,<rockhounding_chemistry:alloy_parts:51>, <astralsorcery:blockmarble:6>, <actuallyadditions:item_crystal_empowered:1>,
<astralsorcery:blockmarble:6>,<rockhounding_chemistry:alloy_parts:51>, <astralsorcery:blockmarble:6>, <actuallyadditions:item_crystal_empowered:1>]);

//Stable Celestial Crystal
Lightwell.addLiquefaction(<contenttweaker:stable_celestial_crystal>, <liquid:astralsorcery.liquidstarlight>, 2, 0.6, 0x6603fc);

//Utils.getCrystalORIngredient(boolean hasToBeCelestial, boolean hasToBeAttuned);
//val attunedCrystal = Utils.getCrystalORIngredient(false, true);


/*work on this later
//Early Collectors
Altar.addAttunementAltarRecipe("internal/altar/collectorcrystal", <astralsorcery:blockcollectorcrystal>, 1500, 200, [

			<astralsorcery:itemcraftingcomponent:2>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent:2>,

			<botania:manaresource:23>, <astralsorcery:itemtunedrockcrystal>.marked("crystal"), <botania:manaresource:23>,

			<astralsorcery:itemcraftingcomponent:2>, <bloodmagic:slate:1>, <astralsorcery:itemcraftingcomponent:2>,

			<arcanearchives:shaped_quartz>, <arcanearchives:shaped_quartz>, <arcanearchives:shaped_quartz>, <arcanearchives:shaped_quartz>]
);*/

##########################################################################################
print("==================== end of astral_sorcery.zs ====================");