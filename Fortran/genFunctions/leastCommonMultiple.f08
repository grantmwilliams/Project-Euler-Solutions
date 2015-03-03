program leastCommonMultiple
implicit none
integer :: a,b, final

    write(*,*) 'Input 2 numbers to find their Least Common Multiple: '
    read (*,*) a,b

        final = lcm(a,b)
    print *, final

contains

    integer function lcm(a,b)
    integer:: a,b


        lcm = a*b / gcd(a,b)
    end function lcm

    integer function gcd(a,b)
    integer :: a,b,t
        do while (b/=0)
            t = b
            b = mod(a,b)
            a = t
        end do
        gcd = abs(a)
    end function gcd
end program leastCommonMultiple