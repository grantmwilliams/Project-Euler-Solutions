program Combinations
implicit none

real(kind=16)  :: n, k, combins
real :: start, finish

write (*,*) 'Enter two integers n and k: '
read (*,*) n, k

call cpu_time(start)
!combins= (factorial(n) / (factorial(k) * factorial(n-k)))
combins = factorial(n)
call cpu_time(finish)
write (*,*) combins, finish - start

Contains
        
        
        
        
        !Factorial function
        !works up to and including 1754! not too shabby
        real(kind=16) function factorial(x)
        real(kind=16) :: x, fact=1

                
                !enter infinite do, exit when x gets to 0        
                do while (.true.)    
                        If (x==1 .or. x==0) exit
                        fact = fact * x
                        x = x-1
                end do

                factorial = fact
        end function 









end program
