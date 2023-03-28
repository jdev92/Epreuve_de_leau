#/usr/bin/env/ruby

# Fonction utilisée
def uppercase_over_two()
    if ARGV.empty? || !!(ARGV[0] =~ /[^A-Za-z\s]/) || !(ARGV[0] =~ /\A[A-Za-z\s]+\z/)
# Partie 1 : Gestion d'erreur
        puts "Error."
    else
# Partie 2 : Parsing
    str = ARGV[0]
    result = ""
# Partie 3 : Résolution
        for i in 0...str.length
            if i % 2 == 0
                result += str[i].upcase
            else
                result += str[i].downcase
            end
        end
# Partie 4 : Affichage
        puts result
    end
end
uppercase_over_two()