#Omar Elmasri
#masri.omarm@gmail.com
#output $@, input $<

PrjName=unit7_les1_section1
CC=avr-
CFLAGS=  -Os -D __ATmega32__
CPU= -mmcu=atmega32
HFLAG= -j .text -j .data
INCS=
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
#LinkerFile = linkerscript_Cube.ld
linkerflags= --start-group  --end-group --gc-sections -Og 

exec: $(PrjName).hex
	@echo "... sucess!"

%.o: %.c
	$(CC)gcc $(INCS) $(CPU) $(CFLAGS) $< -o $@

%.o: %.s
	$(CC)as $(CPU) $(CFLAGS) $< -o $@

$(PrjName).hex: $(OBJ) $(AsOBJ)
	$(CC)ld $(OBJ) $(AsOBJ) $(HFLAG) -o $(PrjName).elf
	$(CC)objcopy $(HFLAG) -O ihex $(PrjName).elf $(PrjName).hex
	$(CC)objdump -D $(PrjName).elf >> $(ASI)_$(PrjName).asm
	$(CC)objdump -x $< >> $(ALH)_$(PrjName)

#	mkdir $(BuildDir) || cd $(BuildDir)
#	mv *.o -t $(BuildDir)
#	cp $(LinkerFile) $(BuildDir)
#	$(CC)ld $(LIBS) $(OBJ) $(AsOBJ) $(HFLAG) $(linkerflags) -o $@ -Map=$(MAP)
#	mkdir $(ObjDir) || cd $(ObjDir)
#	cd $(BuildDir) && mv *.o -t ../$(ObjDir)

#$(PrjName).bin: $(PrjName).elf
#	cd $(BuildDir) && $(CC)objdump -D $< >> $(ASI)_$(PrjName).asm
#	cd $(BuildDir) && $(CC)objdump -x $< >> $(ALH)_$(PrjName)
#	cd $(BuildDir) && $(CC)nm $< >> $(SYMs)_$(PrjName)
#	mkdir $(OutDir) || cd $(OutDir)
#	mv $(BuildDir)$(ASI)_$(PrjName).asm  $(BuildDir)$(ALH)_$(PrjName) $(BuildDir)$(SYMs)_$(PrjName) $(BuildDir)$(MAP) -t $(OutDir)
#	cp  $(BuildDir)$(PrjName).elf $(OutDir)$(PrjName).elf
#	cd $(OutDir) && cp  $(PrjName).elf ../$(PrjName).axf
#	cp -u latex/refman.pdf $(OuDir)
#	cd $(BuildDir) && $(CC)objcopy $(HFLAG) -O ihex $< $(PrjName).hex
#	cd $(BuildDir) && $(CC)objcopy $(HFLAG) -O binary $< $@

cleanall:
	rm -r $(BuildDir)
	rm -r $(OutDir)
	rm -r $(ObjDir)

cleanbin:
	cd $(BuildDir) && rm *.bin *.elf
