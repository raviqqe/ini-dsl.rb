require 'block-is-hash'

require_relative 'compiler'



def ini_dsl &block
  repeats = %i(server load_module)
  Compiler.new(repeats).compile block_is_hash(repeats, &block)
end
