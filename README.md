## Statistical Analysis of Heart Attack Vulnerability

Accurately predict whether a patient is more or less prone to a heart attack based on various predictors using statistical learning models like SVM and KNN.

- Rahman, Rashik. (2021). Heart Attack Analysis & Prediction Dataset (Version 2) [Data set].
      https://www.kaggle.com/rashikrahmanpritom/heart-attack-analysis-prediction-dataset 

Refer to ``Final_Report.pdf`` for findings.

>The dataset, composed of both categorical and numerical data, provides a comprehensive snapshot of factors potentially contributing to heart diseases, including demographic details like ``age`` and ``sex``, ``clinical parameters like chest pain type (cp)``, ``resting blood pressure (trtbps)``, ``serum cholesterol (chol)``, ``fasting blood sugar (fbs)``, and ``resting electrocardiographic results (restecg)``, among others. Each feature encapsulates a different aspect of an individual's health profile, potentially playing a role in heart disease development. Moreover, the inclusion of the output variable indicating the diagnosis of heart disease presents an opportunity to develop predictive models that could help in early detection and prevention of this deadly disease.

### About this dataset

1. ``Age`` : This is a key risk factor for heart disease. As age increases, the risk of damaged and narrowed arteries, weakened or thickened heart muscle, and other heart disease risk factors also increases.

2. ``Sex`` : Men are generally at higher risk of heart disease than women. However, after menopause, a woman's risk increases to almost match that of a man's.

3. ``Chest Pain Type (cp)`` : Chest pain is a key symptom of heart disease. It may manifest in different forms: typical angina, atypical angina, non-anginal pain, or may even be asymptomatic. Chest pain associated with heart disease is usually described as a discomfort, heaviness, pressure, aching, burning, fullness, squeezing, or painful feeling.

4. ``Resting Blood Pressure (trtbps)`` : High blood pressure (hypertension) can harden and thicken arteries, leading to a buildup of plaque (atherosclerosis) that can cause coronary artery disease. The pressure is measured in millimeters of mercury (mm Hg) and is usually recorded as two figures. Normal resting blood pressure in an adult is approximately 120/80 mm Hg.

5. ``Serum Cholesterol (chol)`` : Cholesterol is a type of lipid molecule. High levels of low-density lipoprotein (LDL) or 'bad cholesterol' can increase the risk of heart disease by forming plaques and narrowing arteries.

6. ``Fasting Blood Sugar (fbs)`` : High fasting blood sugar levels (prediabetes or diabetes) can contribute to narrowing of the arteries and increase the risk of heart disease. A fasting blood sugar level less than 100 mg/dL is considered normal. 100-125 mg/dL is considered prediabetes, and 126 mg/dL or higher on two separate tests means you have diabetes.

7. ``Resting Electrocardiographic Results (restecg)`` : ECG records the electrical activity of the heart and can show previous heart attacks or problems with the heart rhythm. Abnormal results can indicate heart conditions such as left ventricular hypertrophy or heart arrhythmias.

8. ``Maximum Heart Rate Achieved (thalachh)`` : During exercise or stress testing, the maximum heart rate can indicate cardiovascular fitness and the heart's ability to handle exertion.

9. ``Exercise Induced Angina (exang)`` : This happens when the heart muscle doesn't get as much blood (and thus oxygen) as it needs for the level of physical activity, causing chest pain or discomfort.

10. ``ST Depression Induced by Exercise Relative to Rest (oldpeak)`` : Changes in the ST segment on an ECG can indicate heart disease. ST depression can indicate ischemia, or lack of sufficient blood flow to the heart muscle.

11. ``The Slope of The Peak Exercise ST Segment (slp)`` : The ST segment/heart rate slope (ST/HR slope), has been introduced as an index of relative myocardial oxygen demand during exercise. The shape of the ST segment can reveal a lot about the heart's condition.

12. ``Number of Major Vessels Colored by Flourosopy (caa)`` : This measures the presence of disease in the major blood vessels to the heart. A higher number usually indicates more severe disease.

13. ``Thallium Stress Test (thall)`` : This is a nuclear imaging method that shows how well blood flows into the heart muscle, both at rest and during activity. It can reveal areas of the heart muscle that aren't receiving enough blood, indicating coronary artery disease.

14. ``Output (Diagnosis of Heart Disease)`` : This is the target variable. A value of 0 indicates less than 50% diameter narrowing - not a significant heart disease, while a value of 1 indicates more than 50% diameter narrowing - a significant heart disease.
