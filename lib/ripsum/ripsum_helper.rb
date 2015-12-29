module Ripsum
  def ripsum(standard, variance=0)
    lorem = library
    text = []

    lorem_array = lorem.split(' ').shuffle

    while standard > lorem_array.length
      lorem_array.concat(lorem_array.shuffle)
    end

    if variance != 0
      min = standard - (standard * variance)
      max = standard + (standard * variance)
      word_count = rand(min..max).floor
    else
      word_count = standard
    end

    1..word_count.times do |i|
      if i == 0
        text << lorem_array[i].capitalize
      else
        text << lorem_array[i]
      end
    end

    return text.join(' ')
  end

  private

  def library
    Ripsum.configuration.library
  end
end
