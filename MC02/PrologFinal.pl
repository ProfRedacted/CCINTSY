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

get_Disease_from(Disease, Symptom):-
     symptom(Symptom),
     disease(Disease),
     disease_symptoms(Disease, Symptom).
