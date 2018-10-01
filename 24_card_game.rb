class Card
    include Comparable
    def <=>(other)
        if @rank == 1
            ace_high_or_low
        end
        self.rank <=> other.rank
    end

    attr_reader :suit, :rank
    
    def initialize(suit, rank)
        # Create a new card
        @suit = suit
        @rank = rank
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        if @rank > 10
            true
        else
            false
        end
    end 
    
    def to_s
        # Return human readable card
        case @rank
        when 1
            card_name = 'Ace'
        when 13
            card_name = 'King'
        when 12
            card_name = 'Queen'
        when 11
            card_name = 'Jack'
        else
            card_name = @rank.to_s
        end
        
        card_suit = @suit.to_s.capitalize
        
        "#{card_name} of #{card_suit}"
    end

    def ace_high_or_low
        puts "Do you want your Ace to have a high or low value (H/L)?"
        reply = gets.chomp.upcase
        if reply == "H"
            @rank = 14
        else
            @rank = 1
        end
    end
end
