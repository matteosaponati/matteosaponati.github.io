# frozen_string_literal: true

# Jekyll 3.9 / Liquid 4 still calls Ruby's removed taint APIs.
# Loading this file through RUBYOPT keeps the local preview working on Ruby 3.3+.
class Object
  def tainted?
    false
  end

  def untaint
    self
  end
end
