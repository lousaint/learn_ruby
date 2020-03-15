class Book
    def title=(value)
        @title = titleize(value)
    end
    def title
        @title
    end
    def titleize string
        string.split(' ').each_with_index.map{ |a, i| a.littleword? && i > 0 ? a.downcase : a.capitalize }.join(' ')
    end    
end

class String
    @@little_words = [ 'a', 'an', 'the', 'and', 'but', 'in', 'over', 'of' ]

    def littleword?
        @@little_words.include?(self)
    end
end