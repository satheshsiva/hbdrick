# raw messages for joel's birthday
data = tibble::tribble(
  ~name,  ~msg,
  "Jennifer","HAPPY BIRTHDAY RICK! Wishing you great fishing weather and error-less condo data transfers. Keep being awesome!",
  "Arun","Happy birthday! I hope you get to eat Jeff's Pizza today and get to install Juicer on all the HPC clusters at ISU.. because that's what you love to do on your bday!",
  "Andrew","Happy birthday! I hope you get to eat Jeff's Pizza today and get to install Juicer on all the HPC clusters at ISU.. because that's what you love to do on your bday!",
  "Siva","Happy birthday! I hope you get to eat Jeff's Pizza today and get to install Juicer on all the HPC clusters at ISU.. because that's what you love to do on your bday!",
  "Maryam","Happy birthday! I hope you get to eat Jeff's Pizza today and get to install Juicer on all the HPC clusters at ISU.. because that's what you love to do on your bday!",
  "Satheesh","MANY MORE HAPPY RETURNS OF THE RICK! Hope you have a great day, eat well and get drunk, rock you",

)

# save it.
usethis::use_data(data, internal = FALSE, overwrite = TRUE, compress = "xz")


