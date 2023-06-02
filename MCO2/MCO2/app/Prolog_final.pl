disease(dengue).
disease(covid19).
disease(aids).
disease(hand_foot_mouth_disease).
disease(influenza).
disease(diphtheria).
disease(tuberculosis).
disease(cholera).
disease(chicken_pox).
disease(malaria).

symptom(cough).
symptom(phelgm).
symptom(fever).
symptom(fatigue).
symptom(vomiting).
symptom(difficulty_breathing).
symptom(muscle_ache).
symptom(sore_throat).
symptom(nausea).
symptom(rashes).
symptom(postive_torniquet_test).
symptom(abdominial_pain).
symptom(hermorrhage).
symptom(organ_dysfunction).
symptom(impaired_consiousness).
symptom(blood_clot).
symptom(headache).
symptom(diarrhea).
symptom(weight_loss).
symptom(sweats).
symptom(chills).
symptom(swollen_lymph_noes).
symptom(eye_pain).
symptom(runny_nose).
symptom(gray_membrane_in_throat).
symptom(nasal_discharge).
symptom(loss_of_appetite).
symptom(dehydration).
symptom(blisters).
symptom(scabs).
symptom(cough_blood).
symptom(back_pain).
symptom(spinal_pain).
symptom(joint_pain).
symptom(limpness).
symptom(heartburn).

disease_symptoms(covid19,cough).
disease_symptoms(covid19,phelgm).
disease_symptoms(covid19,fever).
disease_symptoms(covid19,fatigue).
disease_symptoms(covid19,difficulty_breathing).
disease_symptoms(covid19,muscle_ache).
disease_symptoms(covid19,sore_throat).

disease_symptoms(dengue,nausea).
disease_symptoms(dengue,vomiting).
disease_symptoms(dengue,rashes).
disease_symptoms(dengue,postive_torniquet_test).
disease_symptoms(dengue,abdominial_pain).
disease_symptoms(dengue,fever).
disease_symptoms(dengue,hermorrhage).
disease_symptoms(dengue,organ_dysfunction).
disease_symptoms(dengue,impaired_consiousness).
disease_symptoms(dengue,blood_clot).

disease_symptoms(aids,fever).
disease_symptoms(aids,headache).
disease_symptoms(aids,fatigue).
disease_symptoms(aids,diarrhea).
disease_symptoms(aids,weight_loss).
disease_symptoms(aids,sweats).
disease_symptoms(aids,chills).
disease_symptoms(aids,swollen_lymph_noes).

disease_symptoms(hand_foot_mouth_disease,fever).
disease_symptoms(hand_foot_mouth_disease,sore_throat).
disease_symptoms(hand_foot_mouth_disease,loss_of_appetite).
disease_symptoms(hand_foot_mouth_disease,rashes).

disease_symptoms(influenza,fever).
disease_symptoms(influenza,muscle_ache).
disease_symptoms(influenza,chills).
disease_symptoms(influenza,sweats).
disease_symptoms(influenza,headache).
disease_symptoms(influenza,cough).
disease_symptoms(influenza,difficulty_breathing).
disease_symptoms(influenza,fatigue).
disease_symptoms(influenza,sore_throat).
disease_symptoms(influenza,eye_pain).
disease_symptoms(influenza,runny_nose).

disease_symptoms(diphtheria,gray_membrane_in_throat).
disease_symptoms(diphtheria,sore_throat).
disease_symptoms(diphtheria,swollen_lymph_noes).
disease_symptoms(diphtheria,nasal_discharge).
disease_symptoms(diphtheria,difficulty_breathing).
disease_symptoms(diphtheria,fever).
disease_symptoms(diphtheria,chills).
disease_symptoms(diphtheria,fatigue).

disease_symptoms(tuberculosis,cough).
disease_symptoms(tuberculosis,cough_blood).
disease_symptoms(tuberculosis,fever).
disease_symptoms(tuberculosis,chills).
disease_symptoms(tuberculosis,sweats).
disease_symptoms(tuberculosis,fatigue).
disease_symptoms(tuberculosis,weight_loss).
disease_symptoms(tuberculosis,loss_of_appetite).

disease_symptoms(cholera,nausea).
disease_symptoms(cholera,vomiting).
disease_symptoms(cholera,dehydration).
disease_symptoms(cholera,diarrhea).
disease_symptoms(cholera,muscle_ache).

disease_symptoms(chicken_pox,fever).
disease_symptoms(chicken_pox,loss_of_appetite).
disease_symptoms(chicken_pox,headache).
disease_symptoms(chicken_pox,fatigue).
disease_symptoms(chicken_pox,rashes).
disease_symptoms(chicken_pox,blisters).
disease_symptoms(chicken_pox,scabs).

