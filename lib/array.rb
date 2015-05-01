class Array
  def pinject(*args, &block)
    copy_of_array = self.dup
    accumulator = copy_of_array.shift if (args[0].is_a? Symbol) || (args.empty?)
    accumulator = args[0] if (!args[0].is_a? Symbol) && (!args.empty?)
    block = args[0].to_proc if args[0].is_a? Symbol
    copy_of_array.each { |value| accumulator = block.call(accumulator, value) }
    accumulator
  end
end
