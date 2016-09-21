class UserMailer < ApplicationMailer
    default from: "MGK@watches.com"

    def welcome(customer, address, items)
        @customer = customer
        @address = address
        @items = items
        mail( :to => @customer, :subject => "Welcome to MGK Watches!", :cc => "samit.c.kalra@gmail.com" )
    end
end
