/* user and group to drop privileges to */
static const char *user  = "r3dux";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	// [INIT] =   "#229CA1",     /* after initialization */
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "black",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "";

/* text color */
static const char * text_color = "#ffffff";

/* text size (must be a valid size) */
//static const char * font_name = "6x13"; 
//static const char * font_name = "-misc-fixed-medium-r-semicondensed--0-0-75-75-c-0-iso8859-1"; 
static const char * font_name = "-misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso8859-1"; 
//static const char * font_name = "-xos4-terminus-medium-r-normal--32-320-72-72-c-320-iso10646-1";
//static const char * font_name = "fixed"; 
