# file IO_1

# Blocks vs. Streams

# files to the OS are not "blocks" of data, they are streams.  This allows programs to buffer them into memory(basically taking the file in chunks)

# a file can something read from the disk, the network, the console/keyboard etc

# file could be:
  # Disk file
  # web Server
  # network data
  # keyboard


# takeaway: filestream could be any number of datasources, but the technique for accessing them is the same
