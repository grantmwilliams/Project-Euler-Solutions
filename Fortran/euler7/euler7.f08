program euler7
implicit none
real :: start,finish

call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish-start

contains
    subroutine ans()
    integer :: limit = 10001
    integer :: prime = 3
    integer :: num = 2
    integer :: i
    logical :: ifPrime = .false.

    do while (num < limit)
        prime = prime + 2
        do i = 2, floor(sqrt(real(prime)))
            if (mod(prime,i)==0) then
                ifPrime = .false.
                exit
            else
                ifPrime = .true.
            end if
        end do
        if (ifPrime .eqv. .true.) then
            num = num+1;
        end if
    end do

    print *, prime



    end subroutine ans
end program euler7