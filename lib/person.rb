class Person

  def initialize(attributes = {})
    attributes.each  do |key, value| 
      define_singleton_method("#{attr}=") { |val| attributes[attr] = val }
      define_singleton_method(attr) { attributes[attr] }
  end

end