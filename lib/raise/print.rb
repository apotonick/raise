module Raise
  module_function
  def print(*objects)
    invoker = caller[1].match(/`(.+)'/)
    puts "@@@ ##{bold(invoker)}: #{objects.map(&:inspect).join("\n    ---------\n    ")}"
  end

  def bold(string)
    "\e[1m#{string}\e[22m"
  end
end
