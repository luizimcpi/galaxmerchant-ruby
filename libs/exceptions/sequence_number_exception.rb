class SequenceNumberError < StandardError
    def initialize(msg="glob and pish values can´t repeat more than 3 times in sequence.")
      super
    end
end