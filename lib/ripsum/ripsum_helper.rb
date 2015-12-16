module Ripsum
  def ripsum(standard, variance)
    lorem = library
    text = []

    min = standard - (standard * variance)
    max = standard + (standard * variance)
    lorem_array = lorem.split(' ').shuffle

    while standard > lorem_array.length
      lorem_array.concat(lorem_array.shuffle)
    end

    random_number = rand(min..max).floor

    1..random_number.times do |i|
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
