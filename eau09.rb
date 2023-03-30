#/usr/bin/env/ruby

# Fonction utilisée()
def in_min_and_max(a, b)
    if a < b
        while a < b
            print "#{a} "
            a += 1
        end
    else
        while b < a
            print "#{b} "
            b += 1
        end
    end
end

# Partie 1 : Gestion d'erreur
(puts "error" ; exit 1) if ARGV.length != 2 || (ARGV[0].match?(/[[:alpha:]]/))

# Partie 2 : Parsing
num1 = ARGV[0].to_i
num2 = ARGV[1].to_i

# Partie 3 : Résolution
result = min_max(num1, num2)

# Partie 4 : Affichage
puts result