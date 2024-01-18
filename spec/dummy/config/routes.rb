Rails.application.routes.draw do
  mount Alveole::Engine => "/"

  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
end
