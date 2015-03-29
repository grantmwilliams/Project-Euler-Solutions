program euler34
implicit none

real :: start,finish

call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish-start

contains

subroutine ans()
implicit none

integer :: limit = 2540160
integer :: x, y, temp, i, j, final
integer, dimension(10) :: facHash
facHash = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
    do j = 3, limit

        x = j
        temp = 0
        do while (x > 0)

            y = mod(x,10)
            x = floor(real(x/10))
            temp = temp + facHash(y+1)
        end do

        if (j == temp) final = final + temp

    end do

write(*,*) final

end subroutine ans

end program euler34