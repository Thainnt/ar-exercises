require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true} && {greater_than_or_equal_to: 40} && {less_than_or_equal_to: 200}

  belongs_to :store
  validates :store, :presence => true
end

class Store
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true} && {greater_than_or_equal_to: 0}

  def must_carry_men_or_women_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, :womens_apparel, "contains at least one")
    end
  end

  @new_store = gets.chomp

  @newStore = Store.create!(name: @new_store)

  @newStore.errors
  @newStore.errors.messages
  @newStore.valid?

end
