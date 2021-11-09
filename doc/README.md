MindBlockchain Core
=============

Setup
---------------------
MindBlockchain Core is the original MindBlockchain client and it builds the backbone of the network. It downloads and, by default, stores the entire history of MindBlockchain transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download MindBlockchain Core, visit [mindblockchaincore.org](https://mindblockchaincore.org/en/download/).

Running
---------------------
The following are some helpful notes on how to run MindBlockchain Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/mindblockchain-qt` (GUI) or
- `bin/mindblockchaind` (headless)

### Windows

Unpack the files into a directory, and then run mindblockchain-qt.exe.

### macOS

Drag MindBlockchain Core to your applications folder, and then run MindBlockchain Core.

### Need Help?

* See the documentation at the [MindBlockchain Wiki](https://en.mindblockchain.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#mindblockchain](https://webchat.freenode.net/#mindblockchain) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#mindblockchain).
* Ask for help on the [MindBlockchainTalk](https://mindblockchaintalk.org/) forums, in the [Technical Support board](https://mindblockchaintalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build MindBlockchain Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/mindblockchain-core/docs/blob/master/gitian-building.md)

Development
---------------------
The MindBlockchain repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.mindblockchaincore.org/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [MindBlockchainTalk](https://mindblockchaintalk.org/) forums, in the [Development & Technical Discussion board](https://mindblockchaintalk.org/index.php?board=6.0).
* Discuss project-specific development on #mindblockchain-core-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#mindblockchain-core-dev).
* Discuss general MindBlockchain development on #mindblockchain-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#mindblockchain-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [mindblockchain.conf Configuration File](mindblockchain-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
