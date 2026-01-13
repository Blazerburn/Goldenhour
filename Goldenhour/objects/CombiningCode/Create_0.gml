instance_create_layer(0, 0, "Instances", TestConvo);

with(TestConvo) {
	text[0] = "You poke it";
	text[1] = "...";
	text[2] = "...";
	text[3] = "Nothing happens";
	text[4] = "Fuck";
	text[5] = "Maybe if you ask it nicely?";

	textCurrent = 0;
	textLast = 5;
	textWidth = 900;
	textX = 32;
	textY = 725;
	headshotTextWidth = 700;
	headshotTextX = 250;

	headshotTexts[0] = 0;
	headshotTexts[1] = 0;
	headshotTexts[2] = 1;
	headshotTexts[3] = 0;
	headshotTexts[4] = 1;
	headshotTexts[5] = 1;

	headshotHead[0] = 0;
	headshotHead[1] = 0;
	headshotHead[2] = 1;
	headshotHead[3] = 0;
	headshotHead[4] = 2;
	headshotHead[5] = 104;

	decisionsTrue = 1;
	decisions = TestDecisions;
}

exit;