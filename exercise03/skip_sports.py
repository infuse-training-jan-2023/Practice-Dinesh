class Skip_sport:
    def __init__(self) -> None:
        pass

    def skip_sports(self,arr,no):
        try: 
            if(no < 0 or no > len(arr)):
                return "invalid number"
            hash = {}
            for index in range(len(arr)):
                if index >= no:
                    hash[index] = arr[index]
            return hash
        except:
            return "error"

obj_skip_sports = Skip_sport()

print(obj_skip_sports.skip_sports(["cricket","TT","Football","Hockey"],2))