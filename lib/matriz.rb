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

end
