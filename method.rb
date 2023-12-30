def mixer(fruit)
  puts "#{fruit}を細かく砕く"
  return "#{fruit}ジュース"
end

puts "フルーツを入力してください"
input = gets.chomp

puts mixer(input)


#----------------------------------------------------
# TechCamp演習問題
# 問題1 
def introduce
  puts "私の名前はテックキャンプです。"
end

introduce

# 問題2 
def double
  input = gets.to_i
  return (input*2)
end

puts double