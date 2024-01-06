puts "ようこそ！名前を入力して下さい。"
name = gets.chomp

puts "秒数を知りたい時間を分単位で入力して下さい。"
minutes = gets.to_i
seconds = minutes * 60

puts "#{name}さん、#{minutes}分は#{seconds}秒です！"