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
end
