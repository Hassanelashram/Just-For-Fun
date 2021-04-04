require './block.rb'
require 'byebug'
class BlockChain
    attr_accessor :chain

    def initialize()
        @chain = [Block.new({}, "GenesisBlock")]
    end

    def latestBlock
        chain[-1]
    end

    def addBlock(newBlock)
        newBlock.previous_hash = latestBlock.hash
        newBlock.hash = newBlock.generate_hash
        chain << newBlock
    end

end