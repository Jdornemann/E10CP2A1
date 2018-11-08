
module Formula

    def perimetro
        suma =  (ladoA * 2) + (ladoB * 2)
        puts "perimetro es = #{suma} "
    end

    def area
         resultado = ladoA * ladoB
         puts "el area es: #{resultado}"
    end

  end
class Rectangulo
    attr_accessor :ladoA , :ladoB

include Formula

    def initialize(base, altura)
      @ladoA = base
      @ladoB = altura
    end

    def lados
       puts  "#{@ladoA} " + "  #{@ladoB}"
    end
  end
  
  class Cuadrado
    attr_accessor :ladoA , :ladoB
    include Formula

    def initialize(lado)
      @ladoA = lado
      @ladoB = lado
    end

    def lados
       puts "#{@ladoA}" 
    end

  end


  rectangulo = Rectangulo.new(20,60)
  rectangulo.lados
  rectangulo.perimetro
  rectangulo.area
  cuadrado = Cuadrado.new(20)
  cuadrado.lados
  cuadrado.perimetro
  cuadrado.area