disease_symptoms(malaria,fever).
disease_symptoms(malaria,chills).
disease_symptoms(malaria,sweats).
disease_symptoms(malaria,nausea).
disease_symptoms(malaria,vomiting).
disease_symptoms(malaria,headache).
disease_symptoms(malaria,diarrhea).
disease_symptoms(malaria,back_pain).
disease_symptoms(malaria,abdominial_pain).
disease_symptoms(malaria,spinal_pain).
disease_symptoms(malaria,joint_pain).
disease_symptoms(malaria,limpness).
disease_symptoms(malaria,heartburn).
disease_symptoms(malaria,loss_of_appetite).

disease_info(covid19, "Covid19 Also known as coronavirus. It is a life-threatening respiratory illness and is infectious.
Symptoms show within 1 to 2 weeks of getting SARS
Possible methods of infection include direct contact with SARS-infected individuals, or infectious material/physical contact from SARS-infected individuals.
Transmits via person-to-person contact (i.e. coughs/sneezes and subsequent inhalation of the droplets.)
Symptoms include: Fever, Cough, Fatigue, Dyspnea (Shortness of breath), Phlegm, Muscle Ache, and Sore Throat.
").
disease_info(dengue, "Dengue Also known as the following: breakbone fever; dandy fever; and seven-day fever. It is a fever.
Caused by Aedes mosquitoes; both disease and mosquito are common in tropical and subtropical parts of the world.
Usually asymptomatic; severe illness and death may occur
Symptoms incubate for 4 to 7 days before showing; may take 3 to 10 days.
Disease itself lasts for 2 to 7 days.
Symptoms include: Nausea, Vomiting, Rashes, Abdominal Pain, Fever, Hemorrhage, Organ Dysfunction, and Impaired Consciousness.
").
disease_info(aids, "Aids AIDS: also known as Acquired Immunodeficiency Syndrome
HIV: also known as Human Immunodeficiency Virus
HIV causes AIDS; AIDS has the potential to be life-threatening, damaging one’s immune system.
HIV is a sexually transmitted disease (STI), and as the name implies, is caused by sexual contact with an ill person. Can also be caused from contact with infected blood, usage of drugs, or being treated to an unclean/shared needle.
		HIV weakens the immune system gradually before a patient is at risk of AIDS.
Symptoms include: Fever, Headache, Fatigue, Diarrhea, Weight Loss, Sweats, Chills, and Swollen Lymph Nodes.
").
disease_info(hand_foot_mouth_disease, "Hand-foot-and-mouth disease  A contagious viral infection, common in young children. It is usually a minor illness.
Caused by coxsackievirus 16, a virus. Commonly received through the patient’s mouth.
May be transmitted from person-to-person when a person comes into contact with an infected individual’s excretions from sneezes or coughs, saliva, fluid from blisters, stool, or any other nose secretion or throat discharge.
Symptom incubation takes 3 to 6 days. 
Generally speaking, it only causes fever and mild symptoms over the next few days.
Symptoms include: Fever, Sore throat, Loss of Appetite, Rashes, Fussiness with infants or toddlers.
").
disease_info(influenza, "Influenza Also known as the flu. It is an infection of the respiratory system (i.e., nose, throat, lungs, etc.) Generally a minor illness, but can be terminal.
Caused by inhalation of the virus’ droplets in the air, and contact from the germs of an object, and said germs come into contact with one’s eyes, nose, or mouth. Infected people are contagious, especially those with weakened immune systems.
Lasts for approximately under 14 days if patient is treated well.
Symptoms include: Fever, Aching Muscles, Chills and Sweats, Headache, a persistent dry Cough, Shortness of Breath, Tiredness and Weakness, Runny or Stuffy Nose, Sore Throat, and Eye Pain.
").
disease_info(diphtheria, "Diphtheria Pronounced dif-THEER-e-uh.
A serious bacterial infection that generally affects the nose and throat’s mucous membranes. Extraordinarily scarce in the United States and other similarly developed countries due to the vaccination.
Cause by the bacterium Corynebacterium diphtheriae; patients come into contact with it through:
		Airborne droplets - an infected individual’s sneezes or coughs. Inhaling the subsequent droplets causes Diptheria.
		Contaminated items - an infected person’s belongings may be contaminated with the bacteria.
Symptoms incubate for 2 to 5 days, potentially longer.
Disease itself lasts for 2 to 3 weeks.
Symptoms include: a Thick, Gray Membrane covering the throats and tonsils; Sore Throat and Hoarseness; Swollen Glands (enlarged lymph nodes) in the Neck; Difficulty Breathing or Rapid Breathing; Nasal Discharge; Fever and Chills; and Tiredness.
").
disease_info(tuberculosis, "Tubercolosis A serious illness that primarily affects the lungs.
Caused by a bacterium called Mycobacterium tuberculosis.
May be transmitted from inhaling tiny droplets that come out of an infected person and are carried through the air. These droplets are released when a person speaks, sings, laughs, coughs, sneezes, etc. 
		A person with latent tuberculosis infection cannot pass the disease - no symptoms are present at this stage. Only applicable to those under 5 years old.
		A person taking active tuberculosis treatment usually can’t pass the disease after 2 to 3 weeks of treatment.
Easily spreads in crowded conditions.
Symptoms include: Fever, Chills, Sweats, Coughs, Tiredness, Weight Loss, Loss of Appetite, and Coughing Blood or Mucus.
").
disease_info(cholera, "Cholera A bacterial disease. Can be fatal.
Caused and spread through contaminated water. Risk of getting Cholera greatly increases in crowded places without proper sanitation, or in less industrialized countries.
Symptoms incubate for less than 1 to 5 days.
May prove fatal to individuals 2 to 3 hours after being infected; even those with healthy bodies prior to cholera are at great risk of dying quickly.
Symptoms include: Nausea, Vomiting, Dehydration, Diarrhea, and Muscle Cramps.
").
disease_info(chicken_pox, "Chicken Pox An infection. Highly contagious to those that have not taken its vaccine.
Caused by the varicella-zoster virus. Spreads quickly via airborne droplets, specifically through the infected individual’s coughs or sneezes. 
An infected individual is contagious 5 days before the appearance of blisters, and contagious 5 days after the appearance of rashes or blisters.
Fades away within 1 to 2 weeks, even without treatment.
Symptoms include: Fever, Loss of Appetite, Headache, Tiredness, Rashes, Blisters, and Crusts and Scabs.
").
disease_info(malaria, "Malaria The disease spreads via a parasite. The disease is common in tropical and subtropical countries, and can prove to be fatal.
Caused by a single-celled parasite that is a genus plasmodium. The most common method of transmission is through mosquito bites.
Individuals may also be infected through exposure to infected blood.
Symptoms include: Fever, Shivering, Sweating, Nausea, Vomiting, Headaches, Dizziness, Diarrhea, Back Pain, Abdominal Pain, Spinal Pain, Join Pain, Limpness, Heartburn, Loss of Appetite.
").

treatment(covid19, "Request for treatment from  healthcare provider as soon as discovered; treatment must start within days of first developing symptoms.
Take the antiviral medications from the patient's healthcare provider.
Take the drugs Paxlovid (that includes nirmatrelvir) and an antiviral drug called ritonavir if the patient is at least 12 years old. Barticitinib and Molnupiravir are more drugs suggested to help treat the disease, moreso in adults and hospitalized patients.
		Convalescent Plasma suggested for the immunocompromised or receiving immunosuppressive treatment; contact the patient's healthcare provider to know their eligibility.
").
treatment(dengue, "No specific treatment for the disease. 
Do not take aspirin, other nonsteroidal anti-inflammatory drugs, and other anticoagulants (Advil, Motrin IB, etc.). May increase risk of dengue fever bleeding complications.
Over-the-counter drug acetaminophen (Tylenol, etc.) is recommended to help alleviate muscle pain and fever, however.
Properly hydrate the patient and let them drink enough water. With proper care, it should fade within 2 to 7 days.
If the fever persists after 2 days and rashes appear, head to the nearest hospital.
		Subsequent treatments vary but include: initiation on IV crystalloids; colloids; blood transfusion; platelet transfusion; and more.
").
treatment(aids, "No cure currently exists for HIV/AIDS, the infection is permanent on a patient’s body. 
There are medications to help manage HIV and prevent complications, which are called Antiretroviral Therapy (ART). ART is a combination of multiple medications of different drug categories, each with a specific purpose. This treatment is the best chance of reducing the HIV in an infected individuals blood.
Typically speaking, two drugs from one class are used alongside a third drug from a different class. Generally, these drugs all have the same goal of preventing HIV from making copies of itself. These drugs classes (and examples) include:
		NNRTIs: 	
			Sustiva, Edurant, Pifeltro	
		NRTIs: 		
			Ziagen, Viread, Emtriva, Epivir, Retrovir
		PIs:		
			Reyataz, Prezista, Kaletra
		Integrase Inhibitors: 
			Biktarvy, Isentress, Tivicay, Vocabria
		Entry or fusion inhibitors:
			Fuzeon, Selzentry

For further details on the aboove, please contact the patient's healthcare provider.
Take antiviral medication, and take all prescribed medications to mitigate the effects of HIV.
Contact the patient's healthcare for further details regarding HIV therapy to take note of potential treatment side effects (e.g. nausea, heart disease, weakened bones.)
").
treatment(hand_foot_mouth_disease, "No specific treatment exists. Will generally clear in 7 to 10 days.
Prevention strategies include frequent hand-washing and avoiding contact with those already infected.
Over-the-counter pain medications (e.g. Acetaminophen - Tylenol and Ibuprofen - Advil, Motrin IB, etc.) will help relieve discomfort.
Certain foods and drinks may irritate the tongue, throat, or mouth. In such scenario, the following are recommended to help the irritation:
		Suck on ice pops, eat ice cream, drink cold water
		Drink warm drinks (e.g. tea)
		Avoid acidic food and drinks (e.g. citrus fruits, fruit drinks, soda)
		Try to eat soft food that do not require much chewing.
Immediately contact the patient's healthcare provider if the patient:
		is younger than 6 months;
		has a weakened immune system; 
		has complications that make drinking liquids painful; or
		has yet to improve in 10 days.
").
treatment(influenza, "Generally speaking, most with the flu heal on their own. Allow the patient to get plenty of rest and drink enough water.
Influenza vaccine greatly reduces the chance of getting it.
Take antiviral medication: Tamiflu, Relenza, Rapivab, or the recommendation of the patient's healthcare provider. This may cause side effects of nausea and vommiting, which can be mitigated if the antiviral medicine are taken with food.
Those with the flu should avoid crowded places and generally minimize contact with others. Take care of one’s self through hand washing with soap and resting plenty.
Consider talking to the patient's healthcare provider about a flue if the patient:
		is younger than 2 years;
		is older than 65;
		a resident of a nursing home/a long-term care facility;
		is pregnant or plan to be during flu season;
		has a weakened immune system;
		are American Indians or Alaska Natives;
		has a chronic illness (e.g. asthma, heart disease, etc.); or
		has a body mass index (BMI) of 40 or higher.
").
treatment(diphtheria, "Immediately head to the hospital. Treatment begins as soon as possible.
Take antibiotics (e.g. penicillin or erythromycin) and an antitoxin from the patient's healthcare provider - ensure the patient is not allergic to it.
Give the patient extensive rest and let them avoid physical exertio. Provide them with liquids and soft, mushy consumables due to the likely pain of swallowing. Isolation reduces potential spread of the infection.
Follow further instructions given by the patient's healthcare provider.
Those that are not infected, take the vaccination as soon as possible.
").
treatment(tuberculosis, "Multiple tests exist to determine if a patient is suspected of Tuberculosis - X-Rays, Blood tests, Sputum tests, etc.
Follow the treatments given by the patient's healthcare provider. Regular appointments and consistent drug taking is required for treatment. Take every dose to minimize the chance of the disease getting worse. 
Common drug recomendations include: Isoniazid, Rimactane, Mycobutin, Priftin, Pyrazinamide, Myambutol. 
Patients with latent tuberculosis infections are treated for 3 to 4 months; patients with active tuberculosis infections may be treated for 4, 6, or 9 months.
Follow further instructions from the patient's healthcare provider.
").
treatment(cholera, "Requires immediate treatment. Seek a medical professional immediately.
Rehydrate and take other fluids and antibiotics to help rehydrate and reduce diarrhea. Zinc supplements decrease diahhrea.
Follow further instructions from the patient's healthcare provider.
").
treatment(chicken_pox, "Generally speaking, no treatment is required. 
Sponge baths and continuous cold compresses on one’s forehead helps to alleviate the fever. Tylenol helps for mild fevers; do NOT give the infected persoono aspirin; it may lead to Reyes syndrome.
Warm showers or warm sponge baths are highly recommended; avoid rubbing at the lesions. Calamine lotion can help alleviate the irritation.
Consume plenty of fruit juice and water. 
The patient's healthcare provider may prescribe antihistamine to relieve itching. They may also suggest antiviral drugs (e.g. Zovirza, Sitavig) to reduce the severity. Other antiviral drugs may also help, but may not be appropriate for the individual; contact the patient's doctor to know their eligibility.
If four days past and the patient has a temperature higher than 102, seek the patient's healthcare provider.
").
treatment(malaria, "Seek medical attention immediately.
Depending on the type of malaria parasite and certain aspects of the patient (age, symptom severity, state of pregnancy or otherwise), medical professionals will provide different types of treatment.
Artemisinin-based combination Therapies (ACTs) is the preferred treatment, being a combination of 2 or more drugs to work against the malaria parasite.
		Common recommended medications for malaria include: Malarone, Chloroquine, Doxycyline, Mefloquine, Primaquine, Tafenoquine.
Ask the patient's healthcare provider to see if ACTs is applicable for the ill person.

").

get_Disease_from(Disease, Symptom):-
     symptom(Symptom),
     disease(Disease),
     disease_symptoms(Disease, Symptom).
