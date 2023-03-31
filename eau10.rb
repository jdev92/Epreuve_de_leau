#/usr/bin/env/ruby

# Fonction utilisée
def index_wanted(args, element)
    args = ARGV[0...-1]
    element = ARGV[-1]
    index = -1
    for i in 0...args.length
        if args[i] == element
            index = i
            break
        end
    end
    return index
end

# Partie 1 : Gestion d'erreur
(puts "error"; exit 1) if ARGV.empty?

# Partie 2 : Parsing
args = ARGV[0...-1]
element = ARGV[-1]

# Partie 3 : Résolution
index = index_wanted(args, element)

# Partie 4 : Affichage
puts index 