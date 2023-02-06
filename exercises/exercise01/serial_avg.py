# data = "019-99.99-46.99"

class SerialAvg:
    def __init__(self) -> None:
        pass
    def get_serial_average(self, data: str) -> str:
        if(len(data) == 15):
            try:
                seperated_data = data.split("-")
                last_value = (float(seperated_data[1]) + float(seperated_data[2]))/2
                last_value_check = (f'{last_value:.2f}'.split("."))
                if len(last_value_check[0]) < 2:
                    last_value_check[0] = "0" + last_value_check[0]
                if len(last_value_check[1]) < 2:
                    last_value_check[1] = last_value_check[1] + "0"
                return (f'{seperated_data[0]}-{last_value_check[0]}.{last_value_check[1]}')
            except Exception as e:
                return f"error::  {e}"
        else:
            return "input length is not as required"


obj = SerialAvg()

print(obj.get_serial_average("019-9f.99-46.99"))

