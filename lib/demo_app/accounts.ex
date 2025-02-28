defmodule DemoApp.Accounts do
  import Bcrypt
  alias DemoApp.Repo
  alias DemoApp.Accounts.User

  def get_user!(id), do: Repo.get!(User, id)

  def get_user_by_email(email) do
    Repo.get_by(User, email: email)
  end

  def authenticate_user(email, password) do
    user = get_user_by_email(email)

    cond do
      user && verify_pass(password, user.password_hash) ->
        {:ok, user}

      user ->
        {:error, :unauthorized}

      true ->
        # Prevent timing attacks by simulating password check
        Bcrypt.no_user_verify()
        {:error, :not_found}
    end
  end

  def register_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def change_user(%User{} = user, attrs \\ %{}) do
    User.changeset(user, attrs)
  end
end
