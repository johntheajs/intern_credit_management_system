import time

log_file = '/app/sidecar-logs.txt'

def log_message():
    try:
        with open(log_file, 'a') as f:
            timestamp = time.strftime('%Y-%m-%d %H:%M:%S')
            f.write(f'Sidecar log entry at {timestamp}\n')
        print("Logged a new entry to the sidecar log file.")
    except Exception as e:
        print(f"Error while logging: {e}")

if __name__ == "__main__":
    while True:
        log_message()
        time.sleep(10)
