ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = :true

ActionMailer::Base.smtp_settings = {
  address: 'smtp.google.com',
  port: 25,
  username: 'lavriv92@gmail.com',
  password: 'nightwish1992',
  enable_start_tsls_auto: true,
  authentication: :plain
}
