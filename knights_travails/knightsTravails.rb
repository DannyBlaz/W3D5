require "byebug"
class KnightPathFinder
    attr_accessor :root_node
    attr_reader :start_pos

     
    MOVES = [
           [1,2],
           [1,-2],
           [-1,2],
           [-1,-2],
           [2,1],
           [2,-1],
           [-2,1],
           [-2,-1]
       ]

    def self.valid_moves(pos)
        valid_mov = []
        col, row = pos
        MOVES.each do |subarr|
            new_pos = [col + subarr[0], row + subarr[1]] 
            if (new_pos[0] >= 0 && new_pos[0] <= 7) && (new_pos[1] >= 0 && new_pos[1] <= 7)
                valid_mov << new_pos
            end
        end
        
        valid_mov

    end

    def initialize(start_pos)
        @size = Array.new(8) {Array.new(8,[])}
        @start_pos = start_pos
        @conciderd_pos = [start_pos]
        build_move_three
    end

    def self.root_node

    end

    def build_move_three
        self.root_node = PolyTreeNode(start_pos)
    end
end

p KnightPathFinder.valid_moves([4,4])