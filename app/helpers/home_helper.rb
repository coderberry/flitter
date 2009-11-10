module HomeHelper
  # these methods can be in application helper or a library if used at more places in the app
  # this one is just a quick fix for the app breaking on a fresh install of github code

  # last message or placeholder
  #
  def last_flit_message
    @last_flit.blank? ? 'No Flits yet.' : @last_flit.message
  end
  
  # last flit creation time or  placeholder
  #
  def last_flit_created
    @last_flit.blank? ? 'Awaiting first flit.' : (distance_of_time_in_words_to_now(@last_flit.created_at) + 'ago')
  end
end
