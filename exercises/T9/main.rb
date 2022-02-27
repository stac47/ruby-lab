#!/usr/bin/env ruby
# vi: set fileencoding=utf-8 :
# frozen_string_literal: true

# Handle T9 keyboard: predicts the best next word
class T9
  MANUALLY = 'MANUALLY'

  KEY_MAP = [
    [],             # 0
    [],             # 1
    %w[a b c],      # 2
    %w[d e f],      # 3
    %w[g h i],      # 4
    %w[j k l],      # 5
    %w[m n o],      # 6
    %w[p q r s],    # 7
    %w[t u v],      # 8
    %w[w x y z]     # 9
  ].freeze

  def initialize
    @dictionary = {}
  end

  def add_word(word, probability)
    @dictionary[word] = probability
  end

  def handle_input(input)
    choices = @dictionary.dup
    input.each_char.with_index do |key_pressed, index|
      break if key_pressed == '1'

      choices.delete_if { |key, _| !KEY_MAP[key_pressed.to_i].include? key[index] }
      best_choice = ['', 0]
      choices.each do |key, value|
        best_choice = [key, value] if value > best_choice[1]
      end
      puts(best_choice[0].size.positive? ? best_choice[0][0, index + 1] : T9::MANUALLY)
    end
    # New line between each input
    puts
  end
end

# Handle the inputs ans solve the problem
class Solution
  def run
    scenarios = gets.chomp.to_i
    1.upto(scenarios) do |index|
      puts "Scenario ##{index}"
      handle_scenario
    end
  end

  private

  def populate_dictionnary(predicter, size)
    1.upto(size) do
      word, probability = gets.chomp.split
      predicter.add_word(word, probability.to_i)
    end
  end

  def handle_scenario
    predicter = T9.new
    dict_size = gets.chomp.to_i
    populate_dictionnary predicter, dict_size
    inputs_number = gets.chomp.to_i
    1.upto(inputs_number) do
      predicter.handle_input gets.chomp
    end
  end
end

Solution.new.run
