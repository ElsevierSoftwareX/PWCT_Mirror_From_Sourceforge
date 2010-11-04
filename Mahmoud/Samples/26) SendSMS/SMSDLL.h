
#pragma once
typedef struct _sms_report_t_
{
	DWORD index;         
	char	Msg[256];     
	int	Success;      
	char    PhoneNo[32];   
} SMSReportStruct;

typedef struct _sms_msg_t_
{
	char	Msg[256];    
	char    PhoneNo[32];   
	char    ReceTime[32];    
} SMSMessageStruct;

int _stdcall SMSStartService(int nPort,DWORD BaudRate = 57600, int Parity=2, int DataBits = 8,int StopBits=0,int FlowControl=0,char* csca="card");


  	int _stdcall SMSStopSerice();

    
	DWORD _stdcall SMSSendMessage(char* Msg,char* PhoneNo);


	
	int _stdcall SMSReport(SMSReportStruct* rept); 



	
	int _stdcall SMSQuery(DWORD index);


	
	int _stdcall SMSGetNextMessage(SMSMessageStruct* Msg);


		int _stdcall SMSGetLastError(char* err);