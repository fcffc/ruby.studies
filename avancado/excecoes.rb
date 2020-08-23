# begin
#   # Devo tentar alguma coisa
#   file = File.open('./ola')
#   puts file.read if file
# rescue Exception => e
#   # Obter um possível erro
#   puts e.message
#   puts e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts "Erro ao executar a soma: #{e.message}"
end

soma('10',5)
