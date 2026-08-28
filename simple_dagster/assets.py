from dagster import asset

@asset
def addition_asset(context) -> int:
    a = 10
    b = 20

    result = a + b

    context.log.info(f"Addition: {a} + {b} = {result}")

    return result

@asset
def multiplication_asset(context) -> int:
    a = 5   
    b = 4

    result = a * b

    context.log.info(f"Multiplication: {a} * {b} = {result}")

    return result