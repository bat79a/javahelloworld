FROM java:7

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahellowolrd
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
