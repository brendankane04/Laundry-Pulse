#ifndef ESP82_DRV_H
#define ESP82_DRV_H 1

//List of AT commands being sent to the ESP8266 in this project
//The instruction set can be found at this here: https://docs.espressif.com/projects/esp-at/en/latest/AT_Command_Set/index.html
#define AT_CLIENT_MODE "AT+CWMODE=3"
#define AT_JOIN_NETWORK "AT+CWJAP=\"%s\",\"%s\""
#define AT_START_TCP "AT+CIPSTART=\"TCP\",\"10.0.0.104\",50"
#define AT_INIT_SEND "AT+CIPSEND=10"
#define AT_END_SEND "AT+CIPCLOSE"
#define AT_QUIT_NETWORK "AT+CWQAP"

void ESP01_init();
void ESP01_Set_EN(char status);
void ESP01_Send_CMD(char *cmd);
void ESP01_Send_CMD_Args(char *cmd, char**args, int num);
void ESP01_Loop_Until_OK();
void ESP01_Send_Data(char *mssg);

#endif
