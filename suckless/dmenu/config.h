//         _
//      __| |_ __ ___   ___ _ __  _   _
//     / _` | '_ ` _ \ / _ \ '_ \| | | |
//    | (_| | | | | | |  __/ | | | |_| |
//     \__,_|_| |_| |_|\___|_| |_|\__,_|
//    
//    
// BUILD: ThinkPad X220
// VERSION: 1.0   

static int topbar = 1;       // -b  option; if 0, dmenu appears at bottom
static int centered = 0;     // -c option; centers dmenu on screen 
static int min_width = 500;  // minimum width when centered
static int fuzzy = 1;        // -F  option; if 0, dmenu doesn't use fuzzy matching

// -fn option overrides fonts[0]; default X11 font or font set
static const char *fonts[] = {
	"Hack Nerd Font:pixelsize=12:antialias=true:autohint=true",
	// "mononoki Nerd Font:pixelsize=12:antialias=true:autohint=true"
};
static const char *prompt      = NULL;      // -p  option; prompt to the left of input field

static const char *colors[SchemeLast][2] = {
	                          
                                //   fg         bg    
	[SchemeNorm] =              { "#ffffff", "#000000" },
	[SchemeSel] =               { "#000000", "#ffffff" },
	[SchemeSelHighlight] =      { "#ffffff", "#000000" },
	[SchemeNormHighlight] =     { "#000000", "#ffffff" },
	[SchemeOut] =               { "#000000", "#ffffff" },
	[SchemeMid] =               { "#a0c899", "#011E1D" },

};

// -l and -g options; controls number of lines and columns in grid if > 0
static unsigned int lines      = 0;
static unsigned int lineheight = 25;  // -h option; minimum height of a menu line
static unsigned int columns    = 3;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

// Size of the window border
static unsigned int border_width = 0;  /* -bw option; to add border width */
