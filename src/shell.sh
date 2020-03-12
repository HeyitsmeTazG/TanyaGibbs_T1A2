echo "Welcome to Computers Against Developers!"
echo "Lets begin the install now"
git clone "https://github.com/HeyitsmeTazG/compAgainstDevs_terminalApp.git"
cd AttendanceLogger/src
echo "Time to ensure all required gems are installed"
bundle install
echo "All gems have been installed, running application for the first time now"
ruby compAgainstDevs.rb