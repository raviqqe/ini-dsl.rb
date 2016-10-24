require 'block-is-hash'

require_relative 'from_hash'



def ini_file &block
  IniFile::from_hash block_is_hash([], &block)
end
