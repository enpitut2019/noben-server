CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    region: 'ap-northeast-1',
    aws_access_key_id: Settings.s3.access_key_id,
    aws_secret_access_key: Settings.s3.secret_access_key
  }
  config.fog_directory  = 'noben'
  config.fog_public     = false
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
end
