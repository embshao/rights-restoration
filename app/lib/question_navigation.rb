class QuestionNavigation
  # Right now this isn't doing anything
  # but in the future we can use it to define next_path & prev_path

  FLOW = [
    Questions::StatesController,
    Questions::OverviewsController,
    Questions::FelonyNumsController,
    Questions::ClientsController,
    # ask if address is protected
    Questions::ClientAddressesController,
    Questions::ClientContactsController,
  ].freeze

end