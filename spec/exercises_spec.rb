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

describe 'Exercise 6' do
  it "makes last item in array panda" do
    result = Exercises.ex6([1,2,3,4])
    expect(result).to eq('panda')
  end

  it "makes last element GODZILLA if last element is panda already" do
    result =  Exercises.ex6([1,2,3,'panda'])
    expect(result).to eq('GODZILLA')
  end
end

describe 'Exercise 7' do
  it "if array contains 'str add str to the end of the array" do
    result = Exercises.ex7([1,2,3,'str',4], 'str')
    expect(result).to eq('str')
  end

  it "if array doesn't have str last element shouldn't have str" do
    result =  Exercises.ex7([1,2,3,4], 'str')
    expect(result).to eq(4)
  end
end

describe 'Exercise 8' do
  it "iterates throught the hash and prints values" do
    # Exercises.ex8({ :name => "Bob"})
    STDOUT.should_receive(:puts).with("Bob")
    Exercises.ex8({ :name => "Bob" })
  end
end
