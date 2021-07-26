class ApplicationDecorator < Draper::Decorator
  delegate_all
  include Draper::LazyHelpers

  def leaves_at
    object.leaves_at.strftime('%l:%M %p')
  end

end
