class Foo
def my_method
  return [:key1, :key2, :key3]
end
  def conditions
    keys = my_method.map{|m| m.to_s }
    key = keys.sample
    if key == 'key1'
      puts key
    end
  end
end