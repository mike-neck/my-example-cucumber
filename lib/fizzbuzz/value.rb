class Value
  attr_accessor :number, :processed_value

  def initialize(number, processed_value = nil)
    @number = number
    @processed_value = processed_value
  end

  def get
    if @processed_value.nil? || @processed_value.empty?
      @number.to_s
    else
      @processed_value
    end
  end

  def append(param)
    if @processed_value.nil? || @processed_value.empty?
      Value.new(@number, param)
    else
      Value.new(@number, @processed_value + param)
    end
  end

  def ==(other)
    other.is_a?(Value) && other.number == @number && other.processed_value == @processed_value
  end

  def hash
    [@number, @processed_value].hash
  end

  def eql?(other)
    other.is_a?(Value) && number == other.number && @processed_value == other.processed_value
  end
end
