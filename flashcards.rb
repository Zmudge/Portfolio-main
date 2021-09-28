p "Flash Card Game"
array_num =*(0..9)

correct = 0

wrong = 0

x = 0

class FlashCard
    attr_accessor :num1, :num2

    def initialize(number1, number2)

        @num1 = number1
        @num2 = number2
    end
    
    def to_s
        p "what is the sum of #{@num1} + #{@num2}"
    end
end        