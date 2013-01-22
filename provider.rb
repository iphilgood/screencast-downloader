class Provider

  RAILSCASTS = 'railscasts'
  RAILSCASTS_PRO = 'railscasts_pro'
  PEEPCODE = 'peepcode'
  DESTROYALLSOFTWARE = 'destroyallsoftware'
  AVAILABLE_PROVIDERS = [RAILSCASTS, RAILSCASTS_PRO, PEEPCODE, DESTROYALLSOFTWARE]

  attr_accessor :name

  def initialize(name)
    @name = name
    valid_provider?
  end

  def valid_provider?
    unless AVAILABLE_PROVIDERS.include?(@name)
      error_message
    end
  end

  def error_message
    abort "Please enter one of the following providers => #{RAILSCASTS}, #{RAILSCASTS_PRO}, #{PEEPCODE} or #{DESTROYALLSOFTWARE}"
  end
end
