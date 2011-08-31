module InquiryMailerHelper

  # @example
  #   paragraph do
  #     "lorem ipsum etc"
  #   end
  def paragraph
    content_tag :p, :style => 'margin: 0; margin-bottom:10px; padding: 0; font-size: 12px; font-weight: normal; line-height: 20px; text-align: justify; color: #4D4D4D;' do
      yield
    end
  end

  # @example bold("lorem ipsum")
  def bold(string)
    "<strong style='color: #0099FF; text-decoration: none; font-weight: bold;'>#{string}</strong>".html_safe
  end

  def url_for_image(image_file_name)
    "http://padma-support.heroku.com/images/inquiry_mailer/#{image_file_name}"
  end
end