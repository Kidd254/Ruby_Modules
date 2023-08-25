module MyEnumerable
  def all?(&block)
    each { |e| return false unless block.call(e) }
    true
  end

  def any?(&block)
    each { |e| return true if block.call(e) }
    false
  end

  def filter(&block)
    filtered = []
    each { |e| filtered << e if block.call(e) }
    filtered
  end
end
