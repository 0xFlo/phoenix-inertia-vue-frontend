defmodule DemoApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  import Bcrypt

  @derive {Jason.Encoder, only: [:id, :email, :name]}
  schema "users" do
    field :email, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password, :name])
    |> validate_required([:email, :password])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/, message: "must have the @ sign and no spaces")
    |> validate_length(:password, min: 6, message: "must be at least 6 characters")
    |> unique_constraint(:email)
    |> put_password_hash()
  end

  defp put_password_hash(
         %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
       ) do
    put_change(changeset, :password_hash, hash_pwd_salt(password))
  end

  defp put_password_hash(changeset), do: changeset
end
