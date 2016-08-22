require_relative("../lib/task.rb")

RSpec.describe Task do 
	before :each do
		@task = Task.new("Collect bags of cash")
	end

	it "checks for content attribute" do
		expect(@task.content).to eq("Collect bags of cash")
	end

	it "checks for id attribute" do
		expect(@task.id).to eq(2)
	end

	it "returns false if the task is completed" do
		expect(@task.complete?("Collect bags of money")).to eq(false)
	end

	it "returns true if the task is currently in completion" do
		@task.complete!("Collect bags of money")
		
		expect(@task.complete?("Collect bags of money")).to eq(true)
	end

	it "returns false to make a completed task status to incomplete" do
		@task.complete!("Collect bags of money")
		@task.make_incomplete!("Collect bags of money")

		expect(@task.complete?("Collect bags of money")).to eq(false)
	end

end


