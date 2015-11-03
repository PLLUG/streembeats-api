require 'uri'

class UriValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?
    begin
      uri = URI::parse(value)
      resp = uri.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      resp = false
    end

    unless resp
      record.errors[attribute] << (options[:message] || "this is not uri")
    end
  end
end