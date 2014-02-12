class AddBrowserAgentStringToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :browser_agent_string, :string
  end
end
