class Array
  def pinject(base = nil)
    accumulator = (base ? base : self.shift)
    self.each { |value| accumulator = yield(accumulator, value) }
    accumulator
  end
end
