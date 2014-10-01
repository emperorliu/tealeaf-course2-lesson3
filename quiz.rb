1. With rendering, we display the view template that is being rendered. With redirecting, it serves as another request to the browser and redirects to a different page. When we redirect to another template, the instance varialbes are not available for that action anymore. Instance variables must be declared in that action before the render can work. 

2. You can use a flash message, like flash[:error] = "This didn't work", and then call redirect_to :back to redirect somewhere.

3. You can use flash.now if you want to render and quickly display a message on the view template. Whatever message you pass to flash.now will be displayed in the same render request.

4. We can save passwords to the database by using has_secure_password that rails gives us. Rails saves the password through a 1-way hash. The Gemfile bcrypt-ruby helps perform this one-way hash. It essentially changes the password into an unrecognizable string. In the database, we create a password_digest column to keep track of the hash tokens.

5. We should put it put it in application_controller.rb file. In order to have the method work in views as well, we can also liste it as helper_method :a_method. 

6. Memoization is a process (using symbols ||=) where we save information into an instance variable, caches the result of the method instead of calling it every time. This allows the method to hit the database only once. We store the first result. This is good for performance optimization.

7. We can create a method in application_controller.rb called current_user to determine if we have an authenticated user, and a method called logged_in? to see if they are logged in. Then we can use a method to say that if both are true, that the form to create a new comment will appear.Then set a before_action on require_user before the create action.

8. We can make it polymorphic by creating a likeable_id and a likeable_type column. The likeable_type would be video, post, photo, and the likeable_id would correspond respectively to which video, which post, which photo (as an id).

9. Setting up polymorphic assocations at the model layer is simple. On the vote model file, we can say it belongs_to :voteable, polymorphic: true. In the voteable type model files, we can say has_many :votes, as: :voteable. 

10. ERD stands for entity-relationship diagram. It lays out the blueprint of our models, the associations between them, and also the attributes involved. We refer to the ERD to build our model associations and our database schema. 

