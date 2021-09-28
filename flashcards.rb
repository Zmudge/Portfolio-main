p "Flash Card Game"
questions=['2+2=', 'Who is the founder of Apple']
solution ['4', 'Steve Jobs']

#a Variable that stores the length of total quesstions in the array 
len_num = questions.length()

correct = 0

wrong = 0

x = 0

class FlashCard
    attr_accessor :arr1, :arr2

    def initialize(array1, array2)

        @arr1 = array1
        @arr2 = array2
    end
    
    def to_s
        p "#{@arr1} ?"
    end
end

#a while loop that runs 10 times
while x <= 9
#stores a random -1 is to avoid number exceeding the array length as its set to 0
    random_num = rand(len_num) -1
    p "You got #{correct} correct and #{wrong} wrong"

    game = FlashCard.new(questions,soloution)
    p "#{game.arr1[random_num]} ?"

    answer = gets.chomp.to_s

    if answer.downcase == (game.arr2[random_num].downcase)

    p "Correct"

    correct +=1

    else "Wrong" 
        wrong +=1
   
    end
    #increment in x variable to break loop
    x += 1
end

p "you got #{correct} correct and #{wrong} wrong" 

