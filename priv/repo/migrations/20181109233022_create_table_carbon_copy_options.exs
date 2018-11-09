defmodule Playcraft.Repo.Migrations.CreateTableCarbonCopyOptions do
  use Ecto.Migration

  def change do
    create table(:carbon_copy_options) do
      add :proposal_cc, :boolean, default: false
      add :poster_cc, :boolean, default: false
      add :problem_cc, :boolean, default: false
      add :all_cc, :boolean, default: false
    end
  end
end
