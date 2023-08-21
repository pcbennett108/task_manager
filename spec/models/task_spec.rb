require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true when the title is laundry" do
        # Create test data -> create a task
        task = Task.create!(title: "laundry", description: "clean clothes")
        # expect the created task to return true when #laundry is called
        expect(task.laundry?).to be(true)
      end

      it "returns true when the description is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")
    
        expect(task.laundry?).to be(true)
      end

      it "returns false when neither is laundry" do
        task = Task.create!(title: "run", description: "run far")
    
        expect(task.laundry?).to be(false)
      end

      it "returns true when title contains laundry" do
        task = Task.create!(title: "laundry day", description: "wash day tomorrow")
    
        expect(task.laundry?).to be(true)
      end

      it "returns true when description contains laundry" do
        task = Task.create!(title: "washing", description: "time to do some laundry")
    
        expect(task.laundry?).to be(true)
      end

      it "returns true when title contains mixed case laundry" do
        task = Task.create!(title: "lAundRy day", description: "wash day tomorrow")
    
        expect(task.laundry?).to be(true)
      end

      it "returns true when description contains mixed case laundry" do
        task = Task.create!(title: "washing", description: "time to do some lauNdry")
    
        expect(task.laundry?).to be(true)
      end
    end
  end
end