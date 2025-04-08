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
<ol>
  <li>
    Find top 3 outlets by cuisine type without using limit and top function.
    <p></p>
    <img src="/Images/Q1.jpg" width="1039" height="200"/>
  </li>
  <p></p>
  <li>
    Find the daily new customer count from the launch date.
    <p></p>
    <img src="/Images/Q2.jpg" width="631" height="200"/>
  </li>
  <p></p>
  <li>
    Count of all the users who were acquired in Jan 2025 and only placed one order in Jan and did not place any other order.
    <p></p>
    <img src="/Images/Q3.jpg" width="703" height="171"/>
  </li>
  <p></p>
  <li>
    List all the customers with no order in the last 7 days but were acquired one month ago with their first order on promo.
    <p></p>
    <img src="/Images/Q4.jpg" width="900" height="270"/>
  </li>
  <p></p>
  <li>
    Growth team is planning to create a trigger that will target customers after their every 3rd order with personalized communication and they have asked you to create a query for this.
    <p></p>
    <img src="/Images/Q5.jpg" width="900" height="270"/>
  </li>
  <p></p>
  <li>
    List customers who placed more than one order and all their orders on a promo only.
    <p></p>
    <img src="/Images/Q6.jpg" width="900" height="270"/>
  </li>
  <p></p>
  <li>
    What percent of customers were originally acquired in jan 2025 compared to all customers acquired in that month. Originally acquired means Placed their first order without promo code.
    <p></p>
    <img src="/Images/Q7.jpg" width="900" height="270"/>
  </li>
</ol>


















