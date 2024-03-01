#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, const char *argv[]){
	FILE *file;
	openlog(NULL, 0, LOG_USER);
	if(argc != 3){
		syslog(LOG_ERR, "command error");
		return 1;
	}	

	file = fopen(argv[1], "w");
	if(file == NULL){
		syslog(LOG_ERR, "invalid file path");
		return 1;
	}

	fprintf(file, "%s" ,argv[2]);
	syslog(LOG_DEBUG,"Writing %s to %s", argv[1], argv[2] );

	return 0;
}
