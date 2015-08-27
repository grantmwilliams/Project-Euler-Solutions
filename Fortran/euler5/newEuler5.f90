program newEuler5
implicit none

real :: start, finish
call cpu_time(start)
call ans()
call cpu_time(finish)

print'("Elapsed: ", F9.6, " seconds")', finish - start

contains
    subroutine ans()
        implicit none
        integer :: i
        integer :: final = 1

            do i = 1,19
                final = lcm(final,i);
            end do

        print *, final
    end subroutine ans


    !Calculates the greatest Common Denominator
    function gcd(v,t)
        integer :: gcd
        integer, intent(in) :: v, t
        integer :: c, b, a

            b = t
            a = v
            do
                c = mod(a,b)
                if (c == 0) exit
                    a = b
                    b = c
            end do
            gcd = abs(b) !abs(b)
    end function gcd


    ! Calculates the Least Common Multiple
    integer function lcm(a,b)
        integer, intent(in) :: a, b

            lcm = ((a * b) / gcd(a,b))

    end function lcm

end program newEuler5