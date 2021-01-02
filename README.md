# Asset Bubbles and Reinforcement Learning
Python implementation of "Monetary Policy and Asset Bubbles".

### Prerequisites
- R package for [psymonitor](https://cran.r-project.org/web/packages/psymonitor/psymonitor.pdf). This is the R package from [""Testing for Multiple Bubbles: Historical Episodes of Exuberance and Collapse in the S&P 500""](https://onlinelibrary.wiley.com/doi/abs/10.1111/iere.12132).

### Algorithm Implementation

- `dl_bubbledetection.ipynb`: Implements LSTM networks to study asset bubbles. First, simulates data to generate bubbles. Second, trains networks on the simulated data. Validates it following the 80-20 rule. Additionally can test for bubbles in S&P 500 component data.
- `bubble_psymonitor.R`: Provides the code to run psymonitor on S&P 500 component stocks.
