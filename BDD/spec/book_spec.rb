require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new 'Title', 'Author', :category
  end

  describe '#new' do
    context 'takes three parameters and returns a Book object' do
      it { expect(@book).to be_an_instance_of Book }
    end
  end

  describe '#title' do
    context 'returns the correct title' do
      it { expect(@book.title).to eql 'Title' }
    end
  end

  describe '#author' do
    context 'returns the correct author' do
      it { expect(@book.author).to eql 'Author' }
    end
  end

  describe '#category' do
    context 'returns the correct category' do
      it { expect(@book.category).to eql :category }
    end
  end
end
