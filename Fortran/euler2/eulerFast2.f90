program eulerFast2
	implicit none

	real :: start, finish
	call cpu_time(start)
	call ans()
	call cpu_time(finish)

	print'("Elapsed: ", F9.6, " seconds")', finish - start
contains
	subroutine ans()
		implicit none
		integer, parameter :: N = 4000000
		integer :: fib1 = 2, fib2 = 3, fib3 = 5, fibAns = 0

		do while (fib1 <= N)
			fibAns = fibAns + fib1
			fib1 = fib2 + fib3
			fib2 = fib1 + fib3
			fib3 = fib1 + fib2
		enddo
		print *, fibAns
	end subroutine
end program

