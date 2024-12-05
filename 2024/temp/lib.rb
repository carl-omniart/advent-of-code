module ModuleName
  @title = '___'

  class << self
    attr_reader :title

    def day
      name.gsub('Day', '').to_i
    end

    def solve_part_one input
      nil
    end

    def solve_part_two input
      nil
    end
  end
end
