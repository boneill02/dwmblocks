//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/*{"",		"music",		0,	11},*/
	/*{"",		"pacpackages",	0,	8},*/
	/* {"",		"crypto",		0,	13}, */
	/*{"",		"torrent",		20,	7},*/
	{"",		"news",			0,	6},
	/*{"",		"moonphase",	18000,				5}, */
	/*{"",		"weather",		18000,				5},*/
	{"",		"mailbox",		300,				12},
	{"",		"volume",		0,					10},
	{"",		"battery",		5,					0},
	{"",		"internet",		5,					4},
	{"",		"clock",		60,					0},
	{"",		"corona US",	60,					2},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
