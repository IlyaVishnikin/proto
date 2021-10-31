#
#
#
#
#
package Proto;
use Proto::testPB;

# optional: start_line, end_line;
#  start_word, end_word works normaly if passbase sorted
sub baseCut {
    my ($path_base, $start_line, $end_line, $start_word, $end_word) = @_; 
    my $current_line = 1;
    my 

    die "Uncorrect start or end lines.\n" if ($start_line <= $end_line);
    die "Password database is not sorted.\n" if (defined ($start_line, $end_word) and &testPB == 1);

    open PASSBASE, "<", $path_base or die "Can't open password base: $path_base\n";
    while (<PASSBASE>) {
        $current_line++;
        next if ($current_line != $start_line);
        next if (defined $start_word and substr $_, 0, length $start_word ne $start_word);

        open WRITEFILE, ">>", "./".(substr $_, 0, length $start_word);
        print WRITEFILE "$_\n";
        close WRITEFILE;

        return if (defined $end_word and substr $_, 0, length $end_word eq $end_word)
    }
    close PASSBASE
}