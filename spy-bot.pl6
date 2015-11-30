my ( $nick, $channel ) = 'P6NotABot', '#perl6-recon';
await IO::Socket::Async.connect('10.10.11.12', 6667).then({ given .result {
    .print(qq:to/END/
        NICK $nick
        USER Perl6NotABot Perl6NotABot irc.freenode.net :Really not a bot
        JOIN $channel
        END
    );
    react { whenever .chars-supply { .say } }
}});
