require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # binding.pry
    array = self.split
    total = 0
    array.each do |string|
      total += 1 if string.sentence?
      total += 1 if string.question?
      total += 1 if string.exclamation?
    end
    total
  end
end
