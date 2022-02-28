#Omar Elmasri
#masri.omarm@gmail.com
#output $@, input $<

CC=arm-none-eabi-
CFLAGS= -g -gdwarf-2
CPU= -mcpu=cortex-m3
INCS= -I /home/omar/documents/
LIBS=
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
AsSRC = $(wildcard *.s)
AsOBJ = $(AsSRC:.s=.o)
BuildDir = build/
OutDir = output/
ASI = AssemblyInstructions
ALH = AllHeaders
SYMs = SymbolsTable
LinkerFile = linkerscript.ld
PrjName=PressureAlarm


exec: $(PrjName).bin
	@echo "... sucess!"

%.o: %.c
	$(CC)gcc -c  $(INCS) $(CPU) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as $(CPU) $(CFLAGS) $< -o $@

$(PrjName).elf: $(OBJ) $(AsOBJ)
	mkdir $(BuildDir) || cd $(BuildDir)
	mv *.o -t $(BuildDir)
	cp $(LinkerFile) $(BuildDir)
	cd $(BuildDir) && $(CC)ld -T $(LinkerFile) $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=MapFile.map

$(PrjName).bin: $(PrjName).elf
	cd $(BuildDir) && $(CC)objdump -D $< >> $(ASI)_$(PrjName)
	cd $(BuildDir) && $(CC)objdump -x $< >> $(ALH)_$(PrjName)
	cd $(BuildDir) && $(CC)nm $< >> $(SYMs)_$(PrjName)
	-mkdir $(OutDir)
	cp $(BuildDir)$(ASI)_$(PrjName) $(BuildDir)$(ALH)_$(PrjName) $(BuildDir)$(SYMs)_$(PrjName) $(OutDir)
	cp -u latex/refman.pdf $(OutDir)
	cd $(BuildDir) && $(CC)objcopy -O binary $< $@

cleanall:
	rm -r $(BuildDir)
	rm -r $(OutDir)

cleanbin:
	cd $(BuildDir) && rm *.bin *.elf
