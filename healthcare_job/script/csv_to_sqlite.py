import pandas as pd
import sqlite3
from pathlib import Path

CSV_PATH = Path(r"C:\Users\JKK4V3PX\healthcare_job_analyze\healthcare_job\data\emed_careers_eu.csv")
DB_PATH = Path(r"C:\Users\JKK4V3PX\healthcare_job_analyze\healthcare_job\data\emed_careers_eu.db")


print(" Reading CSV file...")
df = pd.read_csv(CSV_PATH)
print(f"CSV loaded: {len(df)} rows, {len(df.columns)} columns")


print("Writing to SQLite database...")
conn = sqlite3.connect(DB_PATH)
df.to_sql("raw_jobs", conn, if_exists="replace", index=False)
conn.close()
print(f"Done! Data written to {DB_PATH.name} (table: raw_jobs)")
