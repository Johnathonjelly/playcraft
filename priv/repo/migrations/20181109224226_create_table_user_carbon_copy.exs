defmodule Playcraft.Repo.Migrations.CreateTableUserCarbonCopy do
  use Ecto.Migration

  def change do
    create table(:user_carbon_copy_options) do
      add(:user_id, references(:users))
      add(:carbon_copy_options_id, references(:carbon_copy_options))
    end
  end
end
