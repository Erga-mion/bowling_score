# frozen_string_literal: true

require_relative 'bowling_score'

def main
  # ボールの投球ごとに倒したピン数を配列で指定する
  # 例えば、ストライクを取った次に指定するピン数は、その次のフレームの1投球目で倒したピン数になる
  knocked_pins = [9, 1, 8, 0, 10, 10, 9, 0, 10, 10, 10, 7, 3, 9, 1, 10]
  score = BowlingScore.calculate(knocked_pins)
  puts "Score: #{score}"
end

main if __FILE__ == $PROGRAM_NAME
