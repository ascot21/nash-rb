class DimensionsValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    dimensions = Paperclip::Geometry.from_file(value.queued_for_write[:original].path)
    width = options[:width]
    height = options[:height]

    record.errors[attribute] << "Width must be at least #{width}px " unless dimensions.width >= width
    record.errors[attribute] << "Height must be at least #{height}px " unless dimensions.height >= height
  end
end