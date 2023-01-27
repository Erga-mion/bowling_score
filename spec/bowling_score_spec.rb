# frozen_string_literal: true

require_relative '../lib/bowling_score'

RSpec.describe BowlingScore do
  it do
    expect(described_class.hello_world).to eq('Hello World')
  end
end
