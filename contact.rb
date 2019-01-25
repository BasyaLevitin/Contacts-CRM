class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id
  @@contacts = []
  @@id = 1

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id = @@id + 1
  end

  # This method should call the initializer, 
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts

  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each do |contact|
      if contact.id  == id
        return contact
      end
    end

  end

  # This method should allow you to specify 
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute,value)
    if attribute == "firstname"
      self.first_name = value
      return true
    end

    if attribute == "lastname"
      self.last_name = value
      return true
    end

    if attribute == "email"
      self.email = value
      return true
    end

    if attribute == "note"
      self.note = value
      return true
    end

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute,value)
    @@contacts.each do |contact|
      if attribute == "firstname"
        if contact.first_name == value
          return contact
        end
      end

      if attribute == "lastname"
        if contact.last_name == value
          return contact
        end
      end

    end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts = []
  end

  def full_name
    p "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
  end

  # Feel free to add other methods here, if you need them.
  
end

#bob = Contact.create("bob","builder","bob@gmail.com","building code")
#bob.update("email","eeee")
#stewie = Contact.create("Stewie","Griffin","stewie@gmail.com","stewie code")
#stewie.delete()
#p Contact.find(1)

#p Contact.find_by("lastname","Griffin")

#Contact.delete_all
#p Contact.all


