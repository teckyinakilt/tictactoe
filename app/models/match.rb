class Match < ActiveRecord::Base
  enum winning_state: {:open => 0, :x_wins => 1, :o_wins => 2, :draw => 3}
  enum current_player: {:player_x => 1, :player_o => 2}
  X = 1
  O = 2
    
  # the board:
  # a1 | a2 | a3
  # -------------
  # b1 | b2 | b3
  # -------------
  # c1 | c2 | c3
  
  # winning configurations:
  # [a1, b2, c3]
  # [b1, b2, b3]
  # [c1, b2, a3]
  # [a2, b2, c2]
  # [a1, a2, a3]
  # [a1, b1, c1]
  # [a3, b3, c3]
  # [c1, c2, c3]
  
  # switch the current player
  def change_current_player
    if self.current_player == "player_x"
      self.current_player = :player_o
      self.save
    else
      self.current_player = :player_x
      self.save
    end
  end
  
  # TODO: explore refactoring
  def calculate_winning_state
    # check the center
    if !b2.nil?
      if (a1 == b2 && b2 == c3)
        self.winning_state = b2
      elsif (a2 == b2 && b2 == c2)
        self.winning_state = b2
      elsif (a3 == b2 && b2 == c1)
        self.winning_state = b2
      elsif (b1 == b2 && b2 == b3)
        self.winning_state = b2
      end
    end
    
    # check the outside track
    if !a1.nil?
      if (a1 == a2 && a1 == a3)
        self.winning_state = a1
      elsif (a1 == b1 && a1 == c1)
        self.winning_state = a1
      end
    end
    
    # check the opposite corner
    if !c3.nil?
      if (c1 == c3 && c2 == c3)
        self.winning_state = c3
      elsif (a3 == c3 && b3 == c3)
        self.winning_State = c3
      end
    end
    self.save
  end
  
end
