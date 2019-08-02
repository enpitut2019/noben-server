class NoteUploader < CarrierWave::Uploader::Base
  # if Rails.env.development?
  #   storage :file
  # elsif Rails.env.test?
  #   storage :file
  # else
  #   storage :fog
  # end
  storage :fog

  def content_type_whitelist
    [/image\//]
  end

  def extension_whitelist
    %w(png jpg)
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def filename
    original_filename if original_filename
  end
end
