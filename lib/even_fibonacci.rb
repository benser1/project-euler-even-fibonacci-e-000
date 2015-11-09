# Implement your procedural solution here!
def even_fibonacci_sum(bound)
  n = 2
  old = 1
  set = [1,2]
  while n + old < bound
    old, n = n, old + n
    set << n
  end
  set.select{|num| num%2 == 0}.reduce(:+)
end