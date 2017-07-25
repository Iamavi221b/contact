package contact

class BootStrap {

    def init = { servletContext ->

        LoginId login = new LoginId([firstName : "Avinash" , lastName : "Kumar" , email : "avi@gmail.com" , password : "avi"])
        login.save()

        LoginId login1 = new LoginId([firstName: "Harry" , lastName: "Potter" , email: "harry@gmail.com" , password: "harry"])
        login1.save()
    }
    def destroy = {
    }
}
