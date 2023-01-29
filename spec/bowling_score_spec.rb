# frozen_string_literal: true

require_relative '../lib/bowling_score'

RSpec.describe BowlingScore do
  describe '#calculate' do
    it { expect(described_class.calculate([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])).to eq(0) }
    it { expect(described_class.calculate([1, 2, 3, 4, 5, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0])).to eq(50) }
    it { expect(described_class.calculate([1, 2, 0, 10, 5, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0])).to eq(58) }
    it { expect(described_class.calculate([7, 3, 9, 0, 8, 1, 10, 5, 5, 3, 3, 10, 10, 5, 3, 4, 6, 9])).to eq(146) }
    it { expect(described_class.calculate([9, 1, 8, 0, 10, 10, 9, 0, 10, 10, 10, 7, 3, 9, 1, 10])).to eq(199) }
    it { expect(described_class.calculate([8, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10, 8])).to eq(276) }
    it { expect(described_class.calculate([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10])).to eq(300) }

    context '倒したピン数に文字列が指定された場合' do
      it '例外を発生すること' do
        expect do
          described_class.calculate(['A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                     0])
        end.to raise_error('倒したピン数には数値を指定してください')
      end
    end

    context '倒したピン数に0以下11以上が指定された場合' do
      context '-1が指定された場合' do
        it '例外を発生すること' do
          expect do
            described_class.calculate([-1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                       0])
          end.to raise_error('倒したピン数の指定可能範囲は0から10です')
        end
      end

      context '11が指定された場合' do
        it '例外を発生すること' do
          expect do
            described_class.calculate([11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                       0])
          end.to raise_error('倒したピン数の指定可能範囲は0から10です')
        end
      end
    end
  end
end
