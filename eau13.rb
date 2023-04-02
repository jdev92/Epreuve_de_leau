#/usr/bin/env/ruby

# Fonction utilisée
def sort_by_selection(arr)
    a = arr.length
    for i in 0..a-2
        min_index = i
        for j in i+1..a-1
            if arr[j] < arr[min_index]
                min_index = j
            end
        end
        if min_index != i
            arr[min_index], arr[i] = arr[i], arr[min_index]
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
result = sort_by_selection(arr)

# Partie 4 : Affichage
puts result.join(" ")