/* linker script CortexM3

Omar Elmasri
*/

MEMORY
{
flash(RX)	:	ORIGIN = 0x08000000, LENGTH = 128K
sram(RWX)	:	ORIGIN = 0x20000000, LENGTH = 20K
}

SECTIONS
{
	.text : ALIGN(4)
	{
			*(.vectors*)
			*(.text*)
			*(.rodata)
	}> flash

	.data : ALIGN(4)
	{
			*(.data)
	}> flash

	.bss : {
			*(.bss)
	}> sram
}
