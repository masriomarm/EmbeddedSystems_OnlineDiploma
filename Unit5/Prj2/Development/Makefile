TARG = student-management

.PHONY : target cleanall cleanbuild run
target:
	@echo "building ${TARG}"
	mkdir build/ || cd build/
	mkdir debug/ || cd debug/
	cd build/ && cmake -G "Unix Makefiles" ../
	cd build && make
	@echo "build successfull... Alhamdulillah"

cleanbuild:
	rm -r build

cleanall:
	rm -r debug
	rm -r build

run:
	cd debug/ && ./${TARG}
