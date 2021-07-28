
puts "じゃんけん..."

#じゃんけん
def janken
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

player_hand = gets.to_i
program_hand = rand(3)

jankens = ["グー","チョキ","パー"]
puts "ホイ！"
puts "---------------"
puts "あなた:#{jankens[player_hand]}を出しました"
puts "相手:#{jankens[program_hand]}を出しました"

win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
lose = !(win)

if player_hand == program_hand
  puts "あいこで..."
  return true
elsif win
  puts "あなた：勝ち"
  @result = "win"
elsif lose
  puts "あなた：負け"
  @result = "lose"
end
end

next_game = true

while next_game
  next_game = janken
end

#あっち向いてホイ
def hoi
if @result == "win"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_direction = gets.to_i
  program_direction = rand(4)
  
  hois = ["上","下","左","右"]
  puts "ホイ！"
  puts "---------------"
  puts "あなた:#{hois[player_direction]}"
  puts "相手:#{hois[program_direction]}"
   if player_direction == program_direction 
    puts "あなたの勝ち!"
   elsif player_direction != program_direction 
    puts "やり直し"
    return true
   end
end


if @result == "lose"
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_direction = gets.to_i
  program_direction = rand(4)
  
  hois = ["上","下","左","右"]
  puts "ホイ！"
  puts "---------------"
  puts "あなた:#{hois[player_direction]}"
  puts "相手:#{hois[program_direction]}"
   if player_direction == program_direction 
    puts "あなたの負け"
   elsif player_direction != program_direction 
    puts "やり直し"
    return true
   end
end
end

next_game = true

while next_game
  next_game = hoi
end