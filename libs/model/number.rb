class Number
    attr_accessor :value
    attr_accessor :sequence_times

    def initialize(value)
        @value = value
        @sequence_times = 0
    end

    def default_sequence_times
        @sequence_times = 0
    end

    def increment_sequence_times
        @sequence_times += 1
    end

end