defmodule DemoApp.Auth do
  @moduledoc """
  The Auth context.
  """

  import Ecto.Query, warn: false
  alias DemoApp.Repo
  alias DemoApp.Auth.User

  def get_user(id), do: Repo.get(User, id)

  def get_user_by_email(email) do
    Repo.get_by(User, email: email)
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def authenticate_user(email, password) do
    user = get_user_by_email(email)

    cond do
      user && Bcrypt.verify_pass(password, user.hashed_password) ->
        {:ok, user}

      true ->
        {:error, :unauthorized}
    end
  end
end
