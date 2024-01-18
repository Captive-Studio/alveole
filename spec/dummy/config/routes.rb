Rails.application.routes.draw do
  mount Alveole::Engine => "/alveole"

  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
end
