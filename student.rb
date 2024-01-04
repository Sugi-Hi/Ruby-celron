def register_student(students)
  puts "氏名を入力して下さい:"
  name = gets.chomp
  puts "何組か入力して下さい:"
  room = gets.chomp
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

  student = {name: name, room: room, jap: japanese, math: math, social: social, science: science, eng: english} # 各受験生徒のデータ成績のハッシュ化
  students << student # 一人一人の受験生徒を全生徒へ追加
end

def index_student(students)
  
  puts "生徒一覧表#受験者"
  students.each_with_index do |student, index|
  puts "受験番号：#{index+1}  氏名：#{student[:name]} 、#{student[:room]}組"
  number = index + 1 
  end
  
  puts "見たい生徒を受験番号で選択入力して下さい！"
  index = gets.to_i

  show_student(students[index-1])

end

def show_student(student)
  puts "氏名：#{student[:name]} 、#{student[:name]}組"
  puts "国語：#{student[:jap]}点、数学：#{student[:math]}点、社会：#{student[:social]}点、理科：#{student[:science]}点、英語：#{student[:eng]}点"
  puts "合計：#{student[:jap]+student[:math]+student[:social]+student[:science]+student[:eng]}点"
end

students=[] # 全受験生徒の配列化

while true

  puts "生徒の成績データ表について、下記の[受付番号]で選択入力して下さい！"
  puts "[0]生徒の成績データ登録"
  puts "[1]全生徒の成績データ一覧"
  puts "[2]終了"
  input = gets.to_i

  if input == 0
    register_student(students)
  elsif input == 1
    index_student(students)
  elsif input == 2
    exit
  else 
    puts "無効な受付番号なので再度0~2で選択入力して下さい!"
  end

end
