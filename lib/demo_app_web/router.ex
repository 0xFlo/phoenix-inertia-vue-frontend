defmodule DemoAppWeb.Router do
  use DemoAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {DemoAppWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Inertia.Plug
    plug DemoAppWeb.Plugs.Auth
  end

  pipeline :authenticated do
    plug DemoAppWeb.Plugs.Auth, :authenticate_user
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DemoAppWeb do
    pipe_through :browser

    get "/", LandingController, :index
    get "/demo", DemoController, :index
    get "/test", DemoController, :test

    # Auth routes
    get "/register", AuthController, :register_page
    post "/register", AuthController, :register
    get "/login", AuthController, :login_page
    post "/login", AuthController, :login
    post "/logout", AuthController, :logout
  end

  scope "/", DemoAppWeb do
    pipe_through [:browser, :authenticated]

    # Protected routes
    get "/groceries", ShoppingController, :index
    get "/groceries/new", ShoppingController, :new
    post "/groceries", ShoppingController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", DemoAppWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:demo_app, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: DemoAppWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
