Inicialmente considerei a estrutura de arvore binaria, ou seja, cada no tem, no maximo, dois nos filhos. Dai escolhi a estrutura de grafos para estruturar a arvore. Cada elemento da arvore e representado por um no no grafo.


O codigo de desenvolvimento foi dividido em tres classes:

- Classe No: representa cada elemento na arvore e possui quatro atributos, tres deles privados: (id, esq, dir) - 'id' representa o identificador do no,
'esq' representa o identificador do filho a esquerda do no, e 'dir' representa o idenficador do filho a direita. Alem disso, o atributo 'visitado' e usado na busca em profundidade em pre-ordem para marcar um no como visitado ou nao.

- Classe Grafo: contem uma lista de nos e metodos que permitem calcular dados sobre esses nos.

- Classe RodaExemplos: esse codigo tem dois grafos de exemplo para rodar caso queira.


A pasta test contem dois conjuntos de teste para as classes No e Grafo.

Utilizei o MiniTest para criar alguns casos de teste
