defmodule Playcraft.Repo do
  use Ecto.Repo,
    otp_app: :playcraft,
    adapter: Ecto.Adapters.Postgres
end
