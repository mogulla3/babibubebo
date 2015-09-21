# require "babibubebo/version"
require 'yaml'

module Babibubebo
  @table = YAML.load_file('./data/babibubebo.yml')

  class << self
    def encode(sentence)
      sentence.split("").map {|char| self.to_babibubebo(char) }.join
    end

    def decode(sentence)
      sentence.split("").each_with_index.map do |char, index|
        next if index.odd? && self.babibubebo?(char)
        char
      end.join
    end

    def to_babibubebo(char)
      case @table[char]
      when 1
        char + "ば"
      when 2
        char + "び"
      when 3
        char + "ぶ"
      when 4
        char + "べ"
      when 5
        char + "ぼ"
      else
        char
      end
    end

    def babibubebo?(char)
      ["ば", "び", "ぶ", "べ", "ぼ"].include?(char)
    end
  end
end
