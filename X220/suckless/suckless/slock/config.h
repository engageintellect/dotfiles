/* user and group to drop privileges to */
static const char *user  = "r3dux";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#0E2630",     /* after initialization */
	[INPUT] =  "black",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* default message */
static const char * message = "ENTER PASSWORD TO RESUME";

/* text color */
static const char * text_color = "#ffffff";

/* text size (must be a valid size) */
static const char * font_name = "-xos4-terminus-bold-r-normal--32-320-72-72-c-160-iso10646-1"; 
