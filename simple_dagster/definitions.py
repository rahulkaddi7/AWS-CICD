from dagster import Definitions
from simple_dagster.assets import addition_asset, multiplication_asset

defs = Definitions(
    assets=[
        addition_asset,
        multiplication_asset,
    ]
)