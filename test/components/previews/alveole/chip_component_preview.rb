# frozen_string_literal: true

class Alveole::ChipComponentPreview < Lookbook::Preview
  # @!group Colors

  # @param label
  # @param color select { choices: [default,error,warning,success,info,primary] }
  # @param size select { choices: [sm,xs] }
  def default(label: "Default", color: :default, size: :sm)
    render(Alveole::ChipComponent.new label: label, color: color, size: size)
  end
  
  def primary(label: "Primary")
    render(Alveole::ChipComponent.new label: label, color: :primary)
  end
  
  def error(label: "Error")
    render(Alveole::ChipComponent.new label: label, color: :error)
  end
  
  def warning(label: "Warning")
    render(Alveole::ChipComponent.new label: label, color: :warning)
  end
  
  def success(label: "Success")
    render(Alveole::ChipComponent.new label: label, color: :success)
  end
  
  def info(label: "Info")
    render(Alveole::ChipComponent.new label: label, color: :info)
  end

  # @!endgroup
end
