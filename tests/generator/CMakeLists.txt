set(tests random constant eye)

if(${WITH_BLAS} AND ${WITH_LAPACK})
	set(tests ${tests} spd)
endif()

if(${WITH_LAPACK})
	set(tests ${tests} orthogonal)
endif()

foreach(test ${tests})
    create_test(test.generator.${test} ${test})
endforeach()
