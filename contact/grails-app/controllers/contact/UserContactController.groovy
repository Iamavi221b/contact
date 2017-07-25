package contact

import org.grails.datastore.mapping.query.Query

import java.text.SimpleDateFormat

class UserContactController {

    def index() {
        if (session.mySession) {
            def newContact = Mygroup.findAllByUserName(LoginId.get(session.mySession))
            println newContact
            [groupName: newContact]
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }
    }

    def save() {
        if (session.mySession) {
            println params
            User newcontact = new User()
            newcontact.firstName = params.fname
            newcontact.lastName = params.lname
            newcontact.email = params.email
            newcontact.number = Long.parseLong(params.number)
            Date newDate = new SimpleDateFormat("yyyy-MM-dd").parse(params.dob)
            if (newDate.after(new Date()))
            {
                flash.dateError = "Enter Valid Birth Date"
                redirect(controller: "UserContact" , action: "index")
            }
            newcontact.dateOfBirth = newDate
            newcontact.userName = LoginId.get(session.mySession)
            if ((params.gname).equals("none"))
            {
                newcontact.groupName = null
            }
            else
            {
                newcontact.groupName = Mygroup.get(Integer.parseInt(params.gname))
            }
            if ((params.fav).equals("fav"))
            {
                newcontact.favourite = true
            }
            else
            {
                newcontact.favourite = false
            }
            newcontact.save()
            println newcontact
            flash.save = "New Contact Saved"
            redirect(controller: "UserDetails",action: "mainPage")
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }
    }

    def show() {
        if (session.mySession ) {
            def newContact = User.findAllByUserName(LoginId.get(session.mySession))
            println newContact
            [var: newContact]
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }

    def delete(int id) {
        if (session.mySession) {
            println id
            def del = User.findById(id)
            if (del) {
                del.delete(flush: true)
                flash.del = "Contact deleted successfully"
            }
            else
            { flash.del = "Invalid Id selection"}
        redirect(action: "show")
        }

        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }
    }

    def update(int id) {
        if (session.mySession) {
            def newContact = User.findById(id)
            if (newContact) {
                def myGroup = newContact.groupName
                def group = Mygroup.findAllByUserName(LoginId.get(session.mySession))
                [var: [newContact, myGroup, group]]
            } else {
            flash.update = "Selected Contact cannot be updated"
            redirect(action: "show")
            }
         }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }

    def saveUpdate(int id) {
        if (session.mySession)
        {
            User newcontact = User.get(id)
            newcontact.firstName = params.fname
            newcontact.lastName = params.lname
            newcontact.email = params.email
            newcontact.number = Long.parseLong(params.number)
            Date newDate = new SimpleDateFormat("yyyy-MM-dd").parse(params.dob)
            if (newDate.after(new Date()))
            {
                flash.dateError = "Enter Valid Birth Date"
                redirect(controller: "UserContact" , action: "index")
            }
            newcontact.dateOfBirth = newDate
            newcontact.userName = LoginId.get(session.mySession)
            if ((params.gname).equals("none"))
            {
                newcontact.groupName = null
            }
            else
            {
                newcontact.groupName = Mygroup.get(Integer.parseInt(params.gname))
            }
            if ((params.fav).equals("fav"))
            {
                newcontact.favourite = true
            }
            else
            {
                newcontact.favourite = false
            }
            newcontact.save(flush:true)
            println newcontact
            flash.update = "Updated Contact Saved"
            redirect(action: "show")
        }
        else
        {
            flash.login = "You Must Login First"
            redirect(controller : "UserLogin" , action : "index")
        }

    }
}
