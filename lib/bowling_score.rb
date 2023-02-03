# frozen_string_literal: true

# ボウリングスコアを計算
class BowlingScore
  # @param knocked_pins [Array] 1ゲームでボールの投球ごとに倒したピン数の配列
  # @return [Integer] 1ゲームの総合スコア 
  def self.calculate(knocked_pins)
    @knocked_pins = knocked_pins

    @frame_count = 1
    @throw_count = 1
    @result = 0

    @knocked_pins.each.with_index do |pins, index|
      raise '倒したピン数には数値を指定してください' unless /^-?[0-9]+$/.match?(pins.to_s)
      raise '倒したピン数の指定可能範囲は0から10です' unless pins.between?(0, 10)

      @result += pins

      if @frame_count != 10
        if @throw_count == 1 && pins == 10
          strike(index)
          change_frame
        elsif @throw_count == 2
          spare(index) if pins + @knocked_pins[index - 1] == 10
          change_frame
        else
          @throw_count = 2
        end
      else
        break if @throw_count == 3 || @throw_count == 2 && pins + @knocked_pins[index - 1] < 10

        @throw_count += 1
      end
    end

    @result
  end

  # フレームのカウントを1増やし、フレームでの投球数をリセットする
  def self.change_frame
    @frame_count += 1
    @throw_count = 1
  end

  # ストライクが出た時のボーナススコアを総合スコアに追加する
  # @param index [Integer] ストライクが出た投球数から1引いた値
  def self.strike(index)
    @result += @knocked_pins[index + 1] + @knocked_pins[index + 2]
  end

  # スペアが出た時のボーナススコアを総合スコアに追加する
  # @param index [Integer] スペアが出た投球数から1引いた値
  def self.spare(index)
    @result += @knocked_pins[index + 1]
  end
end
