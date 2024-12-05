module Day01
  @title = 'Historian Hysteria'

  class << self
    attr_reader :title

    def day
      name.gsub('Day', '').to_i
    end

    def solve_part_one input
      left, right = List.parse input
      left.total_distance_from right
    end

    def solve_part_two input
      left, right = List.parse input
      left.similarity_score right
    end
  end

  class List
    class << self
      def parse string
        lines   = string.split("\n").map { |str| str.scan(/\d+/).map &:to_i }
        columns = lines.transpose
        columns.map { |column| self.new(*column) }
      end
    end

    def initialize *location_ids
      @location_ids = location_ids
    end

    attr_reader :location_ids

    def sort
      location_ids.sort
    end

    def distances_from other
      sort.zip(other.sort).map { |a, b| (a - b).abs }
    end

    def total_distance_from other
      distances_from(other).sum
    end

    def tally
      location_ids.tally
    end

    def similarity_score other
      tally = other.tally
      location_ids.map { |id| id * (tally[id] || 0) }.sum
    end
  end
end
