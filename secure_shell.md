# Almost Everything About Secure Shell:

* Introduction to Secure Shell
* Installation and Configuration
* Using Secure Shell for Remote Connection
* Copy & Transfer Files Using SSH
* SSH and other services
* Securing the Secure Shell
* Conclusions

## Introduction to SSH

* What is SSH?: a network protocol to exchange data in a secure way between two computers. It's used by SCP and SFTP protocols to transfer stuff.
* How does SSH works?
  1. A connection is established between SSH Client and SSH Server with an authentication key;
  2. After a successful authentication a tunnel is established that sends encrypted data/file transfer;
  3. They can use a multiplex port 22.
* History of SSH
* SSH Users

Types of SSH Encryption:
1. Symmetrical: is the type where one key can be used to encrypt messages to the opposite party, and also decrypt the messages received from the other participant. Any one who holds the key can do this.
2. Asymmetrical: two keys are needed to send data, one for each direction, one is called _private_ and the other _public key_.
3. Hashing

## Programming

For installation in Ubuntu
``` sh
$ sudo apt-get install openssh-sever openssh-client
```

To know the version, use :
``` shell
$ ssh -V
```

## Extra Resources

* [How SSH Works](https://www.youtube.com/watch?v=zlv9dI-9g1U)
* [Understanding SSH Encryption and Connection Process](https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process)
