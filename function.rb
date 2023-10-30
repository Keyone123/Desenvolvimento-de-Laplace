def determinante(matriz)
  size = matriz.size

  if size == 1
    return matriz[0][0]
  end

  det = 0

  size.times do |coluna|
    cofator = matriz[0][coluna] * determinante(submatriz(matriz, 0, coluna))
    det += (coluna.even? ? 1 : -1) * cofator
  end

  det
end

def submatriz(matriz, linha, coluna)
  size = matriz.size
  sub = []

  size.times do |i|
    next if i == linha
    sub_linha = []

    size.times do |j|
      next if j == coluna
      sub_linha << matriz[i][j]
    end

    sub << sub_linha
  end

  sub
end

def menu
  puts('------------------------------- Bem Vindo -------------------------------')
  puts('1.Digitar matriz')
  puts('2.Usar matriz aleatória')
  puts('0.Sair do programa')
  puts('-------------------------------------------------------------------------')
  puts('Digite o valor que irá escolher: ')
  gets.to_i
end

