CREATE DATABASE information_project;
USE information_project;

--TABLE for storing user info
CREATE TABLE patient_info(
  pat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(55),
  email VARCHAR(60),
  password VARCHAR(254),
  age INT,
  gender VARCHAR(8),
  dob DATE, --make seperate sql file to update age based on DATEDIFF(exp1,exp2) using dob
  ailments VARCHAR(255),  --provide an update button to only update ailments
);

--TABLE for storing doctor_info
CREATE TABLE doctor_info(
  doc_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  fee INT,
  experience INT,
  speciality VARCHAR(50),
  location VARCHAR(50),
  address VARCHAR(254),
  timing VARCHAR(20),
  gender VARCHAR(7),
  email VARCHAR(50)
);

--TABLE for storing bookings
CREATE TABLE bookings(
  booking_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pat_id INT NOT NULL,
  booked_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(pat_id) REFERENCES patient_info(pat_id);
);

--Inserting doctors data
INSERT INTO doctor_info(
  name,
  fee,
  experience,
  speciality,
  location,
  address,
  timing,
  gender,
  email,
 )
VALUES
(
	'Hemant Kumar',
	200,
	4,
	'General Physician',
	'Delhi',
	'357,Street no.-8,Pratap Vihar,Ghaziabad',
	'10am-12pm',
	'Male',
	'hemantiitkcse@gmail.com'
),
(
	'Rajan Singh',
	900,
	11,
	'Dermatologist',
	'Delhi',
	'222-B,Hauz Khas,New Delhi',
	'12-2pm',
	'Male',
	'watashivahero@gmail.com'
),
(
	'Shailendra Raj',
	700,
	8,
	'Allergist',
	'Guwahati',
	'Street no-341, House no-22A, Azad Nagar,Guwahati',
	'4-6pm',
	'Male',
	'shailendras@gmail.com'
),
(
	'Niharika Sharma',
	400,
	6,
	'Gyancologist'
	'Lucknow',
	'Gali-313, Model Town,Lucknow',
	'9-11am',
	'Female',
	'niharika@gmail.com'
),
(
	'Shreya Hooda',
	900,
	9,
	'Cardiologist',
	'Kanpur',
	'House no-221 B,Gali no-14, Nankari,Kanpur',
	'7-9pm',
	'Female',
	'hooda_s@gmail.com'
),
(
	'Priya banarjee',
	400,
	5,
	'Audiologist',
	'Kolkata',
	'121, Gali no-1, AJC Bose road,Kolkata',
	'5-7pm',
	'Female',
	'pbanerjee@gmail.com'

),
(
	'Aarushi Saxena',
	800,
	8,
	'Dentist',
	'Mumbai',
	'Plot-31,First floor,Marin Drive,Mumbai',
	'4-7pm',
	'Female',
	'itsarushisaxena@gmail.com'
),
(
	'Sana Afreen ',
	NULL,
	NULL,
	'',
	'',
	'',
	'',
	'Female',
	''
),
(
	'Ramesh Taneja',
	900,
	13,
	'Homeopathic',
	'Goa',
	'XYZ block, near Calngute Beach,Goa',
	'2-5pm',
	'Male',
	'r_taneja@gmail.com'
),
(
	'Akhilesh Parmanu',
	1000,
	16,
	'Ayurvedic Expert',
	'Gujarat',
	'Street-113,Block-21,Second Floor,Gandhinagar,Gujarat',
	'3-7pm',
	'Male',
	'akparmanu@gmail.com'
);
--disease table
CREATE TABLE diseases(
  dis_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dis_name VARCHAR(55),
  links VARCHAR(255)
);
--symptoms table
CREATE TABLE symptoms(
  sym_id INT NOT NULL AUTO_INCREMENT,
  sym_desc VARCHAR(255)
);

--common table for symptoms and diseases
CREATE TABLE symptoms_diseases(
   sym_id INT NOT NULL AUTO_INCREMENT,
   dis_id INT NOT NULL AUTO_INCREMENT,
   FOREIGN KEY(sym_id) REFERENCES symptoms(sym_id),
   FOREIGN KEY(dis_id) REFERENCES diseases(dis_id),
   PRIMARY KEY(sym_id,dis_id)
);
--AML for Acute myleoid leukaemia
--CML for Chronic Myleoid Luekaemia
INSERT INTO symptoms(sym_desc) VALUES(
  'constipation' --Irritable bowel syndrome,Meningitis,Parkinson's disease,Cervical Cancer
),
(
  'nausea' --Kaposi's sarcoma, Kidney stones, Labyrinthitis,Uterus Cancer,Yellow fever,Cirrhosis
),
(
  'vomitting' --Kaposi's sarcoma, Liver cancer,malaria,Oesophageal cancer,stomach cancer
),
(
  'joint pain' --lupus,pneumonia,AIDS,AML,arthritis
),

