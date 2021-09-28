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

#a while loop that runs 10 times
while x <= 9

    game = FlashCard.new(array_num.sample,array_num.sample)

    p "What is the sum of #{game.num1} + #{game.num2} ?"

    answer = gets.chomp.to.i
#
    if answer == (game.num1 + game.num2)
        p "Correct"
        correct += 1
    else
        p "Wrong"
        wrong += 1
    end
    
    x += 1 
end
p "You got #{correct} correct and #{wrong} wrong"     