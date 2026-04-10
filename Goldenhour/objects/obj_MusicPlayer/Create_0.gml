// Info for the song we are currently playing/trying to play
songInstance = noone;
songAsset = noone;
songPosition = 0;
loopPosition = 0;
targetSongAsset = noone;
endFadeOutTime = 0;//how many frames to fade out the song currently playing
startFadeInTime = 0;//how many frams to fade in the new song
fadeInInstVol = 1;// the volume of songInstance

global.musicVolume = 1;

// For fading music out and stopping the songs that are no longer playing
fadeOutInstances = array_create(0); // The audio instances to fade out
fadeOutInstVol = array_create(0); // The volumes of each individual audio instance
fadeOutInstTime = array_create(0); // How fast the fadeout should happen


