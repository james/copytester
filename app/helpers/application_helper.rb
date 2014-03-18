module ApplicationHelper
  def trust_ratings
    r = [
      ["Strongly Disagree", 1],
      ["Disagree", 2],
      ["Neutral", 3],
      ["Agree", 4],
      ["Strongly Agree", 5]
    ]
    rand > 0.5 ? r : r.reverse
  end
end
