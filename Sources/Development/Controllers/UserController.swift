import Vapor

class UserController: Controller {
    required init(application: Application) {
        Log.info("User controller created")
    }

    /**
        Display many instances
     */
    func index(_ request: Request) throws -> ResponseRepresentable {
        return Json([
            "controller": "MyController.index"
        ])
    }


    /**
        Create a new instance.
     */
    func store(_ request: Request) throws -> ResponseRepresentable {
        return Json([
            "controller": "MyController.store"
        ])
    }


    /**
        Show an instance.
     */
    func show(_ request: Request, item user: User) throws -> ResponseRepresentable {
        //User can be used like JSON with JsonRepresentable
        return Json([
            "controller": "MyController.show",
            "user": user
        ])
    }

    /** 
        Update an instance.
     */
    func update(_ request: Request, item user: User) throws -> ResponseRepresentable {
        //Testing JsonRepresentable
        return user.makeJson()
    }


    /**
        Delete an instance.
     */
    func destroy(_ request: Request, item user: User) throws -> ResponseRepresentable {
        //User is ResponseRepresentable by proxy of JsonRepresentable
        return user
    }

}
