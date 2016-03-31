module MatchesHelper
  
  # horrible name
  # translate enumeration used to X or O
  def enum_to_string(i)
    if i == 1
      return "X"
    elsif i == 2
      return "O"
    end
  end
  
  def pretty_current_player(current_player)
    case current_player
    when "player_x"
      return "Player X"
    when "player_o"
      return "Player O"
    end
  end
  
  def pretty_winning_state(winning_state)
    case winning_state
    when "open"
      return "Open"
    when "x_wins"
      return "X wins!"
    when "o_wins"
      return "O wins!"
    when "draw"
      return "Draw"
    end
  end

end
