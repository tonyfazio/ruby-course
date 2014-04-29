
module Exercises
  # Exercise 0
  #  - Triples a given string `str`
  #  - Returns "nope" if `str` is "wishes"
  def self.ex0(str)
    if str == "wishes"
      "nope"
    else
      str*3
    end
  end

  # Exercise 1
  #  - Returns the number of elements in the array
  def self.ex1(array)
    array.length
  end

  # Exercise 2
  #  - Returns the second element of an array
  def self.ex2(array)
    array[1]
  end

  # Exercise 3
  #  - Returns the sum of the given array of numbers
  def self.ex3(array)
    d = 0
    for i in 0...array.length
      d+=array[i]
    end
    d
  end

  # Exercise 4
  #  - Returns the max number of the given array
  def self.ex4(array)
    d = array[0]
    for i in 0...array.length
      d = array[i] if array[i] > d
    end
    d
  end

  # Exercise 5
  #  - Iterates through an array and `puts` each element
  def self.ex5(array)
    for i in 0...array.length
      puts array[i]
    end
  end

  # Exercise 6
  #  - Updates the last item in the array to 'panda'
  #  - If the last item is already 'panda', update
  #    it to 'GODZILLA' instead
  def self.ex6(array)
    if array[-1] == 'panda'
      array[-1] = 'GODZILLA'
      array.last
    else
      array[-1] = 'panda'
      array.last
    end
  end

  # Exercise 7
  #  - If the string `str` exists in the array,
  #    add `str` to the end of the array
  def self.ex7(array, str)
    if array.include? (str)
      array<<str
      array.last
    else
      array.last
    end
  end

  # Exercise 8
  #  - `people` is an array of hashes. Each hash is like the following:
  #    { :name => 'Bob', :occupation => 'Builder' }
  #    Iterate through `people` and print out their name and occupation.
  def self.ex8(people)
    people.each do |x, y|
      puts y
    end
  end

  # Exercise 9
  #  - Returns `true` if the given time is in a leap year
  #    Otherwise, returns `false`
  # Hint: Google for the wikipedia article on leap years
  def self.ex9(time)
    Date.new(time.year).leap?
  end
end

require 'io/console'
class RPS
  # Rock, Paper, Scissors
  # Make a 2-player game of rock paper scissors. It should have the following:
  #
  # It is initialized with two strings (player names).
  # It has a `play` method that takes two strings:
  #   - Each string reperesents a player's move (rock, paper, or scissors)
  #   - The method returns the winner (player one or player two)
  #   - If the game is over, it returns a string stating that the game is already over
  # It ends after a player wins 2 of 3 games
  #
  # You will be using this class in the following class, which will let players play
  # RPS through the terminal.
  attr_reader :name1, :name2
  attr_accessor :name1_win_count, :name2_win_count, :player1, :player2
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @name1 = @player1.name
    @name2 = @player2.name
    @name1_win_count = 0
    @name2_win_count = 0
  end


  def play(move1, move2)
    if move1 == move2
      puts "It's a tie! Great minds think alike."
      p1_new_move = STDIN.noecho(&:gets)
      p2_new_move = STDIN.noecho(&:gets)
      play(p1_new_move, p2_new_move)
    elsif move1 = "rock"
      if move2 = "scissors"
        puts "#{@name1} is the winner"
        @name1_win_count +=1
        if @name1_win_count > 1
          puts "#{@name1} wins the game"
        else
          puts "play on"
          p1_new_move = STDIN.noecho(&:gets)
          p2_new_move = STDIN.noecho(&:gets)
          play(p1_new_move, p2_new_move)
        end
      else
        puts "#{@name2} is the winner"
        @name2_win_count +=1
        if @name2_win_count > 1
          puts "#{@name2} wins the game"
        else
          puts "play on"
          p1_new_move = STDIN.noecho(&:gets)
          p2_new_move = STDIN.noecho(&:gets)
          play(p1_new_move, p2_new_move)
        end
      end
    elsif move1 = "scissors"
      if move2 = "paper"
        puts "#{@name1} is the winner"
        @name1_win_count +=1
        if @name1_win_count > 1
          puts "#{@name1} wins the game"
        else
          puts "play on"
          p1_new_move = STDIN.noecho(&:gets)
          p2_new_move = STDIN.noecho(&:gets)
          play(p1_new_move, p2_new_move)
        end
      else
        puts "#{@name2} is the winner"
        @name2_win_count +=1
        if @name2_win_count > 1
          puts "#{@name2} wins the game"
        else
          puts "play on"
          p1_new_move = STDIN.noecho(&:gets)
          p2_new_move = STDIN.noecho(&:gets)
          play(p1_new_move, p2_new_move)
        end
      end
    elsif move1 = "paper"
      if move2 = "rock"
        puts "#{@name1} is the winner"
        @name1_win_count +=1
        if @name1_win_count > 1
          puts "#{@name1} wins the game"
        else
          puts "play on"
          p1_new_move = STDIN.noecho(&:gets)
          p2_new_move = STDIN.noecho(&:gets)
          play(p1_new_move, p2_new_move)
        end
      else
        puts "#{@name2} is the winner"
        @name2_win_count +=1
        if @name2_win_count > 1
          puts "#{@name2} wins the game"
        else
          puts "play on"
          p1_new_move = STDIN.noecho(&:gets)
          p2_new_move = STDIN.noecho(&:gets)
          play(p1_new_move, p2_new_move)
        end
      end
    end
  end
end



class RPSPlayer
    attr_accessor :move, :name

    def get_name
      @name = gets.chomp
    end
  # (No specs are required for RPSPlayer)
  #
  # Complete the `start` method so that it uses your RPS class to present
  # and play a game through the terminal.
  #
  # The first step is to read (gets) the two player names. Feed these into
  # a new instance of your RPS class. Then `puts` and `gets` in a loop that
  # lets both players play the game.
  #
  # When the game ends, ask if the player wants to play again.
  def start
    # TODO

    # PRO TIP: Instead of using plain `gets` for grabbing a player's
    #          move, this line does the same thing but does NOT show
    #          what the player is typing! :D
    # This is also why we needed to require 'io/console'
    @move = STDIN.noecho(&:gets)
  end
end


module Extensions
  # Extension Exercise
  #  - Takes an `array` of strings. Returns a hash with two keys:
  #    :most => the string(s) that occures the most # of times as its value.
  #    :least => the string(s) that occures the least # of times as its value.
  #  - If any tie for most or least, return an array of the tying strings.
  #
  # Example:
  #   result = Extensions.extremes(['x', 'x', 'y', 'z'])
  #   expect(result).to eq({ :most => 'x', :least => ['y', 'z'] })
  #
  def self.extremes(array)
    # TODO
  end
end
