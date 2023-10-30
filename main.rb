require_relative 'function'
while true
  matriz = []
  opcao = menu
  case opcao
  when 1
    i = 0
    puts('Digite o valor de n na sua matriz nxn: ')
    n = gets.to_i
    while i < n
      j = 0
      linha = []
      while j < n
        puts('Digite o valor na matriz: ')
        valor = gets.to_i
        linha << valor
        j = j + 1
      end
      matriz << linha
      i = i + 1
    end
    puts(matriz)
    puts("A determinante da matriz é: #{determinante(matriz)}")
  when 2
    i = 0
    puts('Digite o valor de n na sua matriz nxn: ')
    n = gets.to_i
    while i < n
      j = 0
      linha = []
      while j < n
        valor = Random.rand(1..10)
        linha << valor
        j = j + 1
      end
      matriz << linha
      i = i + 1
    end
    puts(matriz)
    puts("A determinante da matriz é: #{determinante(matriz)}")
  when 0
    return false
  else
    puts('Número errado, tente novamente')

  end
end



