require 'rails_helper'

RSpec.describe Task, type: :model do
  # tells RSpec that this is a model test, not neccessary since it is in model directory
  describe 'instance methods' do 
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')
          # always use bang for create, update, save methods in tests so they don't fail silently
        expect(task.laundry?).to be(true)
      end
      it 'returns true when the description is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'laundry')
    
        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'Clean my clothes', description: 'Clean')

        expect(task.laundry?).to be false
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'dirty laundry', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true when the description contains the word laundry' do
        task = Task.create!(title: 'clean clothes', description: 'do laundry')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'dirty Laundry', description: 'do laundry')

        expect(task.laundry?).to be(true)
      end

      it 'is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'dirty laundry', description: 'do Laundry')

        expect(task.laundry?).to be(true)
      end
    end
  end
end