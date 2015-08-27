program euler5
implicit none

real :: start, finish
call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish - start

contains
    subroutine ans()
        integer :: inc = 0
        integer :: num = 20
        integer :: i
            do while (inc <18)
                do i = 20, 3, -1
                    if (mod(num,i)==0)then
                        inc = inc + 1
                    else
                        inc = 0
                        num = num + 20
                        exit
                    end if

                end do
            end do



        print *, num

    end subroutine ans
end program euler5