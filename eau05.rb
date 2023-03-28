#/usr/bin/env/ruby

# Fonction utilisée
def str_in_str()
    str1 = ARGV[0].to_s
    str2 = ARGV[1].to_s
    if ARGV.length != 2 || str1 == str2
# Partie 1 : Gestion d'erreur
        puts "Error."
        exit 1
    else
# Partie 2 : Parsing
# Parcourir chaque sous-chaîne de str1 de la même longueur que str2
        (0..str1.length - str2.length).each do |i|
# Partie 3 : Résolution
# Vérifier si la sous-chaîne est égale à str2
            if str1[i, str2.length] == str2
                puts "True."
                return
            end
        end
        puts "False."
    end
end
# Partie 4 : Affichage
str_in_str()