(
  'swelling' --Kaposi's sarcoma
),
(
  'cough' --Lung cancer, Laryngitis,measeles,Chest infection,Common cold
),
(
  'body rash' --lyme disease
),

(
  'sore throat' --Laryngitis,AIDS
),

(
  'headaches' --Meningitis,Brain tumour
),

(
  'back pain' --Uterus Cancer,Yellow fever
),

(
  'pain in abdomen' --Hepatits B, Hepatitis C, Irritable bowel syndrome, Kaposi's sarcoma, Liver cancer,mumps,Tuberculosis,AAA
),
(
  'weakness' --Kidney Infection, Liver cancer, Lung cancer
),

(
  'shortness of breath' --Lung cancer,Mesothelioma,Oesophageal cancer,Tuberculosis,Ulcerative colitis,AML,Anaemia,Asthma,Bronchiectasis
),
(
  'memory loss' --Brain tumours
),

(
  'changes in vision' --Labyrinthitis
),

(
  'dizziness' --Labyrinthitis,Stroke,Dehydration
),

(
  'pale skin' --neuroblastoma
),

(
  'weight loss' --Liver cancer, Lung cancer,Meningitis,mouth cancer,Oesophageal cancer,stomach cancer,Type 1 Diabetes,Wilm's tumour,AML,Alzheimer's disease,Bladder Cancer,Cervical Cancer
),

(
  'depression' --bulimia
),

(
  'muscle pain' --malaria,pneumonia,Yellow fever,AIDS
),

(
  'bluish discolouration of fingers' --Asthma
),

(
  'dehydration' --Yellow fever
),
(
  'joint deformity' --bone cancer
),

(
  'limping' --Bone Cancer
),

(
  'chest tightness' --Lung cancer,Asthma,Chest Infection
),

(
  'chest pain' --Kaposi's sarcoma, Lung cancer,Mesothelioma,pneumonia,Bronchiectasis
),
(
  'frequent urination' --Kidney stones,Type 1 Diabetes
),
(
  'blood in urine' --Kidney Cancer, Kidney stones
),
(
  'pain or burning sensation during urination' --Kidney stones
),
(
  'weakened bone leading to fracture' --Bone Cancer
),
(
  'seizures' --Meningitis,Brain tumours,Dehydration
),
(
  'not passing urine for eight hours' --Dehydration
),
(
  'personality or memory change' --Dehydration
),
(
  'sleep problems' --Dehydration,Fibromyalgia
),
(
  'change in size of breast' --breast cancer
),
(
  'change in skin texture of breast' --breast cancer
),
(
  'coughing out blood' --Kaposi's sarcoma, Lung cancer,pneumonia,Bronchiectasis
),
(
  'thickening of skin under nails and toes'
),
(
  'slight fever and chills' --Kidney Infection, Laryngitis
),
(
  'infertility' --Ovarian cancer
),

(
  'vaginal bleeding after sex' --Cervical cancer
),
(
  'wheezing' --pneumonia,Asthma
),
(
  'rapid or irregular heartbeat' --Ulcerative colitis, Asthma,Chest Infection
),
(
  'clustered spots' --chickenpox
),
(
  'spots turning into blisters' --chickenpox
),
(
  'loss of appetite' --Cirrhosis,Hepatits B, Hepatitis C, Kidney Infection, Liver cancer, Lung cancer,measeles,Meningitis,mumps,Oesophageal cancer,stomach cancer,Diarrhoea 
),
(
  'frequent infections' --neuroblastoma,AIDS,Sickle cell disease,AML,CML
),
(
  'a feeling of bloating' --Irritable bowel syndrome, Lactose Intolerance,CML
),
(
  'swelling and discomfort in tummy' --Irritable bowel syndrome, Liver cancer, Liver cancer,Cirrhosis
),
(
  'night sweats' --Tuberculosis,Bone cancer,CML
),
(
  'loss of hair' --Anal cancer,Anaemia
),
(
  'tiny red lines above waist' --Cirrhosis
),
(
  'hoarse voice' --Laryngitis,Common cold
),
(
  'blocked or running nose' --common cold
),

(
  'dry mouth, lips and eyes' --dehydraion
),

