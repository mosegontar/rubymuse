VCR.configure do |c|
  # directory where cassettes are saved
  c.cassette_library_dir = 'spec/vcr'
  # your HTTP request service
  c.hook_into :webmock
end
