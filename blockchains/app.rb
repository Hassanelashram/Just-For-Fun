
class App 
    def start_menu_choice
        puts "What would you like to do ?"
        puts "1. Create a new block"
        puts "2. See Block Chain Information"
        puts "3. Exit"
        gets.chomp
    end

    def print_blockchain(block_chain)
        block_chain.chain.each do |block|
            puts "Hash: #{block.hash}"
            puts "Previous Hash: #{block.previous_hash}"
            puts "Amount Transaction: #{block.data[:amount]}"
            puts "Made by: #{block.data[:name]} on the #{block.timestamp}"
            puts "#" * 20
        end
    end

    
    def add_new_block(block_chain)
        puts "What is your name?"
        name = gets.chomp
        puts "How many coins do you want to send?"
        amount = gets.chomp.to_i
        block_chain.addBlock(Block.new({name: name, amount: amount}))
    
        puts "added successfully!"
    end
end