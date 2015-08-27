program sieves
implicit none
real :: start, finish


call cpu_time(start)
call sieve4()
call cpu_time(finish)

print '("Elapsed: ", F15.6, " seconds")', finish - start


call cpu_time(start)
call sieve5()
call cpu_time(finish)

print '("Elapsed: ", F15.6, " seconds")', finish - start


contains

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!
  !@@@@@@@@@@@@@@@COPIED IN FROM PE divisors counting problem SOLUTION@@@@@@@@@@@@!
!Function to count the number of divisors
!We will use the fact that the divisor pairs are mirrored around sqrt(n)
!That is d1, d2, d3, ...sqrt(n)....n  d1*n=n, d2*d(n-2)=n etc.
!Further note that sqrt(n) may or may not be included in the divisors depending
!on whether or not it is an integer

integer function NumDivisors(n) result (num)
implicit none
   integer*8, intent(in) :: n
   integer*8 :: lim, counter !counter needed because num is intent(in)

        
        counter = 0 !if we dont do this here it will wont get reset when
                    !function is run multiple times
        !We can stop the search when we get to sqrt(n)
        !Floor trucates the real
        do lim=1, Floor(sqrt(real(n)))
                if (mod(n,lim)==0) then
                        counter = counter + 1
                end if 
        end do 

        !As we stopped at sqrt(n) we don't have the full list. We need to
        !determine the remaining number of divisors.  If the the sqrt is an
        !integer it is a quasi double divisor(it is multiplied by itself to get
        !n, so it isnt a part of a pair) so we take twice the count minus one
        !appearance of n.  If n is not an integer then we just double the count.
        !The follow if block does that.
        if (Floor(sqrt(real(n)))**2 == n) then
                num = (2*counter - 1)
        else
                num = 2*counter
        end if 

end function
!I attempted to make the upper limit for input n greater but was limited by data
!type errors. Namely errors abounded when sqrt(n) was too large to fit into an
!integer type, thus not working in its limit capacity in the do 1,sqr.  This
!could be worked around possibly by using a do while true.  Inside this do while
!one could operate on a real*8 value and have lim=lim-1 every loop and an if
!lim<0 exit type statement.  The next problem would be in the mod(n,lim) because
!this wouldn't work if lim was real...... and determining the final count would
!need agumenting
!
!
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!
subroutine sieve()
implicit none
        integer*8, dimension(100000000):: primes
        integer*8 :: i, j


        !First Populate the array
        do i= 2, size(primes)
                primes(i)=i

        end do 

        !Lets begin by removing(setting to zero) some nonprimes
        !We hit numbers multiple times, should look for way to escape this and
        !remove zeros from array
        !Also can look into using a logic array of size n, and looking at the
        !index position as the prime

        !remove all the evens
        do i=4, size(primes), 2
                primes(i)=0
        end do
        !remove multiples of 3
        do i=6, size(primes), 3
                primes(i)=0
        end do

        !remove multiples of 5
        do i=10, size(primes), 5
                primes(i)=0
        end do

        !remove multiples of 7
        do i=14, size(primes), 7
                primes(i)=0
        end do

        !remove multiples of 11
        do i=22, size(primes), 11
                primes(i)=0
        end do

        do i=13, size(primes)
                if (primes(i) .ne. 0) then
                    if (NumDivisors(primes(i)) .ne. 2) then
                        do j=2*i, size(primes), i
                                primes(j)=0
                        end do
                    end if
                end if 
        end do
        

        write(*,*) primes(123423)
end subroutine


!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!
!Now to work on optimizing all aspects of program. Lets retool the divisors 
!We know that a prime p will only have two divisors (1 and p), and we know that
!we only need to search until at most sqrt(n).  If we get any divisors from 2 to
!the limiting value, we know that the number is not prime and can end the
!search.
logical function isPrime(n) result (primeness)
implicit none
   integer*8, intent(in) :: n
   integer*8 :: lim 

        !Default result
        primeness = .true.
        
        
        do lim=2, Floor(sqrt(real(n)))
                if (mod(n,lim)==0) then
                      primeness=.false.
                      exit
                end if 
        end do    

end function

!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!
subroutine sieve2()
implicit none
        integer*8, dimension(1000000):: primes
        integer*8 :: i, j

        !First Populate the array
        do i= 2, size(primes)
                primes(i)=i
        end do 
        !Mostly the same as above sub
        do i=4, size(primes), 2
                primes(i)=0
        end do
        do i=6, size(primes), 3
                primes(i)=0
        end do
        do i=10, size(primes), 5
                primes(i)=0
        end do
        do i=14, size(primes), 7
                primes(i)=0
        end do
        do i=22, size(primes), 11
                primes(i)=0
        end do
        !Use isprimes instead of divisor count
        do i=13, size(primes)
                if (primes(i) .ne. 0) then
                    if (isPrime(primes(i)) ) then
                        do j=2*i, size(primes), i
                                primes(j)=0
                        end do
                    end if
                end if 
        end do
        
        !sum the primes for easy checking in matlab
        write(*,*) sum(primes)
