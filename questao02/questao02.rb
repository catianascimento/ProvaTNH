class WelcomeMailSender
  
    #Se desejar enviar de forma sincrona ou assincrona basta enviar como parametro
    def send_email(to, sync)
        if(sync)
            puts "Sending welcome message to #{to}"
            sleep(1) #Envia e-mail
        else
            t1 = Thread.new{
                puts "Sending welcome message to #{to}"
                sleep(1) #Envia e-mail
            }
            t1.join()
        end
    end
end

class NotificationMailSender
    #Se desejar enviar de forma sincrona ou assincrona basta enviar como parametro
    def send_email(to, message, sync)
        if(sync)
            puts "Sending welcome message to #{to}: \"#{message}\""
            sleep(1) #Envia e-mail
        else
            t2 = Thread.new{
                puts "Sending welcome message to #{to}: \"#{message}\""
                sleep(1) #Envia e-mail
            }
            t2.join()
        end
    end
end


#Caso queira testar as funcoes acima com e sem Threads basta descomentar o codigo abaixo
#
# def testa_funcoes()
#     puts 'sem Threads'
#     
#     puts "Started At #{Time.now}"
#     x=100
#     while x >= 0
#         teste = WelcomeMailSender.new()
#         teste.send_email("souz.kti@gmail.com", true)
#         teste2 = NotificationMailSender.new()
#         teste2.send_email("souz.kti@gmail.com", "nao esquece a prova", true)
#         x-=1
#     end 
#     puts "End at #{Time.now}"
#     
#     puts 'com Threads'
#     
#     puts "Started At #{Time.now}"
#     x=100
#     while x >= 0
#         teste = WelcomeMailSender.new()
#         teste.send_email("souz.kti@gmail.com", false)
#         teste2 = NotificationMailSender.new()
#         teste2.send_email("souz.kti@gmail.com", "nao esquece a prova", false)
#         x-=1
#     end 
#     puts "End at #{Time.now}"
# end
# testa_funcoes()
