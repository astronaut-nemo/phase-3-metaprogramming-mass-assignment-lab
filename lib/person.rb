require 'pry'

class Person

  def initialize(attributes)
    attributes.each do |key, value|
      # Defining getters
      self.class.attr_accessor(key)
      # Defining setters
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }
susan = Person.new(susan_attributes)

binding.pry