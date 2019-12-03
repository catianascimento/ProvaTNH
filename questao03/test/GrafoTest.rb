require 'minitest/autorun'
require_relative '../src/Grafo'

class GrafoTest < Minitest::Test
    
    def test_nos_eh_um_array
        assert_kind_of Array, Grafo.new().nos
    end
    
    def test_adiciona_no
        grafo = Grafo.new()
        no = No.new(0,1,2)
        grafo.adiciona_no(no)
       
        assert_equal 1, grafo.nos.length
    end
    
    def test_nos_nao_esta_vazio
        grafo = Grafo.new()
        no = No.new(0,1,2)
        grafo.adiciona_no(no)
        
        refute_empty grafo.nos
    end
    
    def test_remove_no
        grafo = Grafo.new()
        no = No.new(0,-1,-1)
        grafo.adiciona_no(no)
        grafo.remove_no(no)
       
        assert_equal 0, grafo.nos.length
    end
    
    def test_pega_no_por_id
        grafo = Grafo.new()
        no = No.new(0,1,2)
        no2 = No.new(1,-1,-1)
        no3 = No.new(2,-1,-1)
        grafo.adiciona_no(no)
        grafo.adiciona_no(no2)
        grafo.adiciona_no(no3)
        
        assert_equal 2, grafo.pega_no_por_id(2).id
    end
    
    def test_pega_filhos_do_no
        grafo = Grafo.new()
        no = No.new(0,1,-1)
        no2 = No.new(1,-1,-1)
        grafo.adiciona_no(no)
        grafo.adiciona_no(no2)
        
        assert_includes grafo.pega_filhos_do_no(no), no2
    end
    
    def test_busca_profundidade
        no = No.new('F','B','G')
        no1 = No.new('H',-1,-1)
        no2 = No.new('A',-1,-1)
        no3 = No.new('G',-1,'I')
        no4 = No.new('C',-1,-1)
        no5 = No.new('B','A','D')
        no6 = No.new('D','C','E')
        no7 = No.new('E',-1,-1)
        no8 = No.new('I','H',-1)
        

        grafo = Grafo.new()
        grafo.adiciona_no(no)
        grafo.adiciona_no(no1)
        grafo.adiciona_no(no2)
        grafo.adiciona_no(no3)
        grafo.adiciona_no(no4)
        grafo.adiciona_no(no5)
        grafo.adiciona_no(no6)
        grafo.adiciona_no(no7)
        grafo.adiciona_no(no8)

#       resultado = Array.new(F,B,A,D,C,E,G,I,H)
        resultado=[no.id,no5.id,no2.id,no6.id,no4.id,no7.id,no3.id,no8.id,no1.id]
        
        assert_equal resultado, grafo.busca_profundidade_pre_ordem()
    end
end
