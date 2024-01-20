

items = []  # 必要な商品データ情報

# 所持金
puts "初めの所持金(円)を入力して下さい！"
money = gets.to_i


while true do
  puts "店舗の販売商品において、やりたい事を下記のコード番号[0][1][2]で選択して下さい。"
  puts "[0]販売されている商品データ登録"
  puts "[1]全販売商品データ一覧のチェック"
  puts "[2]店舗から出て終了"
  input = gets.to_i

  if input == 0
    register_item(items)
  elsif input == 1
    index_item(items)
  elsif input == 2
    exit
  else
    puts "存在するコード番号を再度入力して下さい！"
  end

end