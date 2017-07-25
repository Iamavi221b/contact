package contact

class UserLoginController {

    def index() { }

    def login() {
        LoginId check = LoginId.findByEmailAndPassword(params.email , params.password)
        if (check)
        {
            session.mySession = check.id
            flash.loginMessage = "Login Successfully Done"
            redirect(controller: "UserDetails", action: "mainPage")
        }
        else
        {
            flash.loginMessage = "Invalid UserName or Password"
            redirect(action: "index")
        }
    }

    def signin () {

    }

    def save() {
        def exist = LoginId.findByEmail(params.email)
        println exist

        if (exist)
        {
            flash.exist = "This Email is all ready been used. Try something else."
            redirect(action: "signin")
        }
        else {

            LoginId newAcc = new LoginId()
            newAcc.firstName = params.fname
            newAcc.lastName = params.lname
            newAcc.email = params.email
            newAcc.password = params.password
            newAcc.save(flush : true)
            flash.signin = "New Account successfully created"
            redirect(action: "index")
        }
    }

    def logout() {
        session.invalidate()
        flash.logout = "Logout Successfully Done"
        redirect(action: "index")
    }
 }
