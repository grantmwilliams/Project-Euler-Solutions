program euler6
implicit none

real :: start,mid,finish,timeDiff

call cpu_time(start)
call mathMethod()
call cpu_time(mid)
call bruteForce()
call cpu_time(finish)

print'("Using Math Method: ", F9.6, " seconds")', mid-start
print'("Using Brute Force Method: ", F9.6, " seconds")', finish-start

timeDiff = (finish-start)/(mid-start)
print'("Math Method is: ", F9.6, " times faster")', timeDiff

contains

    ! Uses Math to Find Answer
    subroutine mathMethod()
    integer :: num = 100
    integer :: final

        final = (num*(num+1)*(3*num+2)*(num-1))/12


        print *, final
    end subroutine mathMethod

    ! Brute Forces Answer
    subroutine bruteForce()
    integer :: num = 100
    integer :: sqSum = 0
    integer :: sumSq = 0
    integer :: sDiff = 0
    integer :: i, j

    !Calc Squares Summed
        do i = 1,num
            sqSum = sqSum + i * i
        end do

    !Calc Sums Squared
        do j = 1,num
            sumSq = sumSq + j
        end do
        sumSq = sumSq * sumSq

    !Difference
        sDiff = abs(sumSq-sqSum)
        print *, sDiff
    end subroutine bruteForce
end program euler6