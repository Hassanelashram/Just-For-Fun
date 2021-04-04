require './blockchain.rb'
require './app.rb'
block_chain = BlockChain.new

app = App.new

case app.start_menu_choice
when "1"
    app.add_new_block(block_chain)
    app.start_menu_choice
when "2"
    app.print_blockchain(block_chain)
when "3"
    exit
end
