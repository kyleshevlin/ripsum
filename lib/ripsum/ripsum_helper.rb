module Ripsum
  def ripsum(standard, variance=1)
    lorem = library
    text = []

    lorem_array = lorem.split(' ').shuffle

    while standard > lorem_array.length
      lorem_array.concat(lorem_array.shuffle)
    end

    if variance != 1
      min = standard - (standard * variance)
      max = standard + (standard * variance)
      word_count = rand(min..max).floor
      word_count
    else
      word_count = standard
      word_count
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
