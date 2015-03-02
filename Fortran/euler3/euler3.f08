program euler3
implicit none

real :: start,finish

call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish-start

contains

subroutine ans()
    implicit none
    integer(kind=8) :: factor, lastFactor
    integer(kind=8) :: n = 600851475143_8
    real maxFactor

    if (mod(n,2)==0) then
        lastFactor = 2
        n = n/2
            do while (mod(n,2)==0)
                n = n/2
            end do
    else
        lastFactor = 1
    end if

    factor = 3
    maxFactor = sqrt(real(n))

    do while( n>1 .and. factor <= maxFactor)
        if (mod(n,factor)==0) then
            n = n/factor
            lastFactor = factor
            do while (mod(n,factor)==0)
                n = n/factor
            end do
        end if
        factor = factor + 2
    end do

    if (n == 1) then
        write (*,*) lastFactor
    else
        write (*,*) n
    end if
end subroutine
end program euler3