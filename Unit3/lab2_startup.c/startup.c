//startup.c

// Omar ELmasri

#include <stdint.h>
extern void main();

void Reset_Handler();
void Default_Handler()
{
	Reset_Handler();
}

void NMI_Handler()			__attribute__ ((weak, alias ("Default_Handler")))	;
void H_fault_Handler()		__attribute__ ((weak, alias ("Default_Handler")))	;
void MM_fault_Handler()		__attribute__ ((weak, alias ("Default_Handler")))	;
void Bus_fault_Handler()	__attribute__ ((weak, alias ("Default_Handler")))	;
void Usage_fault_Handler()	__attribute__ ((weak, alias ("Default_Handler")))	;

extern uint32_t _stacktop;
uint32_t vectors [] __attribute__((section(".vectors"))) = {

	(uint32_t)	&_stacktop,
	(uint32_t)	&Reset_Handler,
	(uint32_t)	&NMI_Handler,
	(uint32_t)	&H_fault_Handler,
	(uint32_t)	&MM_fault_Handler,
	(uint32_t)	&Bus_fault_Handler,
	(uint32_t)	&Usage_fault_Handler,
	
};

extern uint32_t _E_text  ;
extern uint32_t _E_data  ;
extern uint32_t _E_bss  ;
extern uint32_t _S_data  ;
extern uint32_t _S_bss  ;

void Reset_Handler()
{
	// copy data section from flash to ram
	uint32_t DATAsize = (uint8_t*) &_E_data - (uint8_t*) &_S_data ;
	uint8_t* P_src = (uint8_t*) &_E_text;
	uint8_t* P_dst = (uint8_t*) &_S_data;

	for (int i = 0; i < DATAsize; ++i)
	{
		*(P_dst++) = *(P_src++);
	}

	//bss section in ram
	uint32_t bsssize = (uint8_t*) &_E_bss - (uint8_t*) &_S_bss;
	P_dst = (uint8_t*) &_S_bss;

	for (int i = 0; i < bsssize; ++i)
	{
		*(P_dst++) = (uint8_t) 0;
	}

	// jump main()
	main();
}