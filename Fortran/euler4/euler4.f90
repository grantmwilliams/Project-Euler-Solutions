program newEuler4
implicit none

    real :: start, finish
    call cpu_time(start)
    call ans()
    call cpu_time(finish)

    print'("Elapsed: ", F9.6, " seconds")', finish - start


contains
    subroutine ans()
    implicit none
    integer :: i, j, p, answer = 0

    do i = 999, 100, -1
        do j = 990, 100, -11 ! 990 is the higest multiple of 11 under 990. 990 = 11 * floor(999/11)
            p = i * j
            if (p > answer .and. palindromic(p) == 1) then
                answer = p
            end if
        end do
    end do

    write(*,*) "The soultion to euler 4 is:", answer

end subroutine

    pure integer function palindromic(num)
    implicit none
    integer, intent(in) :: num
    integer :: n, rev
    n = num
    rev = 0
    do while (n > 0)
        rev = rev * 10 + mod(n,10)
        n = n/10
    end do

    if (rev == num) then
        palindromic = 1
    else
        palindromic = 0
    end if
    end function palindromic

end program newEuler4