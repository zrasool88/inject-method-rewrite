class Array
  def pinject(*args, &block)
    block = args[0].to_proc if args[0].is_a? Symbol
    accumulator(*args, &block)
  end

  def accumulator(*args, &block)
    copy_of_array = self.dup
    if args.empty? || args[0].class == Symbol
      acc = copy_of_array.shift
    else
      acc = args[0]
    end
    copy_of_array.each { |value| acc = block.call(acc, value) }
    acc
  end
end
