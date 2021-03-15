class PolyTreeNode
    attr_reader :value, :children, :parent
    def initialize(value, parent=nil, children=[])
        @value = value
        @parent = parent
        @children = children
    end

    def parent=(new_parent)
        if parent
            parent.children.delete(self)
        end
        @parent = new_parent
        if !(self.parent.nil?) && !(new_parent.children.include?(self))
            new_parent.children << self #unless self.parent.nil?
        end
            
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        if !self.children.include?(child)
            raise "node is not a child"
        end
        child.parent = nil
    end

    def dfs(target_val= nil)

        return self if self == target_val

        self.children.each do |child|
            child.dfs(target_val)
       end
       nil
    end

end