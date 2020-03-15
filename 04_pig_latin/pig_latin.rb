
def translate string
    string.split(' ').map{ |str| str.sub(/^(([^aeiouq]|qu)*)(.+)/, '\3\1ay') }.join(' ')
end