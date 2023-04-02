#/usr/bin/env/ruby

# Fonction utilisée
def bubble_sort(arr)
    array_size = arr.length
    for i in 0..array_size -2
        for j in 0..array_size - i -2
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    return arr
end

# Partie 1 : Gestion d'erreur
(puts "error"; exit 1) if ARGV.empty? || ARGV[0].match(/[a-zA-Z]/)

# Partie 2 : Parsing
arr = []
ARGV.each do |arg|
    arr << arg.to_i
end

# Partie 3 : Résolution
result = bubble_sort(arr)

# Partie 4 : Affichage 
puts result.join(" ")