# formats are for creating logs

# @>>>> right-justified
# @|||| centered
# @####.## numeric field holder
# @* multiline field holder

# define some vars
my $name = "Bobby";
my $age = 28;


# define a format

format EMPLOYEE =
===================================

@<<<<<<<

$name $age

===================================
.

write EMPLOYEE;
