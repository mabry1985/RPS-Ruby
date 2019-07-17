#!/usr/bin/env ruby

require('pry')

class RPS

  def initialize ()
    @choice_array = ["rock", "paper", "scissors"]
  end

  def wins?(choice1, choice2)

    case
    when choice1 === "rock" && choice2 === "scissors"
          true
    when choice1 === "scissors" && choice2 === "paper"
          true
    when choice1 === "paper" && choice === "rock"
          true
    when choice1 === choice2
          "tie"
    else
          false
    end

  end

  def computer_match(choice1)
    computer_choice = @choice_array.shuffle[0]
    if wins?(choice1, computer_choice) == true
        "You win!"
    else
        "You lose, sucker!"
    end
  end

end

our_game = RPS.new()

puts "The match begins, pick your weapon!!!"
puts "Rock, Paper, or Scissors"
puts "Choose wisely!"
choice = gets.chomp
puts our_game.computer_match(choice)
