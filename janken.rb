puts "じゃんけん・・・"

#じゃんけん処理
def janken
  puts "0（グー）/ 1（チョキ）/ 2（パー）/ 3（戦わない）"
  player_hand = gets.chomp.to_i
  program_hand = rand(3)
  
  if player_hand == 3
    puts "終わり！"
    exit
  elsif player_hand > 3
    puts "入力値が無効です"
    return janken
  end
  
  jankens = ["グー","チョキ","パー"]
  
  puts  "ホイ！"
  puts  "-----------------------------------------------------"
  puts  "あなた：#{jankens[player_hand]}を出しました"
  puts  "相手：#{jankens[program_hand]}を出しました"
  puts  "-----------------------------------------------------"
  
  if player_hand == program_hand
    puts "あいこで・・・"
    return true
  elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand ==0)
    #puts "あなたの勝ちです"
        @result = "win"
    return attimuite_hoy
  else 
    #puts "あなたの負けです"
        @result = "lose"
    return attimuite_hoy
  end
end

#あっち向いてホイ処理
def attimuite_hoy
  puts "あっち向いて・・・"
  puts "0(上) 1（下）2（左）3（右）"
  player_direction = gets.chomp.to_i
  program_direction = rand(4)
  
  if player_direction > 3
    puts "0〜3を入力してね！"
    return attimuite_hoy
  end
  
  directions = ["上","下","左","右"]
  puts "ホイ！"
  puts "-----------------------------------------------------"
  puts "あなた：#{directions[player_direction]}"
  puts "相手：#{directions[program_direction]}"
  puts "-----------------------------------------------------"
  
  if player_direction == program_direction && @result == "win"
    puts "あなたの勝ちです！"
    return false
  elsif player_direction == program_direction && @result == "lose"
    puts "あなたの負けです。"
    return false
  else
    puts "じゃんけん・・・"
    return true
  end
      
end

next_game = true

while next_game
  next_game = janken
end