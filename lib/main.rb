# frozen_string_literal: true

require_relative 'bowling_score'

def main
  knocked_pins = [9, 1, 8, 0, 10, 10, 9, 0, 10, 10, 10, 7, 3, 9, 1, 10]
  score = BowlingScore.calculate(knocked_pins)
  puts "Score: #{score}"
end

main if __FILE__ == $PROGRAM_NAME
