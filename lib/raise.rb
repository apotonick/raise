require "raise/version"

module Raise
  # Your code goes here...
end

require "raise/print"
Object.class_eval do
  # alias_method Raise.method(:print), put
  def put(*args)
    Raise.print(*args)
  end
end
