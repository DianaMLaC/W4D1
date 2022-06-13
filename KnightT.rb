require "00_tree_node.rb"

class KnightPathFinder
    

    MOVES = [[-2,-1], [-2, 1],[-1,-2],[-1,2],[1,-2],[1,2],[2,-1],[2, 1]]]
    def self.valid_moves(pos)
        valid_moves = []

        curr_x, curr_y = pos
        MOVES.each do |[dx, dy]|
            new_pos =[curr_x + dx, curr_y + dy]
            if new_pos.all? { |coord| coord.between?(0,7)}
                valid_moves << coord
            end
        end
        valid_moves

    end
    
    def nex_pos
        new_moves.shuffle.last
    end

    def new_move_positions(pos)
        new_moves = KnightT.valid_moves(pos)
        new_moves.select do |coor|
            x, y = coor
            considered_positions.each {|past_pos| false ? (past_pos.first == x && past_pos.last == y) : true }

        end
        new_moves
    end


    def initialize(start_pos)
        @start_pos = start_pos
        @root_node = PolyTreeNode.new(start_pos) #

    end

    def build_move_tree
        @considered_positions = [start_pos] #[2, 1] << next_pos

    end

    

end