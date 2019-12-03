#prova_questao_01.rb

#Se o numero eh multiplo de 5, imprime Buzz, se for multiplo de 3 e 5 retorna FooBuzz,
#se for multiplo apenas de 3 imprime Foo, caso contrario imprime o proprio numero
def imprime_intervalo(value)
    for num in 1..value do
        if num % 5 == 0
            if num % 3 == 0
                puts "FooBuzz"
            else 
                puts "Buzz"
            end
        elsif num % 3 == 0 
            puts "Foo"
        else
            puts num
        end
    end
end 

imprime_intervalo(100)
