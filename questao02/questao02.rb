class WelcomeMailSender
#     def initialize()
#     end
#     
    def send_email(to, sync)
        if(sync)
            puts "SINCRONA " +"Sending welcome message to #{to}"
            sleep(1) #Envia e-mail
        else
            puts "ASSINCRONA "+ "Sending welcome message to #{to}"
        end
    end
end

class NotificationMailSender
    def send_email(to, message, sync)
        if(sync)
            puts "SINCRONA " +"Sending welcome message to #{to}: \"#{message}\""
            sleep(1) #Envia e-mail
        else
            puts "ASSINCRONA "+ "Sending welcome message to #{to}: \"#{message}\""
        end
    end
end

class Main
    x=1000
    while x >= 0
        teste = WelcomeMailSender.new()
        teste.send_email("souz.kti@gmail.com", [true, false].sample)
        x-=1
    end 
    y=1000
    while y >= 0
        teste2 = NotificationMailSender.new()
        teste2.send_email("souz.kti@gmail.com", "Nao esquece da prova", [true, false].sample)
        y-=1
    end 
    

end
