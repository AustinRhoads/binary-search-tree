class BST 
    
    

        attr_accessor :data, :left, :right

        def initialize(data)
            @data = data
            @left = nil
            @right = nil
        end


        def insert (val)

            if val <= self.data

                self.left.nil? ? self.left = BST.new(val) : self.left.insert(val)

            elsif val > self.data

                self.right.nil? ? self.right = BST.new(val): self.right.insert(val)

            end
        end

        def each(&block)
            if self.left
                self.left.each(&block)
            end
            block.call(self.data)
            if self.right
                self.right.each(&block)
            end
           
        end

    

end