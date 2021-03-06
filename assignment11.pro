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
        



i_version( lowercase_rules_name, `20/07/2020 14:20:04` ).

i_trace_rule_captures.

% INVOICE NUMBER
run rul line_with_text(`invoice_number`)
    , in , `Anchor Text` , invoice_number(s1) , Anchor Text.

% INVOICE DATE
run rul line_with_text(`invoice_date`)
    , in , `Anchor Text` , invoice_date(date) , Anchor Text.

% ORDER NUMBER
run rul line_with_text(`order_number`)
    , in , `Anchor Text` , order_number(s1) , Anchor Text.

% SUPPLIER VAT NUMBER
run rul line_with_text(`supplier_vat_number`)
    , in , `Anchor Text` , supplier_vat_number(s1) , Anchor Text.

% TOTAL NET
run rul line_with_text(`Anchor Text`)
    , in , `Anchor Text` , total_net(d) , Anchor Text.

% TOTAL VAT
run rul line_with_text(`total_vat`)
    , in , `Anchor Text` , total_vat(d) , Anchor Text.

% TOTAL INVOICE
run rul line_with_text(`total_invoice`)
    , in , `Anchor Text` , total_invoice(d) , Anchor Text.


% Line section


% i_section

run section line_header_line,
        qn0( [ peek_fails(line_end_line)
        , or([

            [ line_invoice_line_line ]

            , [ line ]

            ])
        ] ).

% line_header_line

line_header_line line_rul
        `header line text`.


% line_end_line

line_end_line line_rul
        `end rule text`.


% line_invoice_line

line_invoice_line_line line_rul
        `end rule text`.
