defmodule StocksEx.Repo do
  use Ecto.Repo,
    otp_app: :stocks_ex,
    adapter: Ecto.Adapters.Postgres
end
