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

        M

        

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