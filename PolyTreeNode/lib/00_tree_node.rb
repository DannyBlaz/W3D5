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

    def dfs(target_val)

        return self if self.value == target_val

        self.children.each do |child|
           search_val = child.dfs(target_val)
           return search_val unless search_val.nil?
       end
       nil
    end

    def bfs(target_val=nil)
        queue = [self]
        until queue.empty?
            el = queue.shift
            return el if el.value == target_val
           queue.concat(el.children)
        end
        nil
    end

end