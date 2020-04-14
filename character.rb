class Character
  attr_reader :name
  
  def initialize(name)
    @name = name
    @password = ''
  end
  
  def change_password(old_password, new_password)
    if @password.empty?
      @password = new_password
      'Password assigned'
    elsif
      if old_password == @password
        @password = new_password
        'Password changed'
      else
        'not changed'
      end
    end
  end
end
