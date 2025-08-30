# Stock Picker

This project is a solution to the "Stock Picker" problem from [The Odin Project's Ruby curriculum](https://www.theodinproject.com/lessons/ruby-stock-picker). The goal is to analyze a series of stock prices and find the most profitable buying and selling days.

## The Problem

Implement a method `#stock_picker` that takes an array of stock prices, one for each day. It should return an array containing two elements: the best day to buy and the best day to sell to maximize profit.

## How It Works

The method iterates through the array of prices to find the lowest price to buy and a subsequent highest price to sell. The goal is to return the pair of days (represented by their 0-based index) that results in the greatest possible profit.

## Usage

1.  Ensure you have Ruby installed.
2.  Save the code in a file (e.g., `stock_picker.rb`).
3.  Run the file from your terminal. You can test the method by calling it with different arrays of stock prices.

**Example:**

```ruby
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4]  (Buying on day 1 for $3 and selling on day 4 for $15 results in a profit of $12)
```
