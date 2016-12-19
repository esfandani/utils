
Run 
sudo chmod +x /etc/acpi/events/sony-brightness-up  /etc/acpi/events/sony-brightness-down  /etc/acpi/brightdown.sh  /etc/acpi/brightup.sh

Then run 

acpi_listen

and hit the key combination. The first line should be the signal that 
the key has been pressed and the second line is the signal that it has 
been released.



My output was:


Fn+F5: sony/hotkey SNC 00000001 00000010

 Fn+F6: sony/hotkey SNC 00000001 0000

For me those are different. see the output of files
