/* See LICENSE file for copyright and license details. */

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048


static const char vol[]         = "[ `amixer sget Master | tail -n 1 | awk '{print $6;}'` = \"[on]\" ] \
                                   && printf \"`amixer sget Master | tail -n 1 | awk '{print $5;}' | grep -Po '\\[\\K[^%]*'`%%\" \
                                   || printf 'Off'";
 
static const struct arg args[] = {
	/* function format          argument */
    { run_command,  "  %s /",  vol},
	{ datetime,     "%s",       " %A, %d-%b / %I:%M %p " },
};
