require 'minitest/autorun'
require_relative '../src/No'

class NoTest < Minitest::Test
    
    def test_tem_dois_filhos?
        assert_equal 2, No.new(0,1,2).imprime_quantos_filhos()
    end

end

