require 'lib/matriz.rb'
require 'rspec'

describe Matriz do
  
  before :each do
    @m1 = Matriz.new([[1,3],[2,0]])
    @m2 = Matriz.new([[2,1],[0,1]])
    @m3 = Matriz.new([[2,0,1],[3,0,0],[5,1,1]])
    @m4 = Matriz.new([[4,1,6],[2,0,1]])
  end

end
