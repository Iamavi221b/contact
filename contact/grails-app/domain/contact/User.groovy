package contact

class User {
    String firstName
    String lastName
    String email
    Long number
    Date dateOfBirth
    LoginId userName
    Mygroup groupName
    Boolean favourite

    static constraints = {
        firstName blank: false
        lastName blank: false
        email email: true , blank: false
        number blank: false , maxSize : 10
        dateOfBirth max: new Date()
        groupName nullable: true

    }
}
