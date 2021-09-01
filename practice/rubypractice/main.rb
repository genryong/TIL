@win = 0
@lose = 0
@draw = 0

def janken_hand(cpu_hand, player_hand)
  if cpu_hand == "g"
    puts "CPU...グー"
  elsif cpu_hand == "c"
    puts "CPU...チョキ"
  elsif cpu_hand == "p"
    puts "CPU...パー"
  else
  end

  if player_hand == "g"
    puts "あなた...グー"
  elsif player_hand == "c"
    puts "あなた...チョキ"
  elsif player_hand == "p"
    puts "あなた...パー"
  else
  end
end

def janken(cpu_hand, player_hand, x)
  puts "#{x}本目"
  if cpu_hand == "g" && player_hand == "c"
    puts "負け!"
    @lose += 1
  elsif cpu_hand == "g" && player_hand == "p"
    puts "勝ち!"
    @win += 1
  elsif cpu_hand == "p" && player_hand == "g"
    puts "負け!"
    @lose += 1
  elsif cpu_hand == "p" && player_hand == "c"
    puts "勝ち!"
    @win += 1
  elsif cpu_hand == "c" && player_hand == "p"
    puts "負け!"
    @lose += 1
  elsif cpu_hand == "c" && player_hand == "g"
    puts "勝ち!"
    @win += 1
  else
  end
end

puts "何本勝負？(press 1 pr 3 or 5)"
time = gets.to_i
puts "#{time}本勝負を選びました。"

(1..time).each do |x| 
  if @draw == 0
    puts "じゃんけん...(press g or p or c)"
  elsif @draw == 1
    puts "あいこで...(press g or p or c)"
  end
  cpu_hand = ["g", "c", "p"].sample
  player_hand = gets.chomp
  player_hand = player_hand.to_s
  puts janken_hand(cpu_hand, player_hand)
  if player_hand == cpu_hand
    @draw = 1
    redo
  end
  puts janken(cpu_hand, player_hand, x)
  puts "#{@win}勝#{@lose}敗"
  @draw = 0
end

puts "結果"
if @win > @lose
  puts "#{@win}勝#{@lose}敗であなたの勝ち。"
elsif @win < @lose
  puts "#{@win}勝#{@lose}敗であなたの負け。"
end
