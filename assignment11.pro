%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i_version( i_section_example, `2020-07-14 14:26:13` ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

i_trace_rule_captures. 
i_date_format( _ ).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Line Data Capture

run section line_header_line,
    qn0( [ or( [
        line_invoice_line
        , line
        ] )
] ).

line_header_line line_rul
    `Line Items`.

line_invoice_line line_rul
        line_item(fd([q(alpha,2,2), begin, q(dec,1,5), end, q(alpha("D"),1,1)])).
        



