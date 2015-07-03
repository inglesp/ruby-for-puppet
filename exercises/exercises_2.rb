gem "minitest"
require "minitest/autorun"

# This function returns `true` if its first argument is longer than its second,
# and `false` otherwise.
def is_longer_than?(word1, word2)
end

# This function returns `true` if its argument is upper case, and `false`
# otherwise.
def is_uppercase?(word)
end

# This function returns `true` if its argument is a palindrome, and `false`
# otherwise.
def is_palindrome?(word)
end

# This function returns `true` if its argument starts and ends with the same
# letter, and `false` otherwise.
def starts_and_ends_with_same_letter?(word)
end

# This function returns `true` if its argument contains vowels, and `false`
# otherwise.
def has_vowels?(word)
end

# This function returns the number of vowels in its argument.
def count_vowels(word)
end

# This function returns a new string where every vowel in its argument is
# replaced by a question mark.
def replace_vowels_with_question_mark(word)
end

# This function returns the longest word in a sentence.
def longest_word(sentence)
end

# This function returns an array of words which have an even number of letters.
def words_of_even_length(sentence)
end

# This function returns the average length of the words in a sentence.
def average_length_of_words(sentence)
end


# These are the test cases, which will magically get run when you run this
# file.  You shouldn't change these!
class FunctionsTests < Minitest::Test
  def test_is_longer_than?
    assert_equal(false, is_longer_than?("fish", "fingers"))
    assert_equal(true, is_longer_than?("fingers", "fish"))
    assert_equal(false, is_longer_than?("fish", "fish"))
  end

  def test_is_uppercase?
    assert_equal(true, is_uppercase?("HELLO"))
    assert_equal(false, is_uppercase?("hello"))
    assert_equal(false, is_uppercase?("HeLlO"))
  end

  def test_is_palindrome?
    assert_equal(true, is_palindrome?("rotator"))
    assert_equal(false, is_palindrome?("curator"))
  end

  def test_starts_and_ends_with_same_letter?
    assert_equal(true, starts_and_ends_with_same_letter?("rotator"))
    assert_equal(true, starts_and_ends_with_same_letter?("regulator"))
    assert_equal(false, starts_and_ends_with_same_letter?("rotated"))
  end

  def test_has_vowels
    assert_equal(false, has_vowels?('rhythms'))
    assert_equal(true, has_vowels?('eunoia'))
  end

  def test_count_vowels
    assert_equal(2, count_vowels('vowel'))
    assert_equal(3, count_vowels('consonant'))
    assert_equal(0, count_vowels('rhythms'))
  end

  def test_replace_vowels_with_question_mark
    assert_equal("??n???", replace_vowels_with_question_mark("eunoia"))
  end

  def test_longest_word
    assert_equal("households", longest_word("two households both alike in dignity"))
    assert_equal("question", longest_word("to be or not to be that is the question"))
  end

  def test_words_of_even_length
    assert_equal(
      ["households", "both", "in"],
      words_of_even_length("two households both alike in dignity")
    )
    assert_equal(
      ["to", "be", "or", "to", "be", "that", "is", "question"],
      words_of_even_length("to be or not to be that is the question")
    )
  end

  def test_average_length_of_words
    assert_equal(5 + 1.0 / 6, average_length_of_words("two households both alike in dignity"))
    assert_equal(3.0, average_length_of_words("to be or not to be that is the question"))
  end
end
