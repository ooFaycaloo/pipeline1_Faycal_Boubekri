import json
import os
from datetime import datetime
import random

def load_sample(path):
    with open(path, 'r') as file:
        lines = [line.strip() for line in file.readlines() if line.strip()] 
        print(lines)
    return lines

def generate_json(data):
    a = []  
    totals = {} 

    for line in data:
        parts = line.split(' ')
        if len(parts) == 3: 
            name = parts[0].strip()  
            amount_str = parts[2].strip()  
            
            if '€' in amount_str:
                amount_str = amount_str.replace('€', '')
                amount = int(amount_str)

                if name in totals:
                    totals[name] += amount
                else:
                    totals[name] = amount

    for name, total in totals.items():
        a.append({'name': name, 'total_sent': total})
        
    a=({'name': name, 'total_sent': total})
    print("++++",a)

    return a

def save_result(path: str, result: list[dict]):
    random_number = random.randint(100, 999)
    
    current_datetime = datetime.now().strftime("%Y%m%d_%H%M%S")
    filename = f"result_sample{random_number}_{current_datetime}.json"
    full_path = os.path.join(path, filename)
    
    with open(full_path, 'w') as json_file:
        json.dump(result, json_file, indent=4)
    

def main():
    data_path = r'/content/text.txt'
    sample_data = load_sample(data_path)
    json_result = generate_json(sample_data)
    save_path = r'/content/results'  
    
    save_result(save_path, json_result)

if __name__ == "__main__":
    main()