class Person
  
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key) #makes the key a reader and writer method.
      self.send(("#{key}="), value) #.send calls the key with an arguement of value. key= makes it so the user can input their own value.
    end
  end
end

#we iterated over Person.new{name: "Sophie", user_name: "sm_debenedetto", age: 26, location: "NY, NY", bio: "I'm a programmer living in NY!"}