class User
  attr_accessor :fname, :lname

  def initialize(attributes = {} )
    @fname = attributes[:fname]
    @lname = attributes[:lname]

  end

  def formatted_email
      @fullname = "#{@fname} #{@lname}"
    "#{@fullname}"
  end
end
