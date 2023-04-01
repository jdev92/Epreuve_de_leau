#/usr/bin/env/ruby

# Fonction utilisée
def minimum_abs_dif(arr)
    a = arr.length 
    min_diff = nil 
    for i in 0...a 
      for j in (i+1)...a 
        # Calcul de la différence absolue entre deux éléments du tableau
        diff = (arr[i] - arr[j]).abs 
        if min_diff.nil? || diff < min_diff
          min_diff = diff
        end
      end
    end
    return min_diff
end

# Partie 1 : Gestion d'erreur
if ARGV.empty? || ARGV[0].match(/[a-zA-Z]/) 
    puts "error" 
    exit 1 
end

# Partie 2 : Parsing
num_arr = []
ARGV.each do |arg|
    num = arg.to_i
    num_arr << num
end

# Partie 3 : Résolution
result = minimum_abs_dif(num_arr)

# Partie 4 : Affichage
puts "#{result}"