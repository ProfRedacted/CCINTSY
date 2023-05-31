import pandas  as pd
import matplotlib.pyplot as plt
from imblearn.under_sampling import RandomUnderSampler

from sklearn import linear_model, tree
from sklearn.metrics import classification_report, confusion_matrix, ConfusionMatrixDisplay
from sklearn.model_selection import train_test_split

# Load the Covid dataset
data = pd.read_csv("Covid Data.csv")

# Prepare the data
data.loc[data['CLASIFFICATION_FINAL'] <= 3, 'CLASIFFICATION_FINAL'] = 1
data.loc[data['CLASIFFICATION_FINAL'] >= 4, 'CLASIFFICATION_FINAL'] = 0

data['SEX'].replace(2.0, 1, inplace=True)
data['USMER'].replace(2.0, 0, inplace=True)
data['DIABETES'].replace(2.0, 0, inplace=True)
data['PNEUMONIA'].replace(2.0, 0, inplace=True)
data['DIABETES'].replace(2.0, 0, inplace=True)
data['COPD'].replace(2.0, 0 , inplace=True)
data['ASTHMA'].replace(2.0, 0, inplace=True)
data['INMSUPR'].replace(2.0, 0, inplace=True)
data['HIPERTENSION'].replace(2.0, 0, inplace=True)
data['OTHER_DISEASE'].replace(2.0, 0, inplace=True)
data['OBESITY'].replace(2.0, 0, inplace=True)
data['RENAL_CHRONIC'].replace(2.0, 0, inplace=True)
data['TOBACCO'].replace(2.0, 0, inplace=True)
data['CARDIOVASCULAR'].replace(2.0, 0, inplace=True)
data['PATIENT_TYPE'].replace(2.0, 0, inplace=True)
data.DATE_DIED[data['DATE_DIED'] != '9999-99-99'] = 1
data.DATE_DIED[data['DATE_DIED'] == '9999-99-99'] = 0


# CREATE A NEW DATA
data['DEAD'] = data.DATE_DIED
data = data.drop(labels=['DATE_DIED'], axis=1)

# DON'T INCLUDE ICU, INTUBE, PREGNANT, MEDICAL UNIT TOO MUCH MISSING DATA
all_X = data.loc[:,['USMER','SEX','AGE', 'PNEUMONIA', 'DIABETES', 'COPD', 'ASTHMA', 'INMSUPR', 'HIPERTENSION', 'OTHER_DISEASE', 'CARDIOVASCULAR', 'OBESITY', 'RENAL_CHRONIC', 'TOBACCO','CLASIFFICATION_FINAL']].values
all_Y = data.loc[:,['DEAD']].values.ravel()
all_Y = all_Y.astype('int')

# Under sample the data to prevent majority skewing
X_undertrain, Y_undertrain =  RandomUnderSampler(replacement=True).fit_resample(all_X,all_Y)
# Split the data
X_train, X_test, Y_train, Y_test = train_test_split(X_undertrain, Y_undertrain, test_size=0.8)
# Uses logistic regression
log = linear_model.LogisticRegression(dual=False, multi_class='auto', max_iter=10000)
# Uses Stochastic Gradient Descent
tree_mod = tree.DecisionTreeClassifier()

# fit the data and show the score
log.fit(X_train,Y_train)
tree_mod.fit(X_train,Y_train)
print("\n \nLog Regression Fit Score:", log.score(X_train, Y_train))
print("Decision Tree Fit Score:", tree_mod.score(X_train,Y_train))



#predict the test and show report
Y_pred_log = log.predict(X_test)
Y_pred_tree = tree_mod.predict(X_test)
print("\n Logistic Regresion Classification Report\n",classification_report(Y_test, Y_pred_log))
print("\n Decision Tree Report\n", classification_report(Y_test, Y_pred_tree))
cm_log = confusion_matrix(Y_test, Y_pred_log, labels=log.classes_)
cm_tree = confusion_matrix(Y_test, Y_pred_tree, labels=tree_mod.classes_)

display_log = ConfusionMatrixDisplay(confusion_matrix=cm_log, display_labels=log.classes_)
display_log.plot()
plt.title("Log Regression")

display_tree = ConfusionMatrixDisplay(confusion_matrix=cm_tree, display_labels=tree_mod.classes_)
display_tree.plot()
plt.title("Decision Tree")

plt.show()