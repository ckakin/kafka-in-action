# Source Code for Kafka in Action

## Notes

Here are some notes regarding the source code:

1. For Chapter 1 and Appendix B, they are mostly shell commands and will be presented in a [Markdown](https://daringfireball.net/projects/markdown/syntax) format.

### Requirements
This project was built with the following versions:

1. Java 8
2. Apache Maven 3.5.0

### IDE setup
 
1. I have used eclipse for my IDE. To set up for eclipse run mvn eclipse:eclipse from the base directory of this repo. Or, you can Import->Existing Maven Projects.


### Installing Kafka
Run the following in a directory (without spaces in the path) once you get the jar downloaded. Refer to Appendix B if needed.

    tar -xzf kafka_2.11-0.11.0.0.tgz
    cd kafka_2.11-0.11.0.0


### Running Kafka
1. To start Kafka go to <install dir>/kafka_2.11-0.11.0.0-SNAPSHOT/
2. Run bin/zookeeper-server-start.sh
3. Start the Kafka Brokers:
    
    bin/kafka-server-start.sh config/server0.properties
    bin/kafka-server-start.sh config/server1.properties
    bin/kafka-server-start.sh config/server2.properties
 
### Stopping Kafka
1. To stop Kafka go to <install dir>/kafka_2.11-0.11.0.0-SNAPSHOT/
2. Run bin/kafka-server-stop.sh
3. Run bin/zookeeper-server-stop.sh

### Code by Chapter
All the code from the book can be found in the project corresponding to the chapter.
 
### Running the examples
 
All of the example programs can be run from within an IDE or from the command line. Make sure that your ZooKeeper and Kafka Brokers are up and running before you can run any of the examples.

The examples will usually write out to topics and print to the console.

### Shell Scripts

In the Chapter 2 project, I have included a couple of scripts if you want to use them under src/main/resources.

They include:
* starteverything.sh //This will start your ZooKeeper and Kafka Brokers (you will still have to go through the first time setup with Appendix B before using this.)
* stopeverything.sh // Will stop ZooKeeper and your brokers
* portInUse.sh // If you get a port in use error on startup, this script will kill all of the processes using those ports (assuming you are using the same ports as in Appendix B).

