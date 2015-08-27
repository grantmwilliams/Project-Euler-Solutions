program euler8
real :: start,finish

call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish-start

contains

    subroutine ans()
    implicit none
    integer, parameter :: limit = 1000          ! How big is data set
    integer, dimension(limit) :: bigAssNumber   ! Sets size of array to size of data set
    integer :: i=1, j, adjNum = 13              ! How many numbers would you like to check for largest product?
    integer*8 :: current, final = 1             ! Integer size was bumped up to kind = 8 to avoid overflows

    open(1,file='input')            ! Open text file so we can get data!
    read(1,'(50I1)') bigAssNumber   ! Read Data into variable called bigAssNumber


        do while (i < (limit - adjNum + 1)) ! Increments from 1 to limit - adjacent numbers - 1

            current = 1 ! Reset current value back to 1 as we start on new group of 13 integers

            do j = i, (i + adjNum - 1)

                if ((i + adjNum - 1) > limit)exit   ! Makes sure we wont go past bounds of the array

                if (bigAssNumber(j) == 0)then       ! If j is a 0 we break the for loop and set i = to the spot to the right of 0
                    i = (i + adjNum - 1)
                    exit
                end if

                current = current * bigAssNumber(j) ! Actual multiplication happens here

                if (current > final)then            ! Checks for bestness
                    final = current
                end if

                end do

            i = i + 1                               ! Increments across array

        end do

        print *, final                              ! Prints best answer

    close(1)                                        ! Closes the text file

    end subroutine ans
end program euler8