(
  'continuous low mood or sadness' --depression
),
(
  'feeling hopeless and helpless' --depression
),
(
  'lack of energy or lack of interest in sex' --erectyle disfunction
),
(
  'difficulty in making decisions' --depression
),
(
  'stomach cramps' --Irritable bowel syndrome, Kaposi's sarcoma, Lactose Intolerance,Diarrhoea,Food Poisioning
),
(
  'flat back of the head' --Down's syndrome
),
(
  'eyes that slant upwards and outwards' --Down's syndrome
),
(
  'stiffness or twitching in parts of the body' --Fibromyalgia
),
(
  'inability to get and maintain an erection for satisfactory intercourse.' --erectyle disfunction
),
(
  'blurred vision' --eye cancer,Type 1 Diabetes
),
(
  "a dark patch in my eye that's getting bigger" --eye cancer

(
  'shadows, flashes of light, or wiggly lines in my vision' --eye cancer
),
(
  'painful periods or heavy periods' --Kidney stones,Uterus Cancer,Endometriosis
),
(
  'bleeding between periods' --Uterus Cancer,Endometriosis
),
(
  'pain during and after sex' --cervical cancer
),
(
  'extreme sensitivity' --migraine,Fibromyalgia
),
(
  'jaundice (yellowing of the skin and whites of the eyes)' --gallbladder cancer, Hepatits B, Liver cancer,pancreatic cancer,Cirrhosis
),
(
  'sudden, watery diarrhoea' --gastroenteritis,Meningitis 
),
(
  'heartburn' --GERD,stomach cancer
),
(
  'acid reflux' --GERD
),
(
  'red and swollen gums' --gum disease
),
(
  'bleeding gums after brushing or flossing your teeth' --gum disease
),
(
  'unpleasent taste in mouth' --gum disesase
),
(
  'a lump hanging down outside of the anus' --haemorrhoids
),
(
  'soreness and swelling around the anus' --haemorrhoids
),
(
  'mucus discharge after passing a stool'  --haemorrhoids,Anal cancer
),
(
  'a high temperature (fever)' --Hepatits B, Hepatitis C, Kidney Infection, Labyrinthitis,malaria,Meningitis,Mesothelioma,Ulcerative colitis,Wilm's tumour,Yellow fever,CML
),
(
  'dark urine' --Hepatits B
),
(
  'excessive sweating' --Hyperhidrosis,migraine,Parkinson's disease,AML
),
(
  'loose motion (diarrhea)' --Irritable bowel syndrome, Kaposi's sarcoma, Kidney Infection, Lactose Intolerance,malaria,Neuroendocrine tumours
  ),
(
  'flatulence' --Irritable bowel syndrome, Lactose Intolerance
),
(
  'a lump or swelling in the area of kidneys' --Kidney cancer
),
(
  'pain in lower back or groin on side of kidneys' --Kidney Infection, Kidney cancer, Kidney stones
),
(
  'ear pain' --Labyrinthitis
),
(
  'white fluid or pus leaked out from ears' --Labyrinthitis
),
(
  'stiffness in neck' --lyme disease
),
(
  'repeated skin infections' --lymphoedema
),
(
  'fluid leakage through skin' --lymphoedema
),
(
  'rash over cheeks and nose' --lupus
),
(
  'fatigue' --lupus,Sjogren's syndrome,Addison's disease
),
(
  'sweats' --Malaria
),
(
  'watery eyes' --measeles
),
(
  'intense headache on one side of the head.' --Migraine
),
(
  'increased sensitivity to light and sound' --Migraine
),
(
  'feeling off balance' --Stroke
),
(
  'drowsiness' --Meningitis
),
(
  'weakness at the shoulder' --motor neuron disease
),
(
  'weakened grip' -- motor neruron disease
),
(
  'Increasingly slurred speech' --motor neruron disease
),
(
  'difficulty in swallowing' --motor neruron disease,mumps,Stroke
),
(
  'excessive yawning' --motor neruron disease
),
(
  'red or white patches in the mouth or throat' --mouth cancer
),
(
  'persistent pain in the mouth' --mouth cancer
),
(
  'sudden attacks' --Meniere's disease
),
(
  'vertigo' --Meniere's disease
),
(
  'loss of hearing' --Meniere's disease
),
(
  'sense of pressure deep inside the ear' --Meniere's disease
),
(
  'nosebleeds' --nasal and sinus cancer
),
(
  'double vision' --Meniere's disease
),
(
  'lump in the neck' --neuroblastoma
),
(
  'low blood sugar' --Neuroendocrine tumours
),  
(
  'obsession' --Obsessive Compulsive disorder
),
(
  'anxiety' --Obsessive Compulsive disorder
),
(
  'loud snoring while sleeping' --Obstructive sleep apnoea
),
(
  'noisy and laboured breathing' -- Obstructive sleep apnoea
),
(
  'persistent indigestion' --Oesophageal cancer,stomach cancer
),
(
  'a grating or crackling sound in the joints' --Osteoarthritis
),
(
  'joints apperaing slightly larger' --Osteoarthritis
),
(
  'wrist or hip fractures' --osteoporosis
),
(
  'spinal fractures' --osteoporosis
),
(
  'increased abdominal size and persistent bloating' --ovarian cancer
),
(
  'persistent pelvic pain' --Ovarian cancer
),
(
  'pain in abdomen after lying down or after eating' --pancreatic cancer
),
(
  'blood clots' --pancreatic cancer
),
(
  'slowness of movement' --Parkinson's disease
),
(
  'to-and-fro movements of body parts' --Parkinson's disease
),
(
  'a sensation of a bulge in vagina' --pelvic organ prolapse
),
(
  'problems passing urine in females' --pelvic organ prolapse
),
(
  'feeling confused and disoriented' --pneumonia,Alzheimer's disease,Chest Infection
),
(
  'hallucinations' --Alzheimer's disease
),
(
  'needing to urinate more frequently, often during the night' --Prostate cancer
),
(
  'straining or taking a long time while urinating' --Prostate cancer
),
(
  'difficulty using fingers' --Raynaud's Phenomenon
),
(
  'a change in the colour of the iris' --Retinoblastoma
),
(
  'red or inflamed eye' --Retinoblastoma
),
(
  'an unusual white reflection in the pupil' --Retinoblastoma
),
(
  'tingling, burning, itching or throbbing' --Restless leg syndrome
),
(
  'a painful, cramping sensation in the legs' --Restless leg syndrome
),
(
  'rash containing tiny red spots' --Scabies
),
(
  'intense itching' --Scabies
),
(
  'visibly curved spine' --Scoliosis
),
(
  'one soldier is higher than other' --Scoliosis
),
(
  'a difference in leg lengths' --Scoliosis
),
(
  'Anaemia' --Sickle cell disease,stomach cancer
),
(
  'painful swelling of hands and feet'
),
(
  "mole that's changing color and shape" --skin cancer
),
(
  'growth of lump or discoloured patch' --skin cancer
),
(
  'firm pink lump having flat, scaly and crusted surface.' --skin cancer
),
(
  'dry mouth and eyes' -- Sjogren's syndrome
),
(
  'difficulty concentrating'--Sjogren's syndrome
),
(
  'frequent burping' --stomach cancer
),
(
  'not able to smile due to dropping of face on one side' --Stroke
),
(
  'not able to lift both the arms' --Stroke
),
(
  "lump or swelling at the front of the neck just below Adam's apple" --Thyroid cancer
),
(
  'pain in neck' --Thyroid Cancer
),
(
  'persistent cough for more than three weeks and phlegm with blood' --Tuberculosis
),
(
  'persistently swollen glands' --Tuberculosis,AIDS
),
(
  'feeling very thirsty' --Type 1 and Type 2 Diabetes
),
(
  'itchiness around the genital area' --Type 1 and Type 2 Diabetes
),
(
  'very high glucose levels' --Type 2 Diabetes
),
(
  'Bed-wetting in children' --Type 1 Diabetes
),
(
  'extreme hunger' --Type 1 diabetes
),
(
  'areas of darkened skin' --Type 2 Diabetes
),
(
  'pain or discomfort while peeing' --Urinary Tract Infection
),
(
  'cloudy,foul-smelling urine' --Urinary Tract Infection
),
(
  'restlessness' --Urinary Tract Infection
),
(
  'need to empty bowels frequently' --Addison's disease,Urinary Tract Infection
),
(
  'smelly or bloody vaginal discharge' --Vaginal cancer
),
(
  'itch or lump in vagina' -- Vaginal cancer
),
(
  'a persistent itch in vulva' --Vulval cancer
),
(
  'burning pain while passing urine' --Vulval Cancer,Bladder Cancer
),
(
  'Small,fleshy and grainy bumps' --Warts
),
(
  'itching or leisons in mouth or around genitals' --Warts
),
(
  'swollen abdomen but painless' --Wilm's tumour
),
(
  'raised blood pressure' --Wilm's tumour
),
(
  'bleeding from mouth' --Yellow fever
);

--INSERTING DISEASES INTO TABLE diseases

INSERT INTO diseases(dis_name) VALUES
(
  'Abdominal Aortic aneurysm'
),
(
  'Acne'
),
(
  'AIDS'
),
(
  'Acute myleoid leukaemia'
),
(
  "Alzheimer's disease"
),
(
  "Addison's disease"
),
(
  "Anal cancer"
),
(
  'Anaemia'
),
(
  "Anorexia nervosa"
),
(
  "Arthritis"
),
(
  "Asthama"
),
(
  "Bladder cancer"
),
(
  "Bone cancer"
),
(
  'Brain tumours'
),
(
  'Breast cancer'
),
(
  'Bronchiectasis'
),
(
  'Bronchitis'
),
(
  'Bulimia'
),
(
  'Cervical cancer'
),
(
  'Chest Infection'
),
(
  'Chickenpox'
),
(
  'Chronic myeloid leukaemia'
),
(
  'Chronic lymphocytic leukaemia'
),
(
  'Cirrhosis'
),
(
  'Common cold'
),
(
  'Dehydration'
),
(
  'Depression'
),
(
  'Diarrhoea'
),
(
  "Down's Syndrome"
),
(
  'Epilepsy'
),
(
  'Erectile Dysfunction'
),
(
  'Eye Cancer'
),
(
  'Endometriosis'
),
(
  'Food Poisoning'
),
(
  'Fibromyalgia'
),
(
  'Gallbladder Cancer'
),
(
  'Gastroenteritis'
),
(
  'Gastro-eosophageal reflux disease'
),
(
  'Gum disease'
),
(
  'Haemorrhoids(piles)'
),
(
  'Hepatits A'
),
(
  'Hepatits B'
),
(
  'Hepatitis C'
),
(
  "Huntington's Disease"
),
(
  'Hyperglycaemia(High blood sugar)'
),
(
  'Hyperhidrosis'
),
(
  'Hypoglycaemia'
),
(
  'Irritable bowel syndrome'
),
(
  'Impetigo'
),
(
  "Kaposi's sarcoma"
),
(
  'Kidney Cancer'
),
(
  'Kidney Infection'
),
(
  'Kidney stones'
),
(
  'Labyrinthitis'
),
(
  'Lactose Intolerance'
),
(
  'Liver cancer'
),
(
  'Lung cancer'
),
(
  'Laryngitis'
),
(
  'Lyme Disease'
),
(
  'Lymphoedema'
),
(
  'Lupus'
),
(
  'Malaria'
),
(
  'Measles'
),
(
  'Migraine'
),
(
  'Meningitis'
),
(
  'Mesothelioma'
),
(
  'Motor neuron disease'
),
(
  'Mouth cancer'
),
(
  'Mumps'
),
(
  "Meniere's Disease"
),
(
  'Nasal and sinus cancer'
),
(
  'Neuroblastoma'
),
(
  'Neuroendocrine tumours'
),
(
  'Obsessive Compulsive disorder'
),
(
  'Obstructive sleep apnoea'
),
(
  'Oesophageal cancer'
),
(
  'Osteoarthritis'
),
(
  'Osteoporosis'
),
( 
  'Ovarian cancer'
),
(
  'Pancreatic cancer'
),
(
  "Parkinson's Disease"
),
(
  'Pelvic organ prolapse'
),
(
  'Pneumonia'
),
(
  'Prostate cancer'
),
(
  "Raynaud's Phenomenon"
),
(
  'Retinoblastoma'
),
(
  'Restless legs syndrome'
),
(
  'Scabies'
),
(
  'Scoliosis'
),
(
  'Sickle cell disease'
),
(
  'Skin cancer'
),
(
  "Sjogren's syndrome"
),
(
  'Stomach cancer'
),
(
  'Stroke'
),
(
  'Thyroid cancer'
),
(
  'Tuberculosis'
),
(
  'Type 1 Diabetes'
),
(
  'Type 2 Diabetes'
),
(
  'Urinary Tract infection'
),
(
  'Ulcerative colitis'
),
(
  'Uterus Cancer'
),
(
  'Vaginal Cancer'
),
(
  'Vulval cancer'
), 
(
  'Warts'
),
(
  "Wilm's tumour"
),
(
  'Yellow fever'
);
--symptoms batayega to disease aur disease se remedy
-- A-14 , B-13, C-12, D-5, E-5, F-2, G-5, H-8, I-4, K-4, L-9, M-11, N-4, O-8, P-7, R-5,S-10, T-5, U-4, V-3, W-2, Y-1
-- A-Y 141
--index cols to retrieve data fast.
