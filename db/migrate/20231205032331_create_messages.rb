class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content

      t.timestamps
    end

    def update
      5.times do
        Message.create(content: "Hello, #{Faker::Name.name}!")
    end
  end
end
