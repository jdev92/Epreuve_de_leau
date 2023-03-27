#/usr/bin/env/ruby

# Fonction utilisée
def fibonacci(n)
    a = 0
    b = 1
    if n < 1
# Partie 1 : Gestion d'erreur
        puts "-1"
    else
# Partie 2 : Parsing
        while n > 0
            c = a + b
            a = b
            b = c
            n = n - 1
        end
        puts a
    end
end
# Partie 3 : Résolution
n = ARGV[0].to_i

# Partie 4 : Affichage du résultat 
puts fibonacci(n)