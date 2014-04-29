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
    STDOUT.should_receive(:puts).with("Bob").and_call_original
    Exercises.ex8({ :name => "Bob" })
  end
end

describe 'Exercise 9' do
  it " returns if time is a leap year" do
    result = Exercises.ex9(Time.now)
    expect(result).to eq(false)
  end
end



describe 'RPS' do
  it 'initializes with two strings as the players names' do
    #game1 = RPS.new("Tom", "Jon")
    #expect(game1.name1).to eq("Tom")
    #expect(game1.name2).to eq("Jon")
  end

  # It is initialized with two strings (player names).
  # It has a `play` method that takes two strings:
  #   - Each string reperesents a player's move (rock, paper, or scissors)
  #   - The method returns the winner (player one or player two)
  #   - If the game is over, it returns a string stating that the game is already over
  # It ends after a player wins 2 of 3 games
  it 'has a PLAY method that takes each players move and returns winner' do
    #game1 = RPS.new("Tom", "Jon")
    #expect(game1.play("rock","rock")).to eq(2)
    #expect(game1.play("rock","scissors")).to eq(3)
    #expect(game1.play("rock","paper")).to eq(4)
  end

  it 'ends the game after a player wins 2 of 3 games' do
    #game1 = RPS.new("Tom", "Jon")
    #game1.play("rock","rock")
    #game1.play("rock","scissors")
    #game1.play("rock","scissors")
    #expect(game1.name1_win_count).to eq(2)
  end

end

describe 'RPS Player' do
  it 'gets players names to initiate new instance of RPS' do
    x = RPSPlayer.new()
    x.get_name()
    y = RPSPlayer.new()
    y.get_name()
    game1 = RPS.new(x,y)
    puts game1.player1.name
    puts game1.play(x.start(),y.start())
  end

end
































