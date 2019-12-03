require_relative 'No' 

#Todo grafo possui uma lista de nos, que representam as folhas, raiz e nos internos da arvore
class Grafo
    attr_reader :nos
    
    def initialize()
        @nos = []
    end
        
    def adiciona_no(no)
        @nos << no
    end
    
    def remove_no(no)
        @nos.delete(no)
    end
    
    def imprime_nos()
        @nos.each do |no|
            puts no.imprime_dados()
        end
    end
    
    def pega_no_por_id(id_procurado)
        @nos.each do |no|
           if no.id == id_procurado
               return no
           end
        end
    end
    
    #Retorna os filhos de um no, caso ele tenha
    def pega_filhos_do_no(no_pai)
        filhos = []
        
        if(no_pai.esq !=-1)
            filhos << pega_no_por_id(no_pai.esq)
        end
        if(no_pai.dir !=-1)
            filhos << pega_no_por_id(no_pai.dir)
        end

        return filhos
    end
    
    #Usando como base o algoritmo DFS em pre-ordem https://www.ime.usp.br/~pf/algoritmos_para_grafos/aulas/dfs.html
    def busca_profundidade_pre_ordem()
        busca_ordenada = []

        @nos.each do |no|
            if no.visitado == -1
                dfsR(no, busca_ordenada)
            end
        end
        
        return busca_ordenada
    end
    
    #Funcao recursiva para visitar todos os nos a partir de um no
    def dfsR(no, busca_ordenada)
        no.visitado = 0
        busca_ordenada << no.id
        
        pega_filhos_do_no(no).each do |filho|
            if filho.visitado == -1
                dfsR(filho, busca_ordenada)
            end
        end
    end
    
end 
