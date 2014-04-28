require 'rspec'
require_relative "../exercises"

describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe 'Exercise 1' do
  it " returns the number of elements in the array" do
    result = Exercises.ex1([1,2,3,4])
    expect(result).to eq(4)
  end
end

describe 'Exercise 2' do
  it " returns the second element in the array" do
    result = Exercises.ex2([1,2,3,4])
    expect(result).to eq(2)
  end
end

describe 'Exercise 3' do
  it " returns the sum of the elements in the array" do
    result = Exercises.ex3([1,2,3,4])
    expect(result).to eq(10)
  end
end

describe 'Exercise 4' do
  it " returns the max of the elements in the array" do
    result = Exercises.ex4([1,2,3,4])
    expect(result).to eq(4)
  end
end

describe 'Exercise 5' do
  it "iterates throught the array and puts each element" do
    STDOUT.should_receive(:puts).with(1)
    STDOUT.should_receive(:puts).with(2)
    STDOUT.should_receive(:puts).with(3)
    STDOUT.should_receive(:puts).with(4)
    Exercises.ex5([1,2,3,4])
  end
end







