# To create and run this image
0. Make sure Docker is intalled on your computer
1. Navigate to the folder FFI-interview in your terminal
2. Type the following command, and confirm with the Enter key
    > docker build -t interviewtask .
    
    Note that interviewtask is just a name and can be replaced, and that the period . should be included, as this denotes the current directory
3. Once the image is built, confirm the image is built by using the command 
    >docker images --all

    and you should see an image called interviewtask
4. To run the image, use the command
    >docker run -t -i -p 8080:80 interviewtask:latest

    Notes about the - options from docker's documentation
    >-i : Keep STDIN open even if not attached

    >-t : Allocate a pseudo-tty

    >-p : Publish all exposed ports to the host interfaces
5. The image should now be up and running, and the webservice can be viewed by navigating to 
    >localhost:8080

    in your web browser