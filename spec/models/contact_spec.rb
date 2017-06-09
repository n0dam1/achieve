require 'rails_helper'

describe Contact do
  # 名前とメールと内容があれば有効な状態であること
  it "is valid with a name, email and content" do
    contact = Contact.new(name: 'ほげ', email: 'hoge@hoge.hoge', content: 'ほげほげ')
    expect(contact).to be_valid
  end

  # 名前とメールがあり、内容がなければ無効な状態であること
  it "is invalid without a content" do
    contact = Contact.new(name: 'ほげ', email: 'hoge@hoge.hoge', content: nil)
    expect(contact).not_to be_valid
  end

  # 名前とメールがあり、内容がなければ無効な状態であること
  it "is invalid without a content" do
    contact = Contact.new(name: 'ほげ', email: 'hoge@hoge.hoge', content: nil)
    contact.valid?
    expect(contact.errors[:content]).to include("を入力してください")
  end

  # 名前と内容があり、メールがなければ無効な状態であること
  it "is invalid without an email" do
    contact = Contact.new(name: 'ほげ', email: nil, content: 'ほげほげ')
    expect(contact).not_to be_valid
  end

  # 名前と内容があり、メールがなければ無効な状態であること
  it "is invalid without an email" do
    contact = Contact.new(name: 'ほげ', email: nil, content: 'ほげほげ')
    contact.valid?
    expect(contact.errors[:email]).to include("を入力してください")
  end

  # 名前があり、メールと内容がなければ無効な状態であること
  it "is invalid without an email and content" do
    contact = Contact.new(name: 'ほげ', email: nil, content: nil)
    expect(contact).not_to be_valid
  end

  # 名前があり、メールと内容がなければ無効な状態であること
  it "is invalid without an email and content" do
    contact = Contact.new(name: 'ほげ', email: nil, content: nil)
    contact.valid?
    expect(contact.errors[:email]).to include("を入力してください")
    expect(contact.errors[:content]).to include("を入力してください")
  end

  # 内容とメールがあり、名前がなければ無効な状態であること
  it "is invalid without a name" do
    contact = Contact.new(name: nil, email: 'hoge@hoge.hoge', content: 'ほげほげ')
    expect(contact).not_to be_valid
  end

  # 内容とメールがあり、名前がなければ無効な状態であること
  it "is invalid without a name" do
    contact = Contact.new(name: nil, email: 'hoge@hoge.hoge', content: 'ほげほげ')
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
  end

  # メールがあり、名前と内容がなければ無効な状態であること
  it "is invalid without a name and content" do
    contact = Contact.new(name: nil, email: 'hoge@hoge.hoge', content: nil)
    expect(contact).not_to be_valid
  end

  # メールがあり、名前と内容がなければ無効な状態であること
  it "is invalid without a name and content" do
    contact = Contact.new(name: nil, email: 'hoge@hoge.hoge', content: nil)
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
  end

  # 内容があり、名前とメールがなければ無効な状態であること
  it "is invalid without a name and email" do
    contact = Contact.new(name: nil, email: nil, content: 'ほげほげ')
    expect(contact).not_to be_valid
  end

  # 内容があり、名前とメールがなければ無効な状態であること
  it "is invalid without a name and email" do
    contact = Contact.new(name: nil, email: nil, content: 'ほげほげ')
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
    expect(contact.errors[:email]).to include("を入力してください")
  end

  # 名前とメールと内容がなければ無効な状態であること
  it "is invalid without a name ,email and content" do
    contact = Contact.new(name: nil, email: nil, content: nil)
    expect(contact).not_to be_valid
  end

  # 名前とメールと内容がなければ無効な状態であること
  it "is invalid without a name ,email and content" do
    contact = Contact.new(name: nil, email: nil, content: nil)
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
    expect(contact.errors[:email]).to include("を入力してください")
    expect(contact.errors[:content]).to include("を入力してください")
  end

end
