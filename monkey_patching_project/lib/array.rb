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
       return self.sum / self.length.to_f
    end

  end

  def median
    return nil if self.length == 0
    sorted = self.sort
    if sorted.length.odd?
        idx = (sorted.length / 2 )
        return sorted[idx]
    else
        idx1 = sorted.length/2
        idx2 = idx1-1
        return (sorted[idx1]+sorted[idx2]) / 2.000
    end
  end

  def counts
    hash = Hash.new(0)
    self.each {|ele| hash[ele] += 1}
    hash
  end

  def my_count(n)
    count = 0
    self.each { |ele| ele == n ? count+=1 : count == count}
    count
  end

  def my_index(n)
    return nil if !self.include?(n)
    self.each_with_index {|ele, i| return i if ele == n}
  end

  def my_uniq
    unique = []
    self.each do |ele|
        if !unique.include?(ele)
            unique << ele
        end
    end
unique
  end

  def my_transpose
   arr = Array.new(self.length){Array.new}
    self.each_with_index do |subarr, i|
        subarr.each_with_index do|ele,idx|
            arr[idx][i] = ele
        end
    end
    arr
    end
end