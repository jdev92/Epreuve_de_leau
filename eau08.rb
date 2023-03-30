#/usr/bin/env/ruby

# Fonction utilisée
def only_number(str)
# Vérifie si le premier caractère de la chaîne est une lettre
    if str[0].match(/[[:alpha:]]/)
        puts "false"
    else 
        puts "true"
    end
end

# Partie 1 : Gestion d'erreur
(puts "error"; exit 1) if ARGV.length != 1

# Parie 2 : Parsing
str = ARGV[0]

# Parie 3 : Résolution
result = only_number(str)

# Parie 4 : Affichage
print result 