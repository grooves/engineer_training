
module Effects
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->(words) do
      words.chars.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.loud(num)
    ->(words) do
      words.split(' ').map {|w| w.upcase + '!'*num }.join(' ')
    end
  end
end
