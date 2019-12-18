set clock_constraint { \
    name clk \
    module encrypt_128_key_expand_inline_no_branch \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

