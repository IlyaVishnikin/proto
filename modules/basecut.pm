#
#
#
#
#
package Proto;

# optional: start_line, end_line;
#  start_word, end_word works normaly if passbase sorted
sub baseCut {
    my($path_base, $start_line, $end_line, $start_word, $end_word) = @_; 
    my $current_line = 1;

    open PASSBASE, "<", $path_base;
    while (<PASSBASE>) {
        $current_line++;
        next if ($current_line != $start_line);
        next if (substr $_, 0, length $start_word ne $start_word);
        
    }
}

sub 