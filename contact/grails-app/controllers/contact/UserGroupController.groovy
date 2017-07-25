package contact

class UserGroupController {

    def index() {
        if (session.mySession)
        {

        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }

    def save() {
        if (session.mySession) {

                Mygroup newGroup = new Mygroup()
                newGroup.userName = LoginId.get(session.mySession)
                newGroup.groupName = params.gname
                newGroup.save()


                flash.groupAdd = "New Group is successfully added"
                redirect(controller: "UserDetails",action: "mainPage")
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
            def newContact = Mygroup.findAllByUserName(LoginId.get(session.mySession))
            [groupName: newContact]
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }

    def delete(int id) {
        if (session.mySession) {
            def del = Mygroup.get(id)
            println del
            if (del) {
         def groupDel = User.findAllByGroupNameAndUserName(del , LoginId.get(session.mySession))
                groupDel.each {
                    it.userGroup = null
                }
                del.delete(flush : true)
                flash.delete = "Group has successfully deleted"
                redirect(controller: "UserGroup", action: "show")
            }
            else {
                flash.notDelete = "Group cannot be deleted"
                redirect(controller: "UserGroup", action: "show")
            }

            if (del.userName !=LoginId.get(session.mySession))
            {
                flash.notDelete = "Group cannot be deleted"
                redirect(controller: "UserGroup", action: "show")
            }

        }
        else {
            flash.login = "You Must Login First"
            redirect(controller: "UserLogin" ,action: "index")
        }
    }

    def update(int id) {
        if (session.mySession)
        {
            def updateGroup = Mygroup.get(id)
            if (updateGroup)
            {
                [update : updateGroup]
            }
            else {
                flash.notupdate = "Group cannot be updated"
                redirect(controller: "UserGroup", action: "show")
            }
        }
        else {
            flash.login = "You Must Login First"
            redirect(controller: "UserLogin" ,action: "index")
        }
    }

    def saveUpdate(int id) {
        if (session.mySession)
        {
            println params
                  Mygroup newgroup = Mygroup.findById(id)
            if (newgroup)
            {
                newgroup.groupName = params.gName
                newgroup.save(flush : true)
                println newgroup.groupName
                flash.update = "Group is successfully updated"
                redirect(controller: "UserGroup", action: "show")
            }

        }
        else {
            flash.login = "You Must Login First"
            redirect(controller: "UserLogin" ,action: "index")
        }

    }


}
