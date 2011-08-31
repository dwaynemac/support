class InquiryMailer < ActionMailer::Base

  def confirmation(inquiry, request)
    @inquiry =  inquiry
    @title = InquirySetting.confirmation_subject
    mail( :to => inquiry.email,
          :subject => InquirySetting.confirmation_subject(Globalize.locale),
          :from => "\"#{RefinerySetting[:site_name]}\" <no-reply@#{request.domain(RefinerySetting.find_or_set(:tld_length, 1))}>",
          :reply_to => InquirySetting.notification_recipients.split(',').first
    )
  end

  def notification(inquiry, request)
    @inquiry =  inquiry
    @title = InquirySetting.notification_subject
    mail(:to => InquirySetting.notification_recipients,
         :subject => InquirySetting.notification_subject,
         :from => "\"#{RefinerySetting[:site_name]}\" <no-reply@#{request.domain(RefinerySetting.find_or_set(:tld_length, 1))}>"
    )
  end

end
