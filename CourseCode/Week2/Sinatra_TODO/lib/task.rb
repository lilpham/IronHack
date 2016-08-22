# require 'time'

class Task
    attr_reader :content, :id

    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        # @created_at = time.now 
        # @updated_at = time.now
    end

    def complete?(task)
    	@completed
    end

    def complete!(task)
    	@completed = true
    end

    def make_incomplete!(task)
    	@completed = false
    end

    def update_content!(updated_content)
    	@content = updated_content
    end
end