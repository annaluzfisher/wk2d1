# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

  def span
    return nil if self.length == 0
    if self.each{|ele| ele == ele.to_i} 
       return self.max - self.min
    end
     return nil 
  end

  def average
    return nil if self.length == 0
    if self.each{|ele| ele == ele.to_i} 
       return (self.sum / self.length)/1.00
    end

  end

  def median
    sorted = self.sort
    if sorted.length.odd?
        idx = (sorted.length / 2 ) + 1
        return sorted[idx]
    else
        

  end

  def counts
  end
end
