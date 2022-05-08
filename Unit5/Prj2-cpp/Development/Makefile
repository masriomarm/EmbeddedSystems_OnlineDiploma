TARG = student-management

.PHONY : target cleanall cleanbuild run init rebuild
target:
	@echo "building ${TARG}"
	mkdir build/ || cd build/
	mkdir debug/ || cd debug/
	cd build/ && cmake -G "Unix Makefiles" ../
	cd build && make
	@echo "build successfull... Alhamdulillah"

rebuild:
	cd build && make

init:
	@echo "initializing directories, Besm Allah..."
	mkdir archive data docs inc src test build debug || touch README

cleanbuild:
	rm -r build

cleanall:
	rm -r debug build

run:
	cd debug/ && ./${TARG}
