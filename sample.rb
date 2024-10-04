# frozen_string_literal: true

environment = []
File.readlines('./sample.env').map do |line|
  environment << %w[key value].zip(line.chomp.split('=')).to_h
end

pp environment
