def echo string
    string
end

def shout string
    string.upcase
end

def repeat string, times=2
    ("#{string} " * times).rstrip
end

def start_of_word string, letters
   string.slice(0, letters)
end

def first_word string
    string.split(' ')[0]
end

def titleize string
    string.split(' ').each_with_index.map{ |a, i| a.littleword? && i > 0 ? a.downcase : a.capitalize }.join(' ')
end

class String
    @@little_words = [ 'a', 'the', 'and', 'but', 'in', 'over' ]

    def littleword?
        @@little_words.include?(self)
    end
end