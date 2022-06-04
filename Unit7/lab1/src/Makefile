#Omar Elmasri
#masri.omarm@gmail.com
#output $@, input $<

CC=arm-none-eabi-
CFLAGS=
CPU= -mcpu=cortex-m3
INCS= -I .
LIBS=
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
AsSRC = $(wildcard *.s)
AsOBJ = $(AsSRC:.s=.o)
BuildDir = build/
ObjDir = obj/
OutDir = output/
ASI = AssemblyInstructions
ALH = AllHeaders
SYMs = SymbolsTable
MAP = MapFile.map
LinkerFile = linkerscript_Cube.ld
PrjName=unit7_les1_lab1


exec: $(PrjName).bin
	@echo "... sucess!"

%.o: %.c
	$(CC)gcc -c  $(INCS) $(CPU) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as $(CPU) $< -o $@

$(PrjName).elf: $(OBJ) $(AsOBJ)
	mkdir $(BuildDir) || cd $(BuildDir)
	mv *.o -t $(BuildDir)
	cp $(LinkerFile) $(BuildDir)
	cd $(BuildDir) && $(CC)ld -T $(LinkerFile) $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=$(MAP)
	mkdir $(ObjDir) || cd $(ObjDir)
	cd $(BuildDir) && mv *.o -t ../$(ObjDir)

$(PrjName).bin: $(PrjName).elf
	cd $(BuildDir) && $(CC)objdump -D $< >> $(ASI)_$(PrjName)
	cd $(BuildDir) && $(CC)objdump -x $< >> $(ALH)_$(PrjName)
	cd $(BuildDir) && $(CC)nm $< >> $(SYMs)_$(PrjName)
	mkdir $(OutDir) || cd $(OutDir)
	mv $(BuildDir)$(ASI)_$(PrjName) $(BuildDir)$(ALH)_$(PrjName) $(BuildDir)$(SYMs)_$(PrjName) $(BuildDir)$(MAP) $(OutDir)
	cp  $(BuildDir)$(PrjName).elf $(OutDir)$(PrjName).elf
	cd $(OutDir) && cp  $(PrjName).elf ../$(PrjName).axf
#	cp -u latex/refman.pdf $(OutDir)
	cd $(BuildDir) && $(CC)objcopy -O ihex $< $(PrjName).hex
	cd $(BuildDir) && $(CC)objcopy -O binary $< $@

cleanall:
	rm -r $(BuildDir)
	rm -r $(OutDir)
	rm -r $(ObjDir)

cleanbin:
	cd $(BuildDir) && rm *.bin *.elf
