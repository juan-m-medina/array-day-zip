# frozen_string_literal: true

# Minor refinement/Extension methods
module FixedParse
  refine String do
    def split_and_strip_every(length)
      chars.each_slice(length).map(&:join).map(&:rstrip)
    end
  end
end
