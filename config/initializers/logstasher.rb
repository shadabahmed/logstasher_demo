if LogStasher.enabled
  LogStasher.add_custom_fields do |fields|
    # This block is run in application_controller context, 
    # so you have access to all controller methods
    fields[:user] = 'Logstasher'

  end
end
