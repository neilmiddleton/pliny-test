Sequel.migration do
  change do
    create_table(:tickets) do
      primary_key :id
      String :body, null: false
      timestamp   :created_at
      timestamp   :updated_at
    end
  end
end
