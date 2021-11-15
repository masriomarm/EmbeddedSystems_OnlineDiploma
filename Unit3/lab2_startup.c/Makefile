#Omar Elmasri
#output $@, input $<

CC=arm-none-eabi-
CFLAGS= -gdwarf-2
CPU= -mcpu=cortex-m3
INCS= -I .
LIBS=
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
AsSRC = $(wildcard *.s)
AsOBJ = $(AsSRC:.s=.o)
PrjName=cortexM3


exec: $(PrjName).bin
	@echo "... sucess!"

%.o: %.c
	$(CC)gcc.exe -c  $(INCS) $(CPU) $(CFLAGS) $< -o $@

#app.o: app.c
#	$(CC)gcc.exe -c  $(INCS) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as.exe $(CPU) $(CFLAGS) $< -o $@

$(PrjName).elf: $(OBJ) $(AsOBJ)
	$(CC)ld.exe -T linkerscript.ld $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=MapFile.map

$(PrjName).bin: $(PrjName).elf
	$(CC)objcopy.exe -O binary $< $@

cleanall: 
	rm *.o *.bin *.elf
cleanbin: 
	rm *.bin *.elf