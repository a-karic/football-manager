module Football
  class Representation < Club
    store :properties, accessors: [:selected_players], coder: JSON
  end
end
