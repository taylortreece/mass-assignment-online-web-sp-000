# This is how you take unexpected key: value pairs into consideration.
# No matter how many attributes you're given, they will be given a getter & setter method.
# With attr_accessor, you hve to account for every single attribute ahead of time. This is abstract.
# https://www.seancdavis.com/blog/dynamic-attributes-on-instances-in-ruby/

class Person

  def initialize(attributes = {})
    attributes.each  do |key, value| 
      define_singleton_method("#{key}=") { |val| attributes[key] = val }
      define_singleton_method(key) { attributes[key] }
    end
  end

end