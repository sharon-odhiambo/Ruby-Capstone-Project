require_relative 'spec_helper'

describe Label do
  it 'takes two parameters and returns a Label object' do
    @item = Item.new('2020/12/25')
    @item.should be_an_instance_of Item
  end

  it 'returns boolean' do
    item = Item.new('2020/12/25')
    newitem = item.move_to_archive
    expect(newitem).to eq false
  end
end