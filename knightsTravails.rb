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
             new_pos.all? do |pos_val|
                if (new_pos[0] >= 0 && new_pos[0] <= 7) && (new_pos[1] >= 0 && new_pos[1] <= 7)
                    valid_mov << new_pos
                end
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