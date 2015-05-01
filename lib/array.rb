class Array
  def pinject(*args, &block)
    if args[0].is_a? Symbol
      pinject_with_symbol(*args, &block)
    else
      pinject_with_block(*args, &block)
    end
  end

  def pinject_with_symbol(*args, &block)
    copy_of_array = self.dup
    accumulator = copy_of_array.shift
    block = args[0].to_proc
    copy_of_array.each { |value| accumulator = block.call(accumulator, value) }
    accumulator
  end

  def pinject_with_block(*args, &block)
    copy_of_array = self.dup
    if args.empty?
      accumulator = copy_of_array.shift
    else
      accumulator = args[0]
    end
    copy_of_array.each { |value| accumulator = block.call(accumulator, value) }
    accumulator
  end
end
