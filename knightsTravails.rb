class KnightPathFinder
    attr_accessor :root_node
    attr_reader :start_pos

    def self.valid_moves(pos)

        Moves = [
            [1,2],
            [1,-2],
            [-1,2],
            [-1,-2],
            [2,1],
            [2,-1],
            [-2,1],
            [-2,-1]
        ]

        valid_mov = []

        col, row = pos
        Moves.each.with_index do |ele, i|
            new_pos = [col + ele[i][0], row + ele[i][1]] 
            if new_pos.all?{ |val| each   }
        end
         #row [0,0] + [1,2] = [1,2]
        

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