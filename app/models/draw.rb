class Draw
  attr_reader :list
  def initialize(list)
    @list = list
  end

  def shuffle_list
    givers = list.shuffle
    receivers = givers
    last = receivers.shift
    receivers = receivers.push(last)
  end
end
