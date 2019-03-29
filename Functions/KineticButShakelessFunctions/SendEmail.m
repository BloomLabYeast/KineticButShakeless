function SendEmail(purpose,emailaddress,string)
    gmail_user = 'comingfrommatlab@gmail.com';  
    gmail_password = 'matlab123';
    string = purpose + ": " + string;
    system(sprintf('python SendEmail.py %s %s %s "%s"', gmail_user, gmail_password, emailaddress, string));
end