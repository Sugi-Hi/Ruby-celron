def register_student(data)
  puts "氏名を入力して下さい:"
  name = gets.chomp
  puts "何組か入力して下さい:"
  number = gets.chomp
  puts "国語の点数を入力して下さい:"
  japanese = gets.to_i
  puts "数学の点数を入力して下さい:"
  math = gets.to_i
  puts "社会の点数を入力して下さい:"
  social = gets.to_i
  puts "理科の点数を入力して下さい:"
  science = gets.to_i
  puts "英語の点数を入力して下さい:"
  english = gets.to_i
end


puts "生徒の成績表"