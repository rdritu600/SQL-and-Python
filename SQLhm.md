```python
import pandas as pd
import hvplot.pandas
from sqlalchemy import create_engine
```






<style>.bk-root, .bk-root .bk:before, .bk-root .bk:after {
  font-family: var(--jp-ui-font-size1);
  font-size: var(--jp-ui-font-size1);
  color: var(--jp-ui-font-color1);
}
</style>



```python
# Define the database URL
db_url = "postgresql://postgres:Rr%4019902800@localhost:5432/Credit_Card_Analysis"

# Create the engine object
engine = create_engine(db_url)
```


```python
query = "SELECT * FROM transaction"
```


```python
# Read the SQL query into a DataFrame
df = pd.read_sql(query, engine)
```


```python
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>id</th>
      <th>date</th>
      <th>amount</th>
      <th>card</th>
      <th>id_merchant</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>222</td>
      <td>2018-01-01 21:35:10</td>
      <td>6.22</td>
      <td>3561954487988605</td>
      <td>69</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2045</td>
      <td>2018-01-01 21:43:12</td>
      <td>3.83</td>
      <td>5135837688671496</td>
      <td>85</td>
    </tr>
    <tr>
      <th>2</th>
      <td>395</td>
      <td>2018-01-01 22:41:21</td>
      <td>9.61</td>
      <td>213193946980303</td>
      <td>82</td>
    </tr>
    <tr>
      <th>3</th>
      <td>3309</td>
      <td>2018-01-01 23:13:30</td>
      <td>19.03</td>
      <td>4263694062533017</td>
      <td>5</td>
    </tr>
    <tr>
      <th>4</th>
      <td>567</td>
      <td>2018-01-01 23:15:10</td>
      <td>2.95</td>
      <td>4498002758300</td>
      <td>64</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>3495</th>
      <td>1979</td>
      <td>2018-12-31 01:24:15</td>
      <td>4.84</td>
      <td>4723783028106084756</td>
      <td>106</td>
    </tr>
    <tr>
      <th>3496</th>
      <td>2342</td>
      <td>2018-12-31 03:33:28</td>
      <td>3.26</td>
      <td>4165305432349489280</td>
      <td>64</td>
    </tr>
    <tr>
      <th>3497</th>
      <td>948</td>
      <td>2018-12-31 05:53:58</td>
      <td>10.73</td>
      <td>5361779664174555</td>
      <td>19</td>
    </tr>
    <tr>
      <th>3498</th>
      <td>1168</td>
      <td>2018-12-31 08:22:17</td>
      <td>11.87</td>
      <td>4188164051171486</td>
      <td>54</td>
    </tr>
    <tr>
      <th>3499</th>
      <td>2476</td>
      <td>2018-12-31 09:50:25</td>
      <td>19.75</td>
      <td>4723783028106084756</td>
      <td>16</td>
    </tr>
  </tbody>
</table>
<p>3500 rows × 5 columns</p>
</div>




```python

```
