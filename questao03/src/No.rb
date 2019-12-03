#Cada no possui um idenfificador, uma referencia para o no da esquerda e da direita
#se ele nao possui filho a esquerda e/ou direita o valor setado eh -1
#visitado guarda um valor para a busca em profundidade
class No
    attr_reader :id, :esq, :dir
    attr_accessor :visitado
    
    def initialize(id, esq, dir)
        @id = id
        @esq = esq
        @dir = dir
        @visitado = -1
    end

    #Imprime dados de um no
    def imprime_dados()
        if @esq==-1 && @dir==-1
            puts 'no folha'
        else
            puts 'no interno ou raiz'
            puts @dir.to_s + '->' + @esq.to_s 
        end
    end
    
    #Imprime quantos filhos no tem
    def imprime_quantos_filhos()
        count = 0
        if self.esq != -1
            count+= 1
        end
        if self.dir != -1
            count+= 1
        end
        return count
    end
end
