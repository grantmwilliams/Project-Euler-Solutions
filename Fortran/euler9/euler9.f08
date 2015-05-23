program euler9
real :: start,finish

call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish-start

contains

    subroutine ans()
    implicit none
    integer :: a, b, c, final
    do a = 1,500
        do b = a+1,500
            do c = b+1,500
                if (a*a + b*b == c*c && a+b+c == 1000)
                    final = a*b*c
                    break
                end if
            end do
        end do
    end do

    print*, final

    end subroutine ans
end program euler9
