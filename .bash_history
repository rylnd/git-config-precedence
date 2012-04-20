alias un='unset GIT_AUTHOR_NAME'
alias ue='unset GIT_AUTHOR_EMAIL'
alias sn='export GIT_AUTHOR_NAME="GIT_AUTHOR_NAME"'
alias se='export GIT_AUTHOR_EMAIL="GIT.AUTHOR.EMAIL@gmail.com"'
alias uln='git config --unset user.name'
alias ule='git config --unset user.email'
alias sln='git config user.name local.user.name'
alias sle='git config user.email local.user.email@gmail.com'
alias uall='un;ue;uln;ule'

uall
echo "test1" > test
git commit -am "T1: Only global configuration set"

sle
echo "test2" > test
git commit -am "T2: local.user.email"

ule
se
echo "test3" > test
git commit -am "T3: GIT_AUTHOR_EMAIL"

sle
echo "test4" > test
git commit -am "T4: local.user.email and GIT_AUTHOR_EMAIL"

uall
sln
echo "test5" > test
git commit -am "T5: local.user.name"

sle
echo "test6" > test
git commit -am "T6: local.user.name and local.user.email"

uall
sln
se
echo "test7" > test
git commit -am "T7: local.user.name and GIT_AUTHOR_EMAIL"

sle
echo "test8" > test
git commit -am "T8: local.user.name, local.user.email and GIT_AUTHOR_EMAIL"

uall
sn
echo "test9" > test
git commit -am "T9: GIT_AUTHOR_NAME"

sle
echo "test10" > test
git commit -am "T10: GIT_AUTHOR_NAME and local.user.email"

ule
se
echo "test11" > test
git commit -am "T11: GIT_AUTHOR_NAME and GIT_AUTHOR_EMAIL"

sle
echo "test12" > test
git commit -am "T12: GIT_AUTHOR_NAME, local.user.email and GIT_AUTHOR_EMAIL"

uall
sln
sn
echo "test13" > test
git commit -am "T13: local.user.name and GIT_AUTHOR_NAME"

sle
echo "test14" > test
git commit -am "T14: local.user.name, GIT_AUTHOR_NAME, and local.user.email"

ule
se
echo "test15" > test
git commit -am "T15: local.user.name, GIT_AUTHOR_NAME, and GIT_AUTHOR_EMAIL"

sle
echo "test16" > test
git commit -am "T16: local.user.name, GIT_AUTHOR_NAME, local.user.email, and GIT_AUTHOR_EMAIL"
