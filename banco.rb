require "securerandom"
class Banco
    attr_accessor :length
    def initialize (saldo,interes_anual,saldo_ingresar=0, saldo_retirar=0,lengh=3)
        
        @saldo = saldo
        @interes_anual = interes_anual
        @saldo_ingresar = saldo_ingresar
        @saldo_retirar = saldo_retirar
        @lengh = lengh
        @dni = ""
    
    end
    def generate
        @dni=SecureRandom.alphanumeric(length)
        print "tu dni es= #@dni \n"
    end

    def actializar_saldo
     interes_diario =(375/(@saldo/100)*(@interes_anual))
     @saldo = @saldo - interes_diario
     print "el saldo actual con interes es #@saldo \n"
    end
    def depositar
        @saldo = @saldo + @saldo_ingresar
        print "el saldo con el deposito es #@saldo \n"
    end
    def retirar
        if (@saldo >= @saldo_retirar) 
            @saldo = @saldo - @saldo_retirar
        print "el saldo con el retiro es #@saldo "
        else
            print "el saldo es insuficiente"
        end
    end
    
end
valor=Banco.new(1000,8,100,100)
valor.generate
valor.actializar_saldo
valor.depositar
valor.retirar