student = { "name" => "John", "age" => 10 }
teacher = { name: "Mike", age: 25 }

teacher[:subject] = "English"

puts student
puts teacher
puts teacher[:name]

user_data = [
  {user: {profile: {name: 'George'}}},
  {user: {profile: {name: 'Alice'}}},
  {user: {profile: {name: 'Taro'}}},
 ]
 
user_data.each do |u|
  puts u[:user][:profile][:name]
end