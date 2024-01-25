# frozen_string_literal: true

class Alveole::FormLayoutComponent < ViewComponent::Base
  include AutoUrlHelper

  def initialize(record, title: nil, description: nil)
    @record = record&.last
    @form_record = record
    @title = title
    @description = description
  end

  INPUT_CLASS = {
    string: Alveole::Input::TextComponent,
    email: Alveole::Input::EmailComponent,
    text: Alveole::Input::TextareaComponent,
    search: Alveole::Input::SearchComponent,
    comment: Alveole::Input::CommentComponent,
    avatar: Alveole::Input::AvatarComponent,
    file: Alveole::Input::FileComponent,
  }
  def input(attribute, **args)
    p args
    input_component = input_component(attribute, args[:as])
    render(input_component.new(@f, attribute, args))
  end
  
  private
  
  def input_component(attribute, as)
    as ||= default_input_type(attribute, as)
    
    INPUT_CLASS[as].presence || Input::TextComponent
  end

  def default_input_type(attribute, as)
    as = :avatar if attribute.to_sym == :avatar
    as = :email if attribute.to_sym == :email
    as ||= :string
  end
end
