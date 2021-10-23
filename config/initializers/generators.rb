Rails.application.config.generators do |generator|
  generator.orm :active_record, primary_key_type: :uuid

  # Because I'm using :uuid for PKs, let me specify them as the default for FKs too.
  generator.orm :active_record, foreign_key_type: :uuid
end