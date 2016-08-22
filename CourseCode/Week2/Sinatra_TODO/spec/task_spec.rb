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

end


