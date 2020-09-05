#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#include <WINSOCK2.H>
#define DEF_BUF_SIZE 1024  
#define IP_HEADER_SIZE 20  
#define ICMP_HEADER_SIZE 12    
typedef struct _ICMP_HEADER  
{  	
	BYTE bType;
	BYTE bCode;
	USHORT nCheckSum;
	USHORT nId;
	USHORT nSequence;
	UINT nTimeStamp;
}ICMP_HEADER, *PICMP_HEADER;    
USHORT GetCheckSum(LPBYTE lpBuff, DWORD dwSize)
{
	DWORD dwCheckSum = 0;
	USHORT* lpWord = (USHORT*)lpBuff;  
	while(dwSize > 1)  	
	{  		
		dwCheckSum += *lpWord++;
		dwSize -= 2;
	}  	
	if(dwSize ==1)  	
		dwCheckSum += *((LPBYTE)lpBuff);
	dwCheckSum = (dwCheckSum >> 16) + (dwCheckSum & 0XFFFF);
	return (USHORT)(~dwCheckSum);  
}    
BOOL Ping(char* lpDestIP, int *nRet_, int *nTime_)
{
	int nTime = 0;
	int ret = 0;
	char ICMPPack[ICMP_HEADER_SIZE] = {0};
	char szRcvBuff[DEF_BUF_SIZE] = {0};
	int i = 0;
	int nRet = 0;
	int nLen = 0;
	int nError = 0;
	SOCKET s;
	PICMP_HEADER pRcvHeader;
	SOCKADDR_IN SourceSockAddr;
	SOCKADDR_IN DestSockAddr;
	PICMP_HEADER pICMPHeader;
	DestSockAddr.sin_family = AF_INET;
	DestSockAddr.sin_addr.S_un.S_addr = inet_addr(lpDestIP);
	DestSockAddr.sin_port = htons(0);
	pICMPHeader = (PICMP_HEADER)ICMPPack;  
	pICMPHeader->bType = 8;
	pICMPHeader->bCode = 0;
	pICMPHeader->nId = (USHORT)GetCurrentProcessId();
	pICMPHeader->nCheckSum = 0;
	pICMPHeader->nTimeStamp = 0;
	s = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP);
	nTime = 1000;
	ret = setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, (char*)&nTime, sizeof(nTime));
	for(i=0; i <1; i++)  	
	{  		
		pICMPHeader->nCheckSum = 0;
		pICMPHeader->nSequence = i;
		pICMPHeader->nTimeStamp = GetTickCount();
		pICMPHeader->nCheckSum = GetCheckSum((LPBYTE)(ICMPPack), ICMP_HEADER_SIZE);
		nRet = sendto(s, ICMPPack, ICMP_HEADER_SIZE, 0, (SOCKADDR*)&DestSockAddr, sizeof(DestSockAddr)); 
		if(nRet == SOCKET_ERROR)
		{ 
			return FALSE;
		}  		
		nLen = sizeof(SOCKADDR_IN);
		if(nRet == SOCKET_ERROR)
		{
			return FALSE;
		}
		nRet = recvfrom(s, szRcvBuff,DEF_BUF_SIZE,0,(SOCKADDR*)&SourceSockAddr,&nLen);
		if(nRet == SOCKET_ERROR)
		{
			return FALSE;
		}
		pRcvHeader = (PICMP_HEADER)(szRcvBuff + IP_HEADER_SIZE);
		nTime = GetTickCount() - pRcvHeader->nTimeStamp;
		//printf("Return Message: %s bytes=%d time=%dms\n", inet_ntoa(SourceSockAddr.sin_addr), nRet, nTime);
		*nRet_ = nRet;
		*nTime_ = nTime;
	}
	return TRUE;
}