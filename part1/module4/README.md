# Defining start conditions for the container

As discussed earlier, the *ENTRYPOINT* gives the main executable of the application, and can be combined with arguments inserted by the user or the *CMD* field:
~~~dockerfile
#EXEC FORM
FROM image
ENTRYPOINT ["main/executable"]
CMD ["default_parameter"] #can be overriden

#SHELL FORM
FROM image
ENTRYPOINT main/executable
CMD default_parameter
#most of the images pass the bash shell as the main executable
~~~

We will improve the last Dockefile so what we pass the script as *ENTRYPOINT* for the application, and the input is given already by the command to run the container:
~~~dockerfile
ENTRYPOINT ["./script.sh"]
CMD ["helsinki.fi"]
~~~