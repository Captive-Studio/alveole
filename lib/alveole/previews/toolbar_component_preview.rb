class ToolbarComponentPreview < ViewComponent::Preview
  layout false

  def default
    render(ToolbarComponent.new) do |toolbar|
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
    render(ToolbarComponent.new) do |toolbar|
      toolbar.right do
        tag.span('Example right')
      end
      tag.span('Example content')
    end
  end

  def without_right
    render(ToolbarComponent.new) do |toolbar|
      toolbar.left do
        tag.span('Example left')
      end
      tag.span('Example content')
    end
  end
end
