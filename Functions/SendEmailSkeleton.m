function SendEmailSkeleton(purpose,emailaddress,string)
    gmail_user = %Add Gmail username here
    gmail_password = %Add Gmail password here
    string = purpose + ": " + string;
    system(sprintf('python SendEmail.py %s %s %s "%s"', gmail_user, gmail_password, emailaddress, string));
end