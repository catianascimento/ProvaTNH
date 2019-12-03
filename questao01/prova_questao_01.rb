#prova_questao_01.rb

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
