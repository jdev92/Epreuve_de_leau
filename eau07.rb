#/usr/bin/env/ruby

# Fonction utilisée
def uppercase()
    if ARGV.empty? || !(ARGV[0].match?(/[[:alpha:]]/))
# Partie 1 : Gestion d'erreur
        puts "Error."
        exit 1
    else
# Partie 2 : Parsing
        str = ARGV[0]
        result = ""
        words = str.split(/[\s\t\n]+/)
        
# Partie 3: Résolution
        for i in 0...words.length
# Récupère la première lettre du mot
            first_letter = words[i][0]
# Si la première lettre est un caractère de ponctuation, on la supprime
            if first_letter =~ /[^a-zA-Z]/ 
                words[i] = words[i][1..-1]
                first_letter = words[i][0]
            end
            if i == 0
# Mettre la première lettre du mot en majuscule et le reste en minuscule
                result += first_letter.upcase + words[i][1..-1].downcase
            else
# Sinon, mettre la première lettre de chaque mot en majuscule
                result += " " + first_letter.upcase + words[i][1..-1].downcase
            end
        end
        
# Partie 4 : Affichage
        puts result
    end
end

uppercase()