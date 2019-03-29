function SendEmailSkeleton(purpose,emailaddress,string)
    gmail_user = %Add Gmail username here
    gmail_password = %Add Gmail password here
    string = purpose + ": " + string;
    system(sprintf('python %s %s %s %s "%s"', [pwd filesep 'Functions' filesep 'KineticButShakelessFunctions' filesep 'SendEmail.py'], gmail_user, gmail_password, emailaddress, string));
end