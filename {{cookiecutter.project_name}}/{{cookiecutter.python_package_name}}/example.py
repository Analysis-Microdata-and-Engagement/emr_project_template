import random

def emr_countdown(number_large: int, number_small: int):
    """
    Simulates a round of the numbers game of Countdown

    Parameters
    ----------
    number_large: int
        The number of large numbers 
    number_small: int
        The number of small numbers 

    Returns
    -------
    None
        Print Output to the console
    """

    assert number_large in range(0, 7), "number_large must be an int between 0 and 6"
    assert number_small in range(0, 7), "number_small must be an int between 0 and 6"
    assert number_large + number_small == 6, f"You must select 6 numbers total, you have only selected: {number_large + number_small} "

    large_numbers_available = [25, 50, 75, 100]
    small_numbers_available = list(range(1, 11)) * 2
    target_number = random.randint(100, 999)

    selected_large_numbers = random.sample(large_numbers_available, number_large)
    selected_small_numbers = random.sample(small_numbers_available, number_small)

    pretty_print_large = ', '.join([str(i) for i in selected_large_numbers])
    pretty_print_small = ', '.join([str(i) for i in selected_small_numbers])

    print("#" * 30)
    print("Welcome to EMR Countdown! Numbers only")
    print("#" * 30)
    print(f"The large numbers are: {pretty_print_large} ")
    print(f"The small numbers are: {pretty_print_small} ")
    print("")
    print(f"And the Number to get is: {target_number}")
