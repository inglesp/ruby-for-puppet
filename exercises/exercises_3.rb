require "minitest/autorun"

# Arrays of hashes
#
# For the following functions, the name `person` refers to a hash representing
# a person, with the keys "name" and "age", while the name `people` refers to
# an array of such hashes.

# Returns `true` if age of person is greater than or equal to 18, and `false`
# otherwise.
def can_buy_beer?(person)
end

# Returns an array of people who are 18 or older.
def people_who_can_buy_beer(people)
end

# Sorts given array by age, with youngest first.
def sorted_by_age(people)
end

# Returns the oldest person in given array.
def oldest_person(people)
end

# Returns the name of the oldest person in given array.
def name_of_oldest_person(people)
end

# Hashes of hashes
#
# For the following functions, the name `results` refers to a hash representing
# some exam results, where the keys are subject names as lower-case strings,
# and the values are scores as integers, for instance:
#   {'english' => 62, 'french' => 74}
#
# The name `results_set` refers to a hash where the keys are people's names as
# strings, and the values are hashes of results as described above.

# Returns `true` if score for English is greater than or equal to 60, and
# `false` otherwise.
def passed_english?(results)
end

# Returns names of people in given results_set who passed English.
def names_of_people_who_passed_english(results_set)
end

# Returns names of people in given results_set who failed English.
def names_of_people_who_failed_english(results_set)
end

# Returns names of people in given results_set who took French.
def names_of_people_who_took_french(results_set)
end

# Returns names of people in given results_set who scored more highly in
# English than maths.
def names_of_people_better_at_english_than_maths(results_set)
end

# Hashes of arrays of hashes
#
# For the following functions, the name `departments` refers to a hash with
# data about the employees in each department in a company.  The keys of the
# hash are the names of the departments, as strings, and the values are arrays
# of hashes representing an employees in that department.  Each employee hash
# has the keys `name`, `hometown`, and `status`.

# Returns names of departments where single employee.
def names_of_departments_with_one_employee(departments)
end

# Returns names of departments where at least one employee is from Portsmouth.
def names_of_departments_with_employees_from_portsmouth(departments)
end

# Returns names of departments where all employees are from Southampton.
def names_of_departments_with_no_employees_from_outside_southampton(departments)
end

# Returns names of departments where there is at least one contractor.
def names_of_departments_with_at_least_one_contractor(departments)
end

# Returns names of departments where there are more contractors than permanent
# employees.
def names_of_departments_with_more_contractors_than_permanent(departments)
end


# These are the test cases, which will magically get run when you run this
# file.  You shouldn't change these!
class Tests < Minitest::Test
  Jonny = {'name' => 'Jonny', 'age' => 30}
  Sarah = {'name' => 'Sarah', 'age' => 18}
  James = {'name' => 'James', 'age' => 17}
  Sally = {'name' => 'Sally', 'age' => 12}

  def test_can_buy_beer?
    assert_equal(true, can_buy_beer?(Jonny))
    assert_equal(true, can_buy_beer?(Sarah))
    assert_equal(false, can_buy_beer?(James))
    assert_equal(false, can_buy_beer?(Sally))
  end

  def test_people_who_can_buy_beer
    assert_equal(
      [Sarah, Jonny],
      people_who_can_buy_beer([Sarah, Sally, James, Jonny])
    )
  end

  def test_sorted_by_age
    assert_equal(
      [Sally, James, Sarah, Jonny],
      sorted_by_age([Sarah, James, Jonny, Sally])
    )
  end

  def test_oldest_person
    assert_equal(Jonny, oldest_person([Sarah, James, Jonny, Sally]))
  end

  def test_name_of_oldest_person
    assert_equal('Jonny', name_of_oldest_person([Sarah, James, Jonny, Sally]))
  end

  ResultsSet = {
    'Mike' => {'maths' => 72, 'english' => 60, 'french' => 68},
    'Jane' => {'maths' => 47, 'english' => 78, 'german' => 82},
    'Mark' => {'maths' => 57, 'english' => 59, 'french' => 63},
    'Judy' => {'maths' => 83, 'english' => 71, 'arabic' => 73},
  }

  def test_passed_english?
    assert_equal(true, passed_english?(ResultsSet['Mike']))
    assert_equal(false, passed_english?(ResultsSet['Mark']))
  end

  def test_names_of_people_who_passed_english
    assert_equal(['Mike', 'Jane', 'Judy'], names_of_people_who_passed_english(ResultsSet))
  end

  def test_names_of_people_who_failed_english
    assert_equal(['Mark'], names_of_people_who_failed_english(ResultsSet))
  end

  def test_names_of_people_who_took_french
    assert_equal(['Mike', 'Mark'], names_of_people_who_took_french(ResultsSet))
  end

  def test_names_of_people_better_at_english_than_maths
    assert_equal(['Jane', 'Mark'], names_of_people_better_at_english_than_maths(ResultsSet))
  end

  Departments = {
    'Engineering' => [
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'permanent'},
      {'name' => 'Sarah', 'hometown' => 'Winchester', 'status' => 'contractor'},
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'permanent'},
      {'name' => 'Sarah', 'hometown' => 'Portsmouth', 'status' => 'permanent'},
    ],
    'Sales' => [
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'contractor'},
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'contractor'},
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'permanent'},
    ],
    'Finance' => [
      {'name' => 'Sarah', 'hometown' => 'Portsmouth', 'status' => 'permanent'},
    ],
    'HR' => [
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'permanent'},
      {'name' => 'Sarah', 'hometown' => 'Southampton', 'status' => 'permanent'},
    ]
  }

  def test_names_of_departments_with_one_employee
    assert_equal(
      ['Finance'],
      names_of_departments_with_one_employee(Departments)
    )
  end

  def test_names_of_departments_with_employees_from_portsmouth
    assert_equal(
      ['Engineering', 'Finance'],
      names_of_departments_with_employees_from_portsmouth(Departments)
    )
  end

  def test_names_of_departments_with_no_employees_from_outside_southampton
    assert_equal(
      ['Sales', 'HR'],
      names_of_departments_with_no_employees_from_outside_southampton(Departments)
    )
  end

  def test_names_of_departments_with_at_least_one_contractor
    assert_equal(
      ['Engineering', 'Sales'],
      names_of_departments_with_at_least_one_contractor(Departments)
    )
  end

  def test_names_of_departments_with_more_contractors_than_permanent
    assert_equal(
      ['Sales'],
      names_of_departments_with_more_contractors_than_permanent(Departments)
    )
  end
end
