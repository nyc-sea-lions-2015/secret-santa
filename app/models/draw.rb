class Draw
  attr_reader :list
  def initialize(list)
    @list = list
  end

  def shuffle_list
    # This looks like it works... but its confusing...
    # Theres definitely a better way to do this... :/
    givers = list.shuffle
    receivers = givers
    last = receivers.shift
    receivers = receivers.push(last)
  end
end
