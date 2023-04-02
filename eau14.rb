#/usr/bin/env/ruby

# Fonction utilisée
def order_ascii(arr)
    a = arr.length
        for i in 0..a-2
            for j in i+1..a-1
                if arr[i] > arr[j]
                    arg = arr[i]
                    arr[i] = arr[j]
                    arr[j] = arg
                end
            end
        end
        return arr
    end
    
# Partie 1 : Gestion d'erreur
(puts "error"; exit 1) if ARGV.empty? || !ARGV[0].match(/[a-zA-Z]/)

# Partie 2 :Parsing
arr = []
ARGV.each do |arg|
    arr << arg
end

# Partie 3 : Résolution
result = order_ascii(arr)

# Partie 4 : Affichage
puts result.join(" ")