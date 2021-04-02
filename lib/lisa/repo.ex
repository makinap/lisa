defmodule Lisa.Repo do
  use Ecto.Repo,
    otp_app: :lisa,
    adapter: Ecto.Adapters.MyXQL
end
