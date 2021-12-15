library(icesSharePoint)

# set ices username
options(icesSharePoint.username = "colin")
options("icesSharePoint.username")



# first call to anything will ask for a password,
# there after it will be stored in a secrets store that only you
# have access to.  however be carefull because if someone gains
# access to your computer your password will be accessible via:
keyring::key_get("icesSharePoint", "colin") # beware!! this will print your password to the screen

# you need to be logged into your machine as you to read this, but
# if someone somehow wrote a dodgy script, they could programatically
# access your password.... I am going to try and solve this, but I need
# to think about it more.
# You can clear the password at the end of the session with this:
icesSharePoint:::SP_clearpassword() # which just calls
keyring::key_delete("icesSharePoint", "colin")
# this would seems to be the safest approach for now, and I will try
# hard code the clearing of the password fromt he secret store

# OK back to the work :)
# set the site to save supplying in function calls
options(icesSharePoint.site = "/ExpertGroups/WGMIXFISH-ADVICE")

# find the directory we want to access
spdir()
spdir("2020 Meeting Documents/06. Data/FIDES")

fnames <- spfiles(data_dir, full = TRUE)
for (fname in fnames) {
  spgetfile(fname, destdir = ".")
}
