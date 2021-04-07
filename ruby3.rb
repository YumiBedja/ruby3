coins = 100
points = 0

while coins >= 0
  puts "現在#{coins}コインです"
  puts "ポイントは#{points}です"
  puts "-----------------------------"
  puts "10コインを入れてスロットしますか？"
  puts "1.(10コイン入れる) 2.(やらない)"
  bet = gets.to_i
  puts "-----------------------------"
  
  if bet == 2
    puts "また遊びにきてね！"
    break 
  elsif coins < bet
    puts "コインが足りません"
    break
  elsif bet == 1
    coins -= bet + 9
    puts "残り：#{coins}コイン"
    puts "Enterを3回押してください"
    puts "-----------------------------"
    
    t1 = rand(1..9)
    t2 = rand(1..9)
    t3 = rand(1..9)
    m1 = rand(1..9)
    m2 = rand(1..9)
    m3 = rand(1..9)
    b1 = rand(1..9)
    b2 = rand(1..9)
    b3 = rand(1..9)
    
    gets
    puts "|#{t1}|| || |\n|#{m1}|| || |\n|#{b1}|| || |"
    puts "-----------------------------"
    gets
    puts "|#{t1}||#{t2}|| |\n|#{m1}||#{m2}|| |\n|#{b1}||#{b2}|| |"
    puts "-----------------------------"
    gets
    puts "|#{t1}||#{t2}||#{t3}|\n|#{m1}||#{m2}||#{m3}|\n|#{b1}||#{b2}||#{b3}|"
    puts "-----------------------------"
    
    if (t1 == t2 && t2 == t3) || (m1 == m2 && m2 == m3) || (b1 == b2 && b2 == b3) || (t1 == m2 && m2 == b3) || (t3 == m2 && m2 == b1) 
      puts "当たり!"
      getcoins = 20
      getpoints = 5
      puts "#{getcoins}コインゲット！\n#{getpoints}ポイントゲット！"
      
      coins += getcoins
      points += getpoints
    else
      puts "残念!もう一度挑戦しよう！"
    end
  else
    puts "入力エラー"
    break
  end  
end