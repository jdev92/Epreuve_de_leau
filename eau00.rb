#/usr/bin/env/ruby

# Fonction utilisée
def combinaison
a = 0
b = 1 
c = 2
    for a in 0..9
        for b in a+1..9
            for c in b+1..9
                print "#{a}#{b}#{c} "
            end
        end
    end
end
# Affichage du résultat
combinaison