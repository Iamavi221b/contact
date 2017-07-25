package contact

class LoginId {
    String firstName
    String lastName
    String email
    String password



    static constraints = {
        firstName blank: false
        lastName blank: false
        email email: true , unique: true , blank: false
        password blank: false
    }
}
