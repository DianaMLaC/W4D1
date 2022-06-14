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
        new_moves.select{ |coor| !considered_positions.include?(coor)}
        

        end
        new_moves
    end


    def initialize(start_pos)
        @start_pos = start_pos
        # @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [start_pos] #
        
        build_move_tree
    end

    def find_path
    end

    def build_move_tree
        while queue != []
            queue << @new_move_positions
        end
        
         #[2, 1] << next_pos
            #considered_positions is an array with the start x and y
        
    end

    

end