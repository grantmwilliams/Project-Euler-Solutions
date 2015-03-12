program euler31
implicit none
real :: start,finish

call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish-start

contains

    subroutine ans()
    implicit none
    integer :: i, j
    integer :: amount = 201
    integer, dimension(8) :: coins
    integer, dimension(201) :: ways = 0
        coins = [1, 2, 5, 10, 20, 50, 100, 200]
        ways(1) = 1

        do i = 1, size(coins)
            do j = coins(i)+1, amount
                ways(j) = ways(j) + ways(j-coins(i))
            end do
        end do

    print *, "£2 can be made in:",ways(201)," ways"

    end subroutine ans
end program euler31

