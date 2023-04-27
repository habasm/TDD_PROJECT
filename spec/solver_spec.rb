require 'spec_helper'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#factorial' do
    context 'when given a positive integer' do
      it 'returns the correct factorial' do
        expect(@solver.factorial(5)).to eq(120)
        expect(@solver.factorial(7)).to eq(5040)
        expect(@solver.factorial(10)).to eq(3_628_800)
      end
    end

    context 'when given 0' do
      it 'returns 1' do
        expect(@solver.factorial(0)).to eq(1)
      end
    end

    context 'when given a negative integer' do
      it 'raises an exception' do
        expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
        expect { @solver.factorial(-5) }.to raise_error(ArgumentError)
      end
    end
  end
