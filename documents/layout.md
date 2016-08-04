Layout assignment

You can either specify a layout declaratively (using the layout class method) or give it the same name as your controller, and place it in app/views/layouts. If a subclass does not have a layout specified, it inherits its layout using normal Ruby inheritance.

For instance, if you have PostsController and a template named app/views/layouts/posts.html.erb, that template will be used for all actions in PostsController and controllers inheriting from PostsController.

If you use a module, for instance Weblog::PostsController, you will need a template named app/views/layouts/weblog/posts.html.erb.

Since all your controllers inherit from ApplicationController, they will use app/views/layouts/application.html.erb if no other layout is specified or provided.
