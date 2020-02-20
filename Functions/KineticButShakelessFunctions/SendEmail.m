function SendEmail(purpose,emailaddress,string)
    gmail_user = '';
    gmail_password = '';
    string = purpose + ": " + string;
    [path,~,~] = fileparts(which('SendEmail.m'));
    system(sprintf('python %s %s %s %s "%s"', [path filesep 'SendEmail.py'], gmail_user, gmail_password, emailaddress, string));
end