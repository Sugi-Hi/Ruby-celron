colors = ["あか", "あお", "きいろ"]
colors.each do |color|
  puts "色: #{color}"
end


#----------------------------------------------------
# TechCamp演習問題
# 問題1 
10.times do |i|
  puts "#{i+1}回目の繰り返し"
end
# 問題2 
sum = 0
10.times do |i|
  sum += (i+1)
end

puts "最後に全て足した値#{sum}"