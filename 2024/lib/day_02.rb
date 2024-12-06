module Day02
  @title = 'Red-Nosed Reports'

  class << self
    attr_reader :title

    def day
      name.gsub('Day', '').to_i
    end

    def solve_part_one(input)
      reports = Report.parse(input)
      reports.count(&:safe?)
    end

    def solve_part_two(input)
      reports = Report.parse(input)
      reports.count(&:safe_when_dampened?)
    end
  end

  class Report
    MIN_DELTA = 1
    MAX_DELTA = 3

    class << self
      def parse(string)
        string.split("\n").map do |line|
          levels = line.scan(/\d+/).map(&:to_i)
          new(*levels)
        end
      end
    end

    def initialize(*levels)
      @levels = levels
    end

    attr_reader :levels

    def deltas
      @deltas || levels.each_cons(2).map { |a, b| b - a }
    end

    def increasing?
      deltas.all?(&:positive?)
    end

    def decreasing?
      deltas.all?(&:negative?)
    end

    def gradual?
      deltas.all? { |d| d.abs.between? MIN_DELTA, MAX_DELTA }
    end

    def safe?
      (increasing? || decreasing?) && gradual?
    end

    def dampened_reports
      levels
        .combination(levels.size - 1)
        .map { |levels| self.class.new(*levels) }
    end

    def safe_when_dampened?
      safe? || dampened_reports.any?(&:safe?)
    end
  end
end
