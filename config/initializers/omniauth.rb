OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '549288935252-39le08nbgd1h8lvugqrpa7lndvnce2rg.apps.googleusercontent.com', 'mqHyOd24ROIPIrIZij_L44FM', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end