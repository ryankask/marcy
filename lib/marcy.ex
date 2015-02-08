defmodule Marcy do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Marcy.Endpoint, []),
      worker(Marcy.Repo, []),
    ]

    opts = [strategy: :one_for_one, name: Marcy.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Marcy.Endpoint.config_change(changed, removed)
    :ok
  end
end
