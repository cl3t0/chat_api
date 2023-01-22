defmodule ChatApi.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :name, :string
    has_many :messages, ChatApi.Message

    timestamps()
  end

  @doc false
  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
