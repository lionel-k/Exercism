# Bob is a lackadaisical teenager. In conversation,
# his responses are very limited.
# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
# He says 'Fine. Be that way!'
# if you address him without actually saying anything.
# He answers 'Whatever.' to anything else.
class Bob
  class << self
    def hey(remark)
      if being_questionned_by(remark) && being_yelled_at_by(remark)
        return 'Calm down, I know what I\'m doing!'
      end
      return 'Sure.' if being_questionned_by(remark)
      return 'Whoa, chill out!' if being_yelled_at_by(remark)
      return 'Fine. Be that way!' if being_said_nothing_by(remark)
      'Whatever.'
    end

    private

    def being_questionned_by(remark)
      remark.strip[-1] == '?'
    end

    def being_yelled_at_by(remark)
      remark.upcase == remark && remark.count('a-dA-Z') > 0
    end

    def being_said_nothing_by(remark)
      remark.strip == ''
    end
  end
end

module BookKeeping
  VERSION = 2
end
