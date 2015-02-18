program EULER1
implicit none

	real :: start,finish
	call cpu_time(start)
	print *, "Sum of multiples of 3 and 5 below 1,000: ", sum()
	call cpu_time(finish)

	print'("Elapsed time: ", F9.6, " seconds")', finish - start

contains


	!!Finds Sum of multiples of 3's and 5's below 1,000
	integer function sum()
		implicit none
		integer :: i, total
		total = 0
		do i = 1, 999
			if ((mod(i,3) == 0) .or. (mod(i,5) == 0)) then
				total = total + i
			endif
		enddo

		sum = total
	end function sum

end program EULER1
