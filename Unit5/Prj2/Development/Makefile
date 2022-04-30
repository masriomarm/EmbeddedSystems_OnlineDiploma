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
	cd build/ && rm -r *

cleanall:
	rm -r debug
	cd build/ && rm -r *

run:
	cd debug/ && ./${TARG}
