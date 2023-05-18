(1) - OverView >> 
1 - This Backup Application was created to Restore a Data to save it from being removed for any reason at anytime.
2 - This code has an  option it can make a limited number of backups so if the user want to save a space for any other program can easily do that by choose number of maximum backups as input. This option allows the user to save the data by that the App will delete the oldest folder which has the oldest data and would replace it by a new folder has a new data named by its date.


(2) - Prepreqists
u just need to install ubuntu and write in the terminal ( make ) it will launch the App easily.
if make command not installed you have to install it easily by typing sudo apt install make. 


(3) - How to run 
easily user should write make on the terminal. 
i made it cleary on the App by makeing echo statements should tell you easily what input should you put on the App.
There is 4 input the App should take from the user.
First one is the name of the source directory which should be exist to take the data from it.
Second one is the name of the destination the place where the App will save the data on it ( it make a validate check if the destination name exist it will not make a new one and just append on it and if there is not a exist directory named as the user mentioned on the input it will create a new directory and put the backup data on it.)
Third ine is time interval ( by seconds ) indicating the time interval between every check on the data changed or not.
Fourth one is Max backups it is the number of backups the user should put as a input so that after that the App delete the oldest folder has an old data named by its date as a format ( %YYYY-%MM-DD -%HH-%MM-%SS ) and replcae it with a new one.


(4) - Step by Step Instruction
After that it will make first copy of the data from the source to a destinantion.
if the destination exist it will append on it and if its name not exist it will create a new one with this name.
it will make a check on the data at the source directory every interval of time.
if the data changed it will copy a new folder named by its creation date in format ( %YYYY-%MM-DD -%HH-%MM-SS ) to the destination.
if the destination reached its maximum number of backups it will delete the oldest one and created a new subdirectory with the new changed data And so on.
