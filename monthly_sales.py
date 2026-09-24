import pandas as pd
import matplotlib.pyplot as plt
data = {
    "Order Date": [
        "5-Jan-25", "12-Jan-25", "20-Jan-25",
        "3-Feb-25", "15-Feb-25", "25-Feb-25",
        "4-Mar-25", "18-Mar-25", "28-Mar-25",
        "6-Apr-25", "17-Apr-25", "26-Apr-25"
    ],
    "Sales": [250, 450, 320, 600, 400, 550,
              700, 500, 650, 800, 450, 720]
}

df = pd.DataFrame(data)
df["Order Date"] = pd.to_datetime(df["Order Date"])
df["Month"] = df["Order Date"].dt.strftime("%b")
monthly_sales = df.groupby("Month")["Sales"].sum()
month_order = ["Jan", "Feb", "Mar", "Apr"]
monthly_sales = monthly_sales.reindex(month_order)

print("Monthly Sales:")
print(monthly_sales)
monthly_sales.plot(kind="line", marker="o")

plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Total Sales")
plt.grid(True)
plt.show()