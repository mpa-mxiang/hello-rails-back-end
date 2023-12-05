class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content

      t.timestamps
    end

    greetings = [
      "Hello!",
      "Greetings!",
      "Hi there!",
      "Welcome!",
      "Good day!"
    ]

    greetings.each do |greeting|
      Message.create(content: greeting)
    end
  end
end
