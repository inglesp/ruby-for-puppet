gem 'minitest'
require 'minitest/autorun'

# This function returns the absolute value of its argument.
def abs(x)
end

# This function returns its argument squared.
def square(x)
end

# This function returns the sum of its two arguments.
def add_2(x, y)
end

# This function returns the sum of its three arguments.
def add_3(x, y, z)
end

# This function returns the minimum of its two arguments.
def min_2(x, y)
end

# This function returns the minimum of its three arguments.
def min_3(x, y, z)
end

# This function returns the average of its two arguments.
def avg_2(x, y)
end

# This function returns the average of its three arguments.
def avg_3(x, y, z)
end

# This function returns n factorial; that is, n * (n-1) * (n-2) * ... * 2 * 1
def factorial(n)
end

# This function returns the nth Fibbonaci number.  Google for Fibbonaci's
# sequence if you've not come across it before.
def fib(n)
end


# These are the test cases, which will magically get run when you run this
# file.  You shouldn't change these!
class FunctionsTests < Minitest::Test
  def test_abs
    assert_equal(10, abs(10))
    assert_equal(10, abs(-10))
    assert_equal(0, abs(0))
  end

  def test_square
    assert_equal(100, square(10))
    assert_equal(100, square(-10))
    assert_equal(0, square(0))
  end

  def test_add_2
    assert_equal(30, add_2(10, 20))
  end

  def test_add_3
    assert_equal(60, add_3(10, 20, 30))
  end

  def test_min_2
    assert_equal(10, min_2(10, 20))
    assert_equal(10, min_2(20, 10))
  end

  def test_min_3
    assert_equal(10, min_3(10, 20, 30))
    assert_equal(10, min_3(30, 10, 20))
    assert_equal(10, min_3(20, 30, 10))
    assert_equal(10, min_3(30, 20, 10))
    assert_equal(10, min_3(10, 30, 20))
    assert_equal(10, min_3(20, 10, 30))
  end

  def test_avg_2
    assert_equal(15, avg_2(10, 20))
    assert_equal(10, avg_2(10, 10))
    assert_equal(0, avg_2(10, -10))
    assert_equal(10.5, avg_2(10, 11))
  end

  def test_avg_3
    assert_equal(20, avg_3(10, 20, 30))
    assert_equal(10, avg_3(10, 10, 10))
    assert_equal(0, avg_3(10, 0, -10))
    assert_equal(10 + 1.0 / 3, avg_3(10, 10, 11))
  end

  def test_factorial
    assert_equal(1, factorial(1))
    assert_equal(2, factorial(2))
    assert_equal(6, factorial(3))
    assert_equal(24, factorial(4))
  end

  def test_fib
    assert_equal(1, fib(0))
    assert_equal(1, fib(1))
    assert_equal(2, fib(2))
    assert_equal(3, fib(3))
    assert_equal(5, fib(4))
    assert_equal(8, fib(5))
  end
end
