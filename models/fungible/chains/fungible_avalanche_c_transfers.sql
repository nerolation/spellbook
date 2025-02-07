{{ config(
        tags = ['dunesql'],
        schema = 'fungible_avalanche_c',
        alias=alias('transfers'),
)
}}

{{fungible_transfers(
    blockchain='avalanche_c'
    , native_symbol='AVAX'
    , traces = source('avalanche_c','traces')
    , transactions = source('avalanche_c','transactions')
    , erc20_transfers = source('erc20_avalanche_c','evt_Transfer')
    , erc20_tokens = ref('tokens_avalanche_c_erc20')
)}}