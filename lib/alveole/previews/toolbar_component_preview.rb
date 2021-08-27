class ToolbarComponentPreview < ViewComponent::Preview
  include Alveole::Helper::ComponentHelper
  layout false

  def default
    component :toolbar do |toolbar|
      toolbar.left do
        tag.span('Example left')
      end
      toolbar.right do
        tag.span('Example right')
      end
      tag.span('Example content')
    end
  end

  def without_left
    component :toolbar do |toolbar|
      toolbar.right do
        tag.span('Example right')
      end
      tag.span('Example content')
    end
  end

  def without_right
    component :toolbar do |toolbar|
      toolbar.left do
        tag.span('Example left')
      end
      tag.span('Example content')
    end
  end
end
