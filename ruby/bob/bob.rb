# Bob is a lackadaisical teenager. In conversation,
# his responses are very limited.
# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
# He says 'Fine. Be that way!'
# if you address him without actually saying anything.
# He answers 'Whatever.' to anything else.
class Bob
  def self.hey(remark)
    return 'Calm down, I know what I\'m doing!' if being_questionned_by(remark) && being_yelled_at_by(remark)
    return 'Sure.' if being_questionned_by(remark)
    # return 'Whoa, chill out!' if remark.upcase == remark || remark[-1] == '!'
    return 'Whoa, chill out!' if being_yelled_at_by(remark)
    return 'Fine. Be that way!' if being_said_nothing_by(remark)
    'Whatever.'
  end

  # private

  def self.being_questionned_by(remark)
    remark.strip[-1] == '?'
  end

  def self.being_yelled_at_by(remark)
    # remark.gsub
    # remark.gsub!(/\d/, "")
    remark.upcase == remark && remark.count("a-dA-Z") > 0
  end

  def self.being_said_nothing_by(remark)
    remark.strip == ''
  end
end

module BookKeeping
  VERSION = 2
end
