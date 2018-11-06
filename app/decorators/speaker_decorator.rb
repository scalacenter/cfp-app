class SpeakerDecorator < ApplicationDecorator
  delegate_all
  decorates_association :proposals
  decorates_association :program_sessions

  def gravatar
    image_url =
      "https://www.gravatar.com/avatar/#{object.gravatar_hash}?s=50"

    h.image_tag(image_url, class: 'pull-left speaker-image')
  end

  def name_and_email
    "#{object.name} (#{object.email})"
  end

  def bio
    object.bio.present? ? object.bio : object.user.try(:bio)
  end

  def webpage
    object.webpage.present? ? object.webpage : object.user.try(:webpage)
  end

  def experience
    object.experience.present? ? object.experience : object.user.try(:experience)
  end

  def twitter
    object.twitter.present? ? object.twitter : object.user.try(:twitter)
  end

  def photo_url
    object.photo_url.present? ? object.photo_url : object.user.try(:photo_url)
  end
end
