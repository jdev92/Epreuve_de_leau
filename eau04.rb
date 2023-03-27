#/usr/bin/env/ruby

# Fonctions utilisées
# Fonctions qui retourne si un nombre est premier
def is_prime(n)
    if n <= 1
        false
    else
        for i in 2..(n-1) do
            if n % i == 0
                return false 
            end
        end
        return true 
    end
end

# Méthode qui retourne le prochain nombre premier supérieur à n
def next_prime(n)
    i = n + 1
        while true
            if is_prime(i)
            return i 
        end
        i += 1 
        end
end

    if ARGV.length == 0
# Partie 1 : Gestion d'erreur
        puts "-1"
        else
# Partie 2 : Parsing
        n = ARGV[0].to_i
# Partie 3 : Résolution
        next_prime = next_prime(n)
# Partie 4 : Affichage
        puts "#{next_prime}"
    end