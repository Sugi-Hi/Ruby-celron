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

  student = {name: name, room: room, jap: japanese, math: math, social: social, science: science, eng: english, sum: (japanese+math+social+science+english)} # 各受験生徒のデータ成績のハッシュ化
  students << student # 一人一人の受験生徒を全生徒へ追加
  
end

def index_student(students) # 全受験生徒における一覧の表示
  
  puts "生徒一覧表#受験者"
  students.each_with_index do |student, index|  # index:数値化できない!
  puts "受験番号： 00#{index+1}  氏名：#{student[:name]} 、#{student[:room]}組"
  end
  puts "受験生徒数：#{students.length}名"
  average(students)

  puts "見たい生徒を受験番号(上位ケタの0を抜いて)で選択入力して下さい！"
  index = gets.to_i

  show_student(students[index-1]) # 全受験生徒の配列化

end

def show_student(student) # 選択した受験生徒の詳細
  puts "氏名：#{student[:name]} 、#{student[:room]}組"
  puts "国語：#{student[:jap]}点、数学：#{student[:math]}点、社会：#{student[:social]}点、理科：#{student[:science]}点、英語：#{student[:eng]}点"
  puts "5教科の合計点⇒#{student[:sum]}点"  # {student[:jap]+student[:math]+student[:social]+student[:science]+student[:eng]}：合計点
end
def average(students) # 平均点
  sum_jap=0
  sum_math=0
  sum_social=0
  sum_science=0
  sum_eng=0
  students.each do |student|
    sum_jap     += student[:jap]
    sum_math    += student[:math]
    sum_social  += student[:social]
    sum_science += student[:science]
    sum_eng     += student[:eng]
  end  
  puts "各教科の平均点⇒ 国語：#{sum_jap/students.length}点、数学：#{sum_math/students.length}点、社会：#{sum_social/students.length}点、理科：#{sum_science/students.length}点、英語：#{sum_eng/students.length}点"
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
