class PolyTreeNode

    # PolyTreeNode.new(node)
    attr_reader :value, :parent, :children
    
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
        
    end

    def children 
        @children.dup
    end

    def parent=(passed_node)
        @parent = passed_node #H
        # @children = passed_node's child #G
        passed_node.children << self
        # H = G's children
        # H's children should include g
        # @children G's children
    end

    def add_child(child_node)
        self.children << child_node 
    end

    def remove_child(child_node)
        
    end
end

module Searchable
    def dfs(target=nil, &prc)
        raise "Need a proc or target" if [target, prc].none?
        prc ||= Proc.new { |node| node.value == target }
    
        return self if prc.call(self)
        children.each do |child|
            result = child.dfs(&prc)
            return result unless result.nil?
        end

        nil
    end

    def bfs(target = nil, &prc)
        raise "Need a proc or target" if [target, prc].none?
        prc ||= Proc.new {|node| node.value == target }












