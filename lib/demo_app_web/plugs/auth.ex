defmodule DemoAppWeb.Plugs.Auth do
  import Plug.Conn
  import Phoenix.Controller
  import Inertia.Controller

  alias DemoApp.Accounts

  def init(opts), do: opts

  def call(conn, _opts) do
    user_id = get_session(conn, :user_id)

    if user_id do
      current_user = Accounts.get_user!(user_id)

      conn
      |> assign(:current_user, current_user)
      |> assign_prop(:current_user, current_user)
    else
      conn
      |> assign(:current_user, nil)
      |> assign_prop(:current_user, nil)
    end
  end

  def authenticate_user(conn, _opts) do
    if conn.assigns.current_user do
      conn
    else
      conn
      |> put_flash(:error, "You must be logged in to access this page")
      |> redirect(to: "/login")
      |> halt()
    end
  end
end
