import pandas as pd

df = pd.read_csv('join_metric_result.csv')
# Prepare the data for linear regression
X = df[['rows', 'columns']]  # Independent variables
y = df['cost']               # Dependent variable

# from sklearn.linear_model import LinearRegression

# # Create a linear regression model and fit it to the data
# model = LinearRegression()
# model.fit(X, y)

# # Get the model parameters
# beta_0 = model.intercept_  # Intercept
# beta_1, beta_2 = model.coef_  # Coefficients for rows and columns

# print(beta_0, beta_1, beta_2)



from sklearn.tree import DecisionTreeRegressor

# Create a decision tree regressor
decision_tree = DecisionTreeRegressor(random_state=0)

# Fit the decision tree model
decision_tree.fit(X, y)

# Predict using the decision tree model
y_decision_tree_pred = decision_tree.predict(X)
print(y_decision_tree_pred)