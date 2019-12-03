require_relative 'Grafo' 

#Teste Grafo 1

no = No.new(0,1,2)
no1 = No.new(1,3,4)
no2 = No.new(2,6,5)
no3 = No.new(3,-1,-1)
no4 = No.new(4,-1,-1)
no5 = No.new(5,-1,-1)
no6 = No.new(6,-1,-1)

grafo = Grafo.new()
grafo.adiciona_no(no)
grafo.adiciona_no(no1)
grafo.adiciona_no(no2)
grafo.adiciona_no(no3)
grafo.adiciona_no(no4)
grafo.adiciona_no(no5)
grafo.adiciona_no(no6)
grafo.imprime_nos()

nos_em_ordem = grafo.busca_profundidade_pre_ordem()
puts nos_em_ordem

#Teste Grafo 2

# no = No.new('F','B','G')
# no1 = No.new('B','A','D')
# no2 = No.new('A',-1,-1)
# no3 = No.new('D','C','E')
# no4 = No.new('C',-1,-1)
# no5 = No.new('E',-1,-1)
# no6 = No.new('G',-1,'I')
# no7 = No.new('I','H',-1)
# no8 = No.new('H',-1,-1)
# 
# grafo = Grafo.new()
# grafo.adiciona_no(no)
# grafo.adiciona_no(no1)
# grafo.adiciona_no(no2)
# grafo.adiciona_no(no3)
# grafo.adiciona_no(no4)
# grafo.adiciona_no(no5)
# grafo.adiciona_no(no6)
# grafo.adiciona_no(no7)
# grafo.adiciona_no(no8)
# 
# nos_em_ordem = grafo.busca_profundidade_pre_ordem()
# puts nos_em_ordem

 
