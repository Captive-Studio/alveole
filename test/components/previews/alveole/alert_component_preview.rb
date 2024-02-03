# frozen_string_literal: true

class Alveole::AlertComponentPreview < ViewComponent::Preview
  # @param dismiss toggle
  # @!group Types
  def info(dismiss: false)
    render(Alveole::AlertComponent.new(type: :info, dismiss: dismiss)) do
      "A simple info alert."
    end
  end

  def danger(dismiss: false)
    render(Alveole::AlertComponent.new(type: :danger, dismiss: dismiss)) do
      "A simple info alert."
    end
  end
  
  def success(dismiss: false)
    render(Alveole::AlertComponent.new(type: :success, dismiss: dismiss)) do
      "A simple info alert."
    end
  end

  def warning(dismiss: false)
    render(Alveole::AlertComponent.new(type: :warning, dismiss: dismiss)) do
      "A simple info alert."
    end
  end

  def dark(dismiss: false)
    render(Alveole::AlertComponent.new(type: :dark, dismiss: dismiss)) do
      "A simple info alert."
    end
  end
  # @!endgroup

  def with_dissmiss
    render(Alveole::AlertComponent.new(type: :info, dismiss: true)) do
      "A simple info alert."
    end
  end
end
