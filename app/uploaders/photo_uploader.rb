class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :thumnail do
    resize_to_fit 256, 256
  end

  version :thumb do
    process resize_to_fill: [280, 280]
    version :face do
      process :bright_face
    end
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:0", radius: 20,
      width: 1.1, height: 1.1, crop: :thumb, gravity: :face
  end
end
