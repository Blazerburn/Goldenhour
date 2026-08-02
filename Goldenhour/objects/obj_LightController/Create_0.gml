masksurf = -1;
lightsurf = -1;
amount = 0;
alpha = 0
startingAlpha = alpha
if layer_exists("Shadows") {
shadowLayerA = layer_get_id("Shadows")
shadowMapA = layer_tilemap_get_id(shadowLayerA)
}
if layer_exists("ShadowsBelow") {
shadowLayerB = layer_get_id("ShadowsBelow")
shadowMapB = layer_tilemap_get_id(shadowLayerB)
}
if layer_exists("NoLight") {
NoLightLayer = layer_get_id("NoLight")
NoLightMap = layer_tilemap_get_id(NoLightLayer)
}