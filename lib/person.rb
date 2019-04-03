
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  PERSON = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

# syntax for writer when defining a method involves "="
  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end
    # @happiness = num
    # @happiness = 10 if @happiness > 10
    # @happiness = 0 if @happiness < 0

    def hygiene=(num)
      if num > 10
        @happiness = 10
      elsif num < 0
        @happiness = 0
      else
        @happiness = num
      end
    end


  # def hygiene=(num)
  #   @hygiene = num
  #   @hygiene = 10 if @happiness > 10
  #   @hygiene = 0 if @happiness < 0
  # end

  def happy?
    if happiness > 7
      return True
    end 
  end 



  def clean?
    if hygiene > 7
      return True
    end 
  end 



  def get_paid(salary)
    salary += @bank_account
    return "all about the benjamins"
  end 

  def take_bath
    #talking about the same @hygiene variable
    self.hygiene += 4
    return "Rub-a-dub just relaxing in the tub"
  end


    def work_out
      self.hygiene -= 3
      self.happiness += 2 
      return "another one bites the dust"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        return "blah blah sun blah rain"
      else 
        self.happiness += 0 
        person.happiness += 0
         return "blah blah blah blah blah"
       end 
     end
        
        
      

    
end

