from swiplserver import PrologMQI, PrologThread
import os
def Main_Menu():
    os.system('cls')
    print("Welcome to the main menu")
    print("[1] Check Symptoms")
    print("[2] Available Diseases")
    print("[3] Exit")
    user_i = int(input("What do you want to do: "))
    return user_i        

def show_diagnosis(disease):
    disease_info = prolog_thread.query("disease_info({}, Info)".format(disease))[0]['Info']
    treatment = prolog_thread.query("treatment({}, Treatment)".format(disease))[0]['Treatment']
    print("****************************")
    print("You have been diagnosed with {}.".format(disease))
    print("\nHere is some information about {}:".format(disease))
    print(disease_info)
    print("\nHere is the recommended treatment for {}:".format(disease))
    print(treatment)

def Main_program():
    symptom = "fever"
    symptom_done = set()
    poss_disease = prolog_thread.query("disease(X)")
    poss_disease_set = set()
    for i in range(len(poss_disease)):
        poss_disease_set.add(poss_disease[i]['X'])
    print("\nPlease answer yes or no to the questions given")


    while(True):

        next_poss_symptoms_set = set()

        print("Does patient have {}".format(symptom))
        answer = input()

        disease_from_symptom_set = set()


        if answer == 'yes':
            #get the disease from symptoms
            disease_from_symptom = prolog_thread.query("get_Disease_from(X,{})".format(symptom))
            #get disease from symptoms
            for i in range(len(disease_from_symptom)):
                disease_from_symptom_set.add(disease_from_symptom[i]['X'])
            #add the symptom to the done list

            #intersect with whole disease set and the disease from symptom
            poss_disease_set = poss_disease_set.intersection(disease_from_symptom_set)
            #convert the set to list
            poss_disease_list = list(poss_disease_set)

            #get all of the next possible symptoms
            for i in range(len(poss_disease_list)):
                next_poss_symptoms_list = prolog_thread.query("get_Disease_from({},Y)".format(poss_disease_list[i]))
                for j in range(len(next_poss_symptoms_list)):
                    next_poss_symptoms_set.add(next_poss_symptoms_list[j]['Y'])
        else:
            poss_disease_list = list(poss_disease_set)
            for i in range(len(poss_disease_list)):
                next_poss_symptoms_list = prolog_thread.query("get_Disease_from({},Y)".format(poss_disease_list[i]))
                for j in range(len(next_poss_symptoms_list)):
                    next_poss_symptoms_set.add(next_poss_symptoms_list[j]['Y'])
                    
        symptom_done.add(symptom)
        blank = input("Enter anything to continue \n")



        #get intersection between symptom and the symptom_done
        next_poss_symptoms_set = next_poss_symptoms_set.difference(symptom_done)
        next_poss_symptoms_list = list(next_poss_symptoms_set)

        
        #if there is 1 disease in the set
        
        # if len(poss_disease_list) == 1:
        #     print("You have {}".format(poss_disease_list[0]))
        #     blank = input("Enter anything to continue \n")
        #     break
        if len(poss_disease_list) == 1:
            show_diagnosis(poss_disease_list[0])
            blank = input("Enter anything to continue \n")
            break
        elif len(next_poss_symptoms_list) == 0:
            print("We aren't able to give you a diagnosis.")
            print("This is either due to lack of discerning symptoms or the symptoms provided can be attributed to multiple diseases")
            print("It is recommended to go to a hospital for further diagnosis")
            blank = input("Enter anything to continue \n")
            break
        else:
            symptom = next_poss_symptoms_list[0]

with PrologMQI() as mqi:
    with mqi.create_thread() as prolog_thread:
        prolog_thread.query("consult('Prolog_final.pl').")
        list_disease = prolog_thread.query("disease(X)")

        open = True 
        while (open):
            menu_input = Main_Menu()
            if menu_input == 1:
                Main_program()
            elif menu_input == 2:
                for i in range(10):
                    print(list_disease[i]['X'])
                blank = input("Enter anything to continue ")
            elif menu_input == 3:
                print("Closing the program...")
                open = False




