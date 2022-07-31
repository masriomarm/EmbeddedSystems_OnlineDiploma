TARG = avr-section2

.PHONY : target cleanall cleanbuild run init rebuild
target:
	@echo "building ${TARG}"
	mkdir build/ || cd build/
	mkdir debug/ || cd debug/
	cd build/ && cmake -DCMAKE_TOOLCHAIN_FILE=../TC-avr.cmake -G "Unix Makefiles" ../
	cd build && make -s
	@echo "build successfull... Alhamdulillah"

rebuild:
	cd build && make

init:
	@echo "initializing directories, Besm Allah..."
	mkdir -p archive data docs src src/inc/ test build debug && touch README.md && true

cleanbuild:
	rm -r build

cleanall:
	rm -r debug build

run:
	cd debug/ && ./${TARG}
