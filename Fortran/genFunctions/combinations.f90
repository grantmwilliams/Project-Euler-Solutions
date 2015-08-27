program Combinations
implicit none

real(kind=16)  :: n, k, combins
real :: start, finish

write (*,*) 'Enter two integers n and k: '
read (*,*) n, k

call cpu_time(start)

combins = (factorial( n ) / ( factorial(k) * factorial(n-k)))

call cpu_time(finish)
write (*,*) combins

Contains
        
        
        
        
        !Factorial function
        !works up to and including 1754! not too shabby
        real(kind=16) function factorial(x) result(fact)
        real(kind=16),intent(in) :: x
        real(kind=16) :: j
                
                !multiple calls now work
                j=x
                fact = 1 
                !enter infinite do, exit when x gets to 0        
                do while (.true.)    
                        If (j==1 .or. x==0) exit                        
                        fact = fact * j
                        j = j-1
                end do

                
        end function 









end program
