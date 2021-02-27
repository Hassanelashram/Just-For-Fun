require 'pry-byebug'
class Node
    attr_accessor :value, :left, :right

    def initialize(value)
        @value = value
    end

    def find_node(node, value)
        return false unless node
        return true if node.value == value
        find_node(node.left, value) || find_node(node.right, value)
    end

    def self.build_tree(parent_node)
        parent_node.left = Node.new(rand(1..10))
        parent_node.right = Node.new(rand(1..10))
        node = parent_node.left
        node.left = Node.new(rand(1..10))
        node.right = Node.new(rand(1..10))
        node = parent_node.right
        node.left = Node.new(rand(1..10))
        node.right = Node.new(rand(1..10))
    end
end


#                    (  4  )
#                   /       \
#                  /         \
#                (2)         (6)
#               /   \       /   \
#              /     \     /     \
#            (3)     (8) (1)     (9)

parent_node = Node.new(4)
tree = Node.build_tree(parent_node)

p parent_node.find_node(parent_node, 2)