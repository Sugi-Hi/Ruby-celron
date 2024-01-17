def register_item(items)  # 販売商品の登録
  item = {}

  puts "販売中の商品名を入力して下さい！"
  item[:name] = gets.chomp
  puts "販売商品の値段(円)を入力して下さい！"
  item[:price] = gets.to_i
  puts "販売商品の個数(1個入単位)を入力して下さい！"
  item[:number] = gets.to_i
  puts "販売商品の種類(食品、飲料、お菓子、衣類、生活品、文具、洗面具、植物など)を入力して下さい！"
  item[:kind] = gets.chomp
  puts "販売商品の包装物(袋、箱、パック、紙、ペットボトル、缶、ビン、容器、シールなど)"
  item[:form] = gets.chomp

  items << item
end

def index_item(items)  # 販売商品の一覧

end

def show_item(item)

end
def buy_item(item)  # 販売商品の購入

end 

items = []  # 必要な商品データ情報


puts "店舗内の販売商品"
items.each do |item|
  puts "#{item[:name]}：#{item[:price]}円"
end

puts "店舗の販売商品において、やりたい事を下記のコード番号[0][1][2]で選択して下さい。"
puts "[0]販売されている商品データ登録"
puts "[1]全販売商品データ一覧のチェック"
puts "[2]店舗から出て終了"

input = gets.to_i

while true do
  if input == 0
    register_item(items)
  elsif input == 1
    index_item(items)
  elsif input == 2
    exit
  else
    puts "存在するコード番号を再度入力して下さい！"
end