end subroutine
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!Attempt at packing the vector(s) each time so we don't see any zeros

!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@!
!This version is pretty lame, but good way to see how the pack function works
subroutine sieve3()
implicit none
        integer*8, allocatable :: numbers(:), primes(:), stager(:)
        integer*8 :: i, j, X, n, z

        !Dimension the array
        X=1000000
        allocate(numbers(X))
        !Now Populate the array of numbers. 
        !NOTE that numbers=(2,3,4,5....X+1) as we started at 2
        numbers(1) = 2
        do i= 2, size(numbers)
                numbers(i)=i+1

        end do 

        !This time we'll try packing the array while we remove numbers

        !remove all the evens, this is our       
        stager = pack(numbers, (numbers<=2 .or. mod(numbers,2)/=0)) 
        numbers = stager

        !remove multiples of 3
        stager = pack(numbers, (numbers<=3 .or. mod(numbers,3)/=0))
        numbers= stager

        !remove multiples of 5
        stager = pack(numbers, (numbers<=5 .or. mod(numbers,5)/=0))
        numbers= stager

        !remove multiples of 7
        stager = pack(numbers, (numbers<=7 .or. mod(numbers,7)/=0))
        numbers= stager

        !remove multiples of 11
        stager = pack(numbers, (numbers<=11 .or. mod(numbers,11)/=0))
        numbers= stager

        !Remove multiples of 13
        stager = pack(numbers, (numbers<=13 .or. mod(numbers,13)/=0))
        numbers= stager

        

        !Lets grab the primes out of numbers.  We have already eliminated
        !composite numbers less than 13(the sixth prime) so:


        !Primes is now 2,3,5,7,11,13 so we can start with the 7th number in the
        !list and continue this method 
        !Find the nth prime, so size of the primes = n. 
        !n=57
                i=7
                do while (.true.)
                                if (i>=size(numbers)) exit                
                                j = numbers(i)
                                stager = pack(numbers, (numbers<=j .or. mod(numbers,j)/=0))
                                numbers= stager 
       
                                i = i +1
                              

                end do 
                        
        
        write(*,*) numbers(size(numbers))

!no version of this sub works well

end subroutine
subroutine sieve4()
implicit none
        logical*1, dimension(:), allocatable:: primes, stager
        integer*8 :: i, j, X, sigma=0

        write(*,*) "Primes under what?"
        read (*,*) X
        allocate(primes(X))
        primes = .true.
        primes(1)=.false.

        !sieve2 implemented with logic array
        do i=4, size(primes), 2
                primes(i)=.false.
        end do
        do i=6, size(primes), 3
                primes(i)=.false.
        end do
        do i=10, size(primes), 5
                primes(i)=.false.
        end do
        do i=14, size(primes), 7
                primes(i)=.false.
        end do
        do i=22, size(primes), 11
                primes(i)=.false.
        end do

        sigma = 28
        !We've eliminated nonprime indexes, if we do this consecutively we
        !eliminate all nonprimes and never need to isprime(n) them
        do i=13, int(sqrt(real(size(primes))))+1
                if (primes(i)) then
                        sigma = sigma + i
                        do j=(2*i), size(primes), i
                                primes(j)=.false.
                        end do
                end if 
        end do
        
        do i=int(sqrt(real(size(primes))))+2, size(primes)
                if (primes(i)) then
                      sigma = sigma + i
              end if
        end do 

        write(*,*) sigma

!!This one is fast        
end subroutine
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~!
subroutine sieve5()
implicit none
        logical*1, dimension(:), allocatable:: primes, stager
        integer*8 :: i, j, X, sigma=0

        write(*,*) "Primes under what?"
        read (*,*) X
        allocate(primes(X))
        primes = .true.
        primes(1)=.false.




        do i=2, int(sqrt(real(size(primes))))+1
                if (primes(i)) then
                        sigma= sigma + i
                        do j=(i*i), size(primes), i
                                primes(j)=.false.
                        end do
                end if 
        end do
        

        do i=int(sqrt(real(size(primes))))+2, size(primes)
                if (primes(i)) then
                      sigma = sigma + i
              end if
        end do
        
   
        write(*,*) sigma


end subroutine
        





end program

