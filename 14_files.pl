# working with files in perl is basic
# you associate a file with an external entity
# and then use a  variety of operators and functions within perl to read and update the data stored within the data stream

# filehandles are capable of read/write functionality on filehandles

# read file read only

open(DATA, "<sample.txt") or die "Couldn't open file file.txt";

while(<DATA>) {
  print "$_";
}
