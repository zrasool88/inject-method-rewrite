require 'spec_helper'
require 'array'

describe Array do
  let(:arr) { [2, 2, 5, 5, 10] }

  context 'arithmetic operations' do
    it 'adds integers in an array' do
      expect(arr.pinject(0) { |x, y| x + y }).to eq(24)
    end

    it 'subtracts integers in an array' do
      expect(arr.pinject(0) { |x, y| x - y }).to eq(-24)
    end

    it 'multiplies integers in an array' do
      expect(arr.pinject(1) { |x, y| x * y }).to eq(1000)
    end

    it 'divides integers in an array' do
      expect(arr.pinject(1) { |x, y| y / x }).to eq(10)
    end

    it 'works without an argument' do
      expect(arr.pinject { |x, y| x + y }).to eq(24)
    end
  end
end
