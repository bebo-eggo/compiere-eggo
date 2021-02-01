update c_greeting_trl
set name = 'Meneer',
greeting = 'Meneer'
where ad_language = 'nl_NL' and NAME = 'Mr';

update c_greeting_trl
set greeting = 'Mevrouw' ,name = 'Mevrouw'
where ad_language = 'nl_NL' and NAME = 'Mrs';

update c_greeting_trl
set greeting = 'Mevrouw' ,name = 'Mevrouw'
where ad_language = 'nl_NL' and NAME = 'Madame';