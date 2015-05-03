require 'spec_helper'
require 'array'

describe Array do
  let(:arr) { [2, 2, 5, 5, 10] }

  context 'recursive pinject' do
    context 'arithmetic operations' do
      it 'adds integers in an array' do
        expect(arr.pinject_recursive(0) { |x, y| x + y }).to eq(24)
      end

      it 'subtracts integers in an array' do
        expect(arr.pinject_recursive(0) { |x, y| x - y }).to eq(-24)
      end

      it 'multiplies integers in an array' do
        expect(arr.pinject_recursive(1) { |x, y| x * y }).to eq(1000)
      end

      it 'divides integers in an array' do
        expect(arr.pinject_recursive(1) { |x, y| y / x }).to eq(10)
      end

      it 'works without an argument' do
        expect(arr.pinject_recursive { |x, y| x + y }).to eq(24)
      end
    end

    context 'works with syntactic sugar' do
      it ':+ results in addition' do
        expect(arr.pinject_recursive(:+)).to eq(24)
      end

      it ':- results in subtraction' do
        expect(arr.pinject_recursive(:-)).to eq(-20)
      end

      it ':* results in multiplication' do
        expect(arr.pinject_recursive(:*)).to eq(1000)
      end

      it ':/ results in division' do
        expect(arr.pinject_recursive(:/)).to eq(0)
      end
    end

    context 'string operations' do
      let(:sentence) { ['These ', 'words ', 'shall ', 'be ', 'concatonated'] }

      it 'concatonates strings' do
        expect(sentence.pinject_recursive do |sentence, word|
          sentence + word
        end).to eq('These words shall be concatonated')
      end
    end

    context 'converts between types of enumerables' do
      let(:hash) { [[:first_name, 'Zeeshan'], [:last_name, 'Rasool']] }

      it 'converts nested array into hash' do
        expect(hash.pinject_recursive({}) do |accumulator, element|
          accumulator[element.first] = element.last
          accumulator
        end).to eq(first_name: 'Zeeshan', last_name: 'Rasool')
      end
    end
  end
end
