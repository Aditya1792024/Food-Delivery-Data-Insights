# Data Insights: Food Delivery Data
<h2>Overview:</h2>
<p>This project harnesses the power of SQL to analyze food delivery data and extract valuable insights. 
Utilizing per-order records and descriptive information such as customer code, restaurant ID, order date and time, and more, the analysis paints a clear picture of trends and performance within the food delivery domain. 
Through structured queries executed in SQL Server Management Studio (SSMS), various analytical questions were addressed, such as identifying top-performing outlets, tracking daily new customer counts, and exploring promotional code usage. 
This project exemplifies how SQL can unlock data's potential to inform decision-making and enhance operational understanding.</p>
<h2>About Data:</h2>
<p>Each record in the dataset represents a placed order. The dataset includes the following columns:</p>
<ol>
  <li><b>Order_Id:</b> A unique identifier for each order.</li>
  <li><b>Customer_code:</b> A unique code assigned to each customer, indicating who placed the order.</li>
  <li><b>Placed_at:</b> The date and time when the order was placed.</li>
  <li><b>Restaurant_id:</b> A unique identifier assigned to each restaurant, indicating which outlet fulfilled the order.</li>
  <li><b>Cuisine:</b> Represents one of five cuisine types: American, Italian, Japanese, Lebanese, and Mexican.</li>
  <li><b>Order_status:</b> Specifies the status of the order with two possible values: Delivered and Cancelled.</li>
  <li><b>Promo_code name:</b> Indicates the promo code applied by the customer; this column contains NULL values for orders without a promo code.</li>
</ol>
<h2>Procedure:</h2>
<p>To extract meaningful insights from the food delivery dataset, I formulated multiple analytical questions aimed at uncovering trends and patterns.</p>
<h3>Questions:</h3>
<ul>
  <li>
    Find top 3 outlets by cuisine type without using limit and top function.
  </li>
</ul>
<img src="Images/Q1" alt="Description of the image" width="500" />

















