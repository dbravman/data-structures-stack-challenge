require_relative 'stack'

describe Stack do
  let(:stack) {Stack.new}

  it "pushes" do
    stack.push(0)
    stack.push(1)
    stack.push(2)
    expect(stack.size).to eq(3)
    expect(stack.get(0)).to eq(0)
    expect(stack.get(1)).to eq(1)
    expect(stack.get(2)).to eq(2)
  end

  it "pops" do
    stack.push(0)
    stack.push(1)
    expect(stack.pop).to eq(1)
    expect(stack.pop).to eq(0)
    expect(stack.pop).to be(nil)
  end

  it "top" do
    expect(stack.top).to be(nil)
    stack.push(0)
    stack.push(1)
    expect(stack.top).to eq(1)
    expect(stack.top).to eq(1)
  end

  it "empty?" do
    expect(stack.empty?).to be(true)
    stack.push(0)
    expect(stack.empty?).to be(false)
  end
end
