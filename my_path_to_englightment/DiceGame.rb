class DiceGame
  def score(dice)
    score = 0
    array = {1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0}
    
    dice.each do |item|
      array[item] += 1
      if array[item] >= 3
        score += (item == 1) ? 1000 : item * 100
        array[item] = 0
      end
    end
    
    array.keys.each do |key|
      score += array[key] * 100 if key == 1
      score += array[key] * 50 if key == 5
    end
    
    score
  end
end