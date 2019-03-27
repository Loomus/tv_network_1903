require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class Character < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_character_exsists
    assert_instance_of Character, @kitt
  end

  def test_name_method
    assert_equal "KITT", @kitt.name
  end

  def test_actor_method
    assert_equal "William Daniels", @kitt.actor
  end

  def test_salary_method
    assert_equal 1000000, @kitt.salary
  end
end
