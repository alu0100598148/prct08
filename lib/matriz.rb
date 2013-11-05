#! /usr/local/ruby/bin/ruby 

class Matriz

  attr_accessor :nFil , :mCol, :matriz

  def initialize (matriz)
    @nFil = matriz.size
    @mCol = matriz[0].size
    @matriz = matriz
  end

  def to_s
    matString = ""
    for i in 0...@nFil do
      for j in 0...@mCol do
        matString = matString + @matriz[i][j].to_s + " "
      end
      matString = matString + "\n"
    end
    matString
  end

  def det
    if (@nFil == @mCol)
    det = @matriz[0][0]
    aux = Matriz.new(@matriz)
    for k in 0...@nFil do
      l = k+1
      for i in l...@mCol do
        for j in l...@mCol do
          aux.matriz[i][j] = (aux.matriz[k][k] * aux.matriz[i][j] - aux.matriz[k][j] * aux.matriz[i][k])/ aux.matriz[k][k]
        end
      end
      det = det * aux.matriz[k][k]
    end
    else
    det = "ERROR, la matriz no es cuadrada"
    end
    det
  end

  def tras
    result = Array.new
      for i in 0...@nFil do
        result[i] = Array.new
        for j in 0...@mCol do
          result[i][j] = 0
        end
      end

    aux = Matriz.new(result)
    for i in 0...@nFil do
      for j in 0...@mCol do
        aux.matriz[i][j] = @matriz[j][i]
      end
    end
    aux
  end
end
