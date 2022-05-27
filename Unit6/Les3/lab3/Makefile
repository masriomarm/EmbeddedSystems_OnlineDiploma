TARG = unit6_les3_lab1
CPU = -mcpu=cortex-m3
DEBUG_FLAG = -gdwarf-2 -g
.PHONY : desktop arm cleanall cleanbuild run init rebuild
desktop:
	@echo "building ${TARG} for Desktop"
	mkdir build/ || cd build/
	mkdir debug/ || cd debug/
	cd build/ && cmake -D NATIVE=1 -D ARM=0 -G "Unix Makefiles" ../
	cd build && make
	@echo "build successfull... Alhamdulillah"

arm:
	@echo "building ${TARG} for ARM"
	mkdir build/ || cd build/
	mkdir debug/ || cd debug/
	cd build/ && cmake -DARM=1 -D NATIVE=0 -D CPU=${CPU} -D DEBUG_FLAG="${DEBUG_FLAG}" -G "Unix Makefiles" ../
	cd build && make VERBOSE=1
	@echo "build successfull... Alhamdulillah"

rebuild:
	cd build && make

init:
	@echo "initializing directories, Besm Allah..."
	touch README
	mkdir archive data docs inc src test build debug

cleanbuild:
	rm -r build

cleanall:
	rm -r debug build

run:
	cd debug/ && ./${TARG}
