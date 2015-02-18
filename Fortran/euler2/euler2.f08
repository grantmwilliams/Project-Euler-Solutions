program EULER2
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
		integer :: fib, n1 = 1, n2 = 2, fibAns = 0

		do while (fib < N)
			fib = n1 + n2
				if(mod(fib,2) == 0) then
					 fibAns = fibAns + fib
				endif
			n2 = n1
			n1 = fib
		enddo
		print *, fibAns
	end subroutine
end program

