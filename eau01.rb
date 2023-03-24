#/usr/bin/env/ruby

# Fonction utilisée
def combination_2_numbers()
numbers = []  
    for a in 0..99
        for b in a+1..99 
# Formatage de a et b pour que leurs valeurs soient tjr de 2 caractères puis ajout de la combinaison à la liste
        numbers << "%02d %02d" % [a, b]  
        end
    end
# Affichage des nombres triés dans l'ordre croissant
    for a in 0...numbers.length-1
        print "#{numbers[a]}, "
    end
    puts "#{numbers[-1]}"  
end
# Affichage du résultat
combination_2_numbers()