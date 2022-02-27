#Omar Elmasri
#output $@, input $<

CC=arm-none-eabi-
CFLAGS= -g -gdwarf-2
CPU= -mcpu=cortex-m3
INCS= -I .
LIBS=
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
AsSRC = $(wildcard *.s)
AsOBJ = $(AsSRC:.s=.o)
BuildDir = build/
PrjName=PressureAlarm


exec: $(PrjName).bin
	@echo "... sucess!"

%.o: %.c
	$(CC)gcc -c  $(INCS) $(CPU) $(CFLAGS) $< -o $@

#app.o: app.c
#	$(CC)gcc -c  $(INCS) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as $(CPU) $(CFLAGS) $< -o $@

$(PrjName).elf: $(OBJ) $(AsOBJ)
	mkdir $(BuildDir)
	mv *.o -t $(BuildDir)
	cp linkerscript.ld $(BuildDir)
	cd $(BuildDir) && $(CC)ld -T linkerscript.ld $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=MapFile.map

$(PrjName).bin: $(PrjName).elf
	cd $(BuildDir) && $(CC)objcopy -O binary $< $@

cleanall:
	rm -r $(BuildDir)
	rm *.o *.bin *.elf *.asm *.map
cleanbin:
	cd $(BuildDir)
	rm *.bin *.elf
