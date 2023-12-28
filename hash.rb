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


#----------------------------------------------------
# TechCamp演習問題
# 問題1 
user = {name: "山田", age: 20}
# 問題2 
user = {name: "山田", age: 20}
user[:age] = 22
user[:gender] = "男性"

puts "#{user}"
