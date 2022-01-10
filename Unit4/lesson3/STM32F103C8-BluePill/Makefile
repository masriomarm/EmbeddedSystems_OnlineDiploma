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
PrjName=unit4-les3-prj


exec: $(PrjName).bin
	@echo "... sucess!"

%.o: %.c
	$(CC)gcc -c  $(INCS) $(CPU) $(CFLAGS) $< -o $@

#app.o: app.c
#	$(CC)gcc -c  $(INCS) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as $(CPU) $(CFLAGS) $< -o $@

$(PrjName).elf: $(OBJ) $(AsOBJ)
	$(CC)ld -T linkerscript.ld $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=MapFile.map

$(PrjName).bin: $(PrjName).elf
	$(CC)objcopy -O binary $< $@

cleanall: 
	rm *.o *.bin *.elf *.asm *.map
cleanbin: 
	rm *.bin *.elf
