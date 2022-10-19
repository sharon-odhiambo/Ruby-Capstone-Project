require_relative '../includes'

describe Label do
  it 'takes one parameter and returns an Items object' do
    @label = Label.new('Cool', 'blue')
    @label.should be_an_instance_of Label
  end

  it 'compares an Item instance and Label instance' do
    label = Label.new('Amazing', 'red')
    item = Item.new('Soul', 'New', 'Mike', '2020/12/25')
    newlabel = label.add_item(item)
    expect(newlabel.items[0].label).to eq label
  end
end
