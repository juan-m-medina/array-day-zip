# frozen_string_literal: true

require './fixed_parse.rb'
require 'optparse'

using FixedParse


def fixed_file_to_hash_array(file_name)
  content = File.readlines(file_name)

  headers = content.delete_at(0).split_and_strip_every(15)

  result = []
  content.each do |line|
    data = line.chomp.split_and_strip_every(15)
    hashed_line = {}
    headers.each_with_index do |header, index|
      hashed_line[header] = data[index]
    end
    result << hashed_line
  end

  result
end

options = {}

OptionParser.new do |opt|
  opt.on('--file_name FILENAME') { |option| options[:file_name] = option }
end.parse!

puts 'No file name provided' && return unless options[:file_name]

pp fixed_file_to_hash_array(options[:file_name])
