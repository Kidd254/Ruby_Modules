module MyEnumerable
    def all?(&block)
        each {|e| return false unless block.call(e)}
        true
    end
    
    def any?(&block)
        each {|e| return true if block.call(e)}
        false
    end

    def filter?(&block)
        filtered = []
        each {|e| filtered << if block.call(e)}
        result
    end
end