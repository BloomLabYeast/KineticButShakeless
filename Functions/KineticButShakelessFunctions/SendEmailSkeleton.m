function SendEmailSkeleton(purpose,emailaddress,string)
    gmail_user = %Add Gmail username here
    gmail_password = %Add Gmail password here
    string = purpose + ": " + string;
    [path,~,~] = fileparts(which('SendEmail.m'));
    system(sprintf('python %s %s %s %s "%s"', [path filesep 'SendEmail.py'], gmail_user, gmail_password, emailaddress, string));
end