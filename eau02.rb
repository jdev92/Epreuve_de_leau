#/usr/bin/env/ruby

# Fonctions utilisée 
def inverse_args()
    args = ARGV
    a = args.length
    if ARGV.empty?
# Partie 1 : Gestion d'erreur
        puts "Error."
        exit 1
    else
# Partie 2 : Parsing
# Inverse l'ordre des arguments
        for i in 0...(a/2) do
            args[i], args[a-i-1] = args[a-i-1], args[i]
        end
# Partie 3 : Résolution
# Affiche les arguments à l'envers
        args.each do |arg|
            puts args
        end
    end
end
# Parite 4 : Affichage du résultat
inverse_args()