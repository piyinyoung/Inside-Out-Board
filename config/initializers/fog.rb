CarrierWave.configure do |config|

  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIC6KUS2G5KTU5Q6A',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                 # optional, defaults to 'us-east-1'
   
  }
  config.fog_directory  = 'hello-stranger'                          # required


end