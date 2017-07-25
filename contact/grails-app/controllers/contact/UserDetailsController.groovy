package contact

class UserDetailsController {

    def mainPage () {
        if (session.mySession)
        {

        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }

    def index() {
        if (session.mySession)
        {
            [fav : User.findAllByFavourite(true)]
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }

    def show () {
        if (session.mySession)
        {
            def group = Mygroup.findAllByUserName(LoginId.get(session.mySession))
            List groupList = []
            group.each {
                def myContact = User.findAllByUserNameAndGroupName(LoginId.get(session.mySession), it)
                if(myContact)
                {
                    groupList.add(myContact)
                }
            }
            List noGroup = User.findAllWhere(userName : LoginId.get(session.mySession), groupName : null)
            [contact: [groupList, noGroup]]
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }
    }

    def reminder() {
        if (session.mySession)
        {
            def contact = User.findAllByUserName(LoginId.get(session.mySession))
            Date date = new Date()
            int currentMonth = date.getMonth()
            List birthList = []
            contact.findAll {
                int myMonth = it.dateOfBirth.getMonth()
                if (myMonth == currentMonth)
                {
                    birthList.add(it)
                }
            }
            [list : birthList]
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }
}
