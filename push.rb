require 'test/unit'

class Dog 
  def speak
    "WOOF"
  end
end

class DogTest < Test::Unit::TestCase
  def test_dog_speak
    d = Dog.new
    assert_equal "Bark", d.speak
  end
end

