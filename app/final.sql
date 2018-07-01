DROP DATABASE information_project;  -- this is optional depending on the existence of the database information_project.
CREATE DATABASE information_project;
USE information_project;

CREATE TABLE pending(
 id INT,
 name VARCHAR(50),
 password VARCHAR(254),
 email VARCHAR(50),
 dob DATE,
 gender VARCHAR(7),
 mobile VARCHAR(12)	
);
/*TABLE for storing user info*/
CREATE TABLE users(
  userid INT  AUTO_INCREMENT PRIMARY KEY,
  uname VARCHAR(55),
  uemail VARCHAR(60),
  upassword VARCHAR(254),
  uphone VARCHAR(11),
  uage INT,
  ugender VARCHAR(8),
  udob DATE, /*make seperate sql file to update age based on DATEDIFF(exp1,exp2) using dob*/
  isloggedin VARCHAR(6)
);
/* TABLE for storing forgot password entries */
CREATE TABLE forgotpassword(
  userid INT,
  uemail VARCHAR(60),
  randomstring VARCHAR(200)	
);
/*TABLE for storing pending bookings*/
CREATE TABLE pendingbookingsofdoctors(
  uid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  uname VARCHAR(60),
  uemail VARCHAR(60),
  uphone VARCHAR(11),
  uaddress VARCHAR(254),
  ugender VARCHAR(7),
  doctornumber INT,
  hash VARCHAR(254),
  doctoremail VARCHAR(60)
);
CREATE TABLE location(
  city VARCHAR(20)	
);
CREATE TABLE feerange(
  fee VARCHAR(5)
);
CREATE TABLE speciality(
  speciality VARCHAR(50)
);
/*TABLE for storing doctor_info*/
CREATE TABLE doctor_info(
  doc_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),    
  fee INT,
  experience INT,
  speciality VARCHAR(50),
  location VARCHAR(50),
  address VARCHAR(254),
  timeslot VARCHAR(20),
  gender VARCHAR(7),
  email VARCHAR(50),
  image VARCHAR(100)	
);
/*Inserting doctors data*/
INSERT INTO doctor_info(
  name,
  fee,
  experience,
  speciality,
  location,
  address,
  timeslot,
  gender,   
  email,
  image	
	/* for image: /images/imagem/doc_id.jpg(if male) and images/imagef/doc_id.jpg(if female) */
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
	'hemantiitkcse@gmail.com',
	'/images/imagem/1.jpg'
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
	'watashivahero@gmail.com',
	'/images/imagem/2.jpg'
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
	'shailendras@gmail.com',
	'/images/imagem/3.jpg'
),
(
	'Niharika Sharma',
	400,
	6,
	'Gyancologist',
	'Lucknow',
	'Gali-313, Model Town,Lucknow',
	'9-11am',
	'Female',
	'jhooteid@gmail.com',
	'/images/imagef/4.jpg'
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
	'hooda_s@gmail.com',
	'images/imagef/5.jpg'
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
	'pbanerjee@gmail.com',
	'images/imagef/6.jpg'
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
	'itsarushisaxena@gmail.com',
	'images/imagef/7.jpg'
),
(
	'Urvashi',
	400,
	4,
	'General Physician',
	'Haryana',
	'Gali no-123, House no-ABC, Haryana',
	'3-6pm',
	'Female',
	'kuhemant@iitk.ac.in',
	'images/imagef/8.jpg'
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
	'r_taneja@gmail.com',
	'images/imagem/9.jpg'
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
	'akparmanu@gmail.com',
	'images/imagem/10.jpg'
);
INSERT INTO location(city) VALUES
('Delhi'),	
('Gujarat'),
('Goa'),
('Kanpur'),
('Mumbai'),
('Kolkata'),
('Lucknow'),
('Guwahati'),
('Chennai'),
('Haryana');
INSERT INTO feerange(fee) VALUES
('100'),
('200'),
('300'),
('400'),
('500'),
('600'),
('700'),
('800'),
('900'),
('1000');
INSERT INTO speciality(speciality) VALUES
('General Physician'),
('Ayurvedic Expert'),
('Homeopathic'),
('Dentist'),
('Audiologist'),
('Dermatologist'),
('Cardiologist'),
('Gyancologist'),
('Allergist');
/*disease table*/
CREATE TABLE diseases(
  dis_id INT AUTO_INCREMENT PRIMARY KEY,
  dis_name VARCHAR(55)
);
/*symptoms table*/
CREATE TABLE symptoms(
  id INT AUTO_INCREMENT PRIMARY KEY,
  sym_desc VARCHAR(255)
);
/*common table for symptoms and diseases*/
CREATE TABLE symptoms_diseases(
   sym_id INT,
   dis_id INT,
   -- PRIMARY KEY(sym_id,dis_id),
   FOREIGN KEY(sym_id) REFERENCES symptoms(id),
   FOREIGN KEY(dis_id) REFERENCES diseases(dis_id)
);


/*INSERTING DISEASES INTO TABLE diseases*/

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
  'Hepatitis B'
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
/*symptoms batayega to disease aur disease se remedy
 A-14 , B-13, C-12, D-5, E-5, F-2, G-5, H-8, I-4, K-4, L-9, M-11, N-4, O-8, P-7, R-5,S-10, T-5, U-4, V-3, W-2, Y-1
 A-Y 141
index cols to retrieve data fast.


--AML for Acute myleoid leukaemia
--CML for Chronic Myleoid Luekaemia
*/
INSERT INTO symptoms(sym_desc) VALUES(
  'constipation' /*Irritable bowel syndrome,Meningitis,Parkinson's disease,Cervical Cancer*/
),
(
  'nausea' /*--Kaposi's sarcoma, Kidney stones, Labyrinthitis,Uterus Cancer,Yellow fever,Cirrhosis*/
),
(
  'vomitting' /*--Kaposi's sarcoma, Liver cancer,malaria,Oesophageal cancer,stomach cancer*/
),
(
  'joint pain' /*--lupus,pneumonia,AIDS,AML,arthritis*/
),

(
  'swelling' /*--Kaposi's sarcoma*/
),
(
  'cough' /*--Lung cancer, Laryngitis,measeles,Chest infection,Common cold*/
),
(
  'body rash' /*--lyme disease*/
),

(
  'sore throat' /*--Laryngitis,AIDS*/
),

(
  'headaches' /*--Meningitis,Brain tumour*/
),

(
  'back pain' -- Uterus Cancer,Yellow fever
),

(
  'pain in abdomen' -- Hepatits B, Hepatitis C, Irritable bowel syndrome, Kaposi's sarcoma, Liver cancer,mumps,Tuberculosis,AAA
),
(
  'weakness' -- Kidney Infection, Liver cancer, Lung cancer
),

(
  'shortness of breath' -- Lung cancer,Mesothelioma,Oesophageal cancer,Tuberculosis,Ulcerative colitis,AML,Anaemia,Asthma,Bronchiectasis,Bronchitis
),
(
  'memory loss' -- Brain tumours
),

(
  'changes in vision' -- Labyrinthitis
),

(
  'dizziness' -- Labyrinthitis,Stroke,Dehydration
),

(
  'pale skin' -- neuroblastoma
),

(
  'weight loss' -- Liver cancer, Lung cancer,Meningitis,mouth cancer,Oesophageal cancer,stomach cancer,Type 1 Diabetes,Wilm's tumour,AML,Alzheimer's disease,Bladder Cancer,Cervical Cancer
),

(
  'depression' -- bulimia,migraine
),

(
  'muscle pain' -- malaria,pneumonia,Yellow fever,AIDS
),

(
  'bluish discolouration of fingers' -- Asthma
),

(
  'dehydration' -- Yellow fever
),
(
  'joint deformity' -- bone cancer
),

(
  'limping' -- Bone Cancer
),

(
  'chest tightness' -- Lung cancer,Asthma,Chest Infection
),

(
  'chest pain' -- Kaposi's sarcoma, Lung cancer,Mesothelioma,pneumonia,Bronchiectasis
),
(
  'frequent urination' -- Kidney stones,Type 1 Diabetes
),
(
  'blood in urine' -- Kidney Cancer, Kidney stones
),
(
  'pain or burning sensation during urination' -- Kidney stones
),
(
  'weakened bone leading to fracture' -- Bone Cancer
),
(
  'seizures' -- Meningitis,Brain tumours,Dehydration
),
(
  'not passing urine for eight hours' -- Dehydration
),
(
  'personality or memory change' -- Depression
),
(
  'sleep problems' -- Dehydration,Fibromyalgia
),
(
  'change in size of breast' -- breast cancer
),
(
  'change in skin texture of breast' -- breast cancer
),
(
  'coughing out blood' -- Kaposi's sarcoma, Lung cancer,pneumonia,Bronchiectasis
),
(
  'slight fever and chills' -- Kidney Infection, Laryngitis
),
(
  'infertility' -- Ovarian cancer
),

(
  'vaginal bleeding after sex' -- Cervical cancer
),
(
  'wheezing' -- pneumonia,Asthma
),
(
  'rapid or irregular heartbeat' -- Ulcerative colitis, Asthma,Chest Infection
),
(
  'clustered spots' -- chickenpox
),
(
  'spots turning into blisters' -- chickenpox
),
(
  'loss of appetite' -- Cirrhosis,Hepatits B, Hepatitis C, Kidney Infection, Liver cancer, Lung cancer,measeles,Meningitis,mumps,Oesophageal cancer,stomach cancer,Diarrhoea 
),
(
  'frequent infections' -- neuroblastoma,AIDS,Sickle cell disease,AML,CML,CLL
),
(
  'a feeling of bloating' -- Irritable bowel syndrome, Lactose Intolerance,CML
),
(
  'swelling and discomfort in tummy' -- Irritable bowel syndrome, Liver cancer,Cirrhosis
),
(
  'night sweats' -- Tuberculosis,Bone cancer,CML
),
(
  'loss of hair' -- Anal cancer,Anaemia
),
(
  'tiny red lines above waist' -- Cirrhosis
),
(
  'hoarse voice' -- Laryngitis,Common cold
),
(
  'blocked or running nose' -- common cold,Bronchitis
),

(
  'dry mouth, lips and eyes' -- dehydraion
),

(
  'continuous low mood or sadness' -- depression
),
(
  'feeling hopeless and helpless' -- depression
),
(
  'lack of energy or lack of interest in sex' -- erectyle disfunction
),
(
  'difficulty in making decisions' -- depression
),
(
  'stomach cramps' -- Irritable bowel syndrome, Kaposi's sarcoma, Lactose Intolerance,Diarrhoea,Food Poisioning
),
(
  'flat back of the head' -- Down's syndrome
),
(
  'eyes that slant upwards and outwards' -- Down's syndrome
),
(
  'stiffness or twitching in parts of the body' -- Fibromyalgia
),
(
  'inability to get and maintain an erection for satisfactory intercourse.' --  erectyle disfunction
),
(
  'blurred vision' -- eye cancer,Type 1 Diabetes
),
(
  "a dark patch in my eye that's getting bigger" -- eye cancer
),
(
  'shadows,flashes of light,or wiggly lines in my vision' -- eye cancer
),
(
  'painful periods or heavy periods' -- Kidney stones,Uterus Cancer,Endometriosis
),
(
  'bleeding between periods' -- Uterus Cancer,Endometriosis
),
(
  'pain during and after sex' -- cervical cancer
),
(
  'extreme sensitivity' -- migraine,Fibromyalgia
),
(
  'jaundice (yellowing of the skin and whites of the eyes)' -- gallbladder cancer, Hepatits B, Liver cancer,pancreatic cancer,Cirrhosis
),
(
  'sudden, watery diarrhoea' -- gastroenteritis,Meningitis 
),
(
  'heartburn' -- GERD,stomach cancer
),
(
  'acid reflux' -- GERD
),
(
  'red and swollen gums' -- gum disease
),
(
  'bleeding gums after brushing or flossing your teeth' -- gum disease
),
(
  'unpleasent taste in mouth' -- gum disesase
),
(
  'a lump hanging down outside of the anus' -- haemorrhoids
),
(
  'soreness and swelling around the anus' -- haemorrhoids
),
(
  'mucus discharge after passing a stool'  -- haemorrhoids,Anal cancer
),
(
  'a high temperature (fever)' -- Hepatits B, Hepatitis C, Kidney Infection, Labyrinthitis,malaria,Meningitis,Mesothelioma,Ulcerative colitis,Wilm's tumour,Yellow fever,CML
),
(
  'dark urine' -- Hepatits B
),
(
  'excessive sweating' -- Hyperhidrosis,migraine,Parkinson's disease,AML
),
(
  'loose motion (diarrhea)' -- Irritable bowel syndrome, Kaposi's sarcoma, Kidney Infection, Lactose Intolerance,malaria,Neuroendocrine tumours
),
(
  'flatulence' -- Irritable bowel syndrome, Lactose Intolerance
),
(
  'a lump or swelling in the area of kidneys' -- Kidney cancer
),
(
  'pain in lower back or groin on side of kidneys' -- Kidney Infection, Kidney cancer, Kidney stones
),
(
  'ear pain' -- Labyrinthitis
),
(
  'white fluid or pus leaked out from ears' -- Labyrinthitis
),
(
  'stiffness in neck' -- lyme disease
),
(
  'repeated skin infections' -- lymphoedema
),
(
  'fluid leakage through skin' -- lymphoedema
),
(
  'rash over cheeks and nose' -- lupus
),
(
  'fatigue' -- lupus,Sjogren's syndrome,Addison's disease
),
(
  'sweats' -- Malaria
),
(
  'watery eyes' -- measeles
),
(
  'intense headache on one side of the head.' -- Migraine
),
(
  'increased sensitivity to light and sound' -- Migraine
),
(
  'feeling off balance' -- Stroke
),
(
  'drowsiness' -- Meningitis
),
(
  'weakness at the shoulder' -- motor neuron disease
),
(
  'weakened grip' -- motor neruron disease
),
(
  'Increasingly slurred speech' -- motor neruron disease
),
(
  'difficulty in swallowing' -- motor neruron disease,mumps,Stroke
),
(
  'excessive yawning' -- motor neruron disease
),
(
  'red or white patches in the mouth or throat' -- mouth cancer
),
(
  'persistent pain in the mouth' -- mouth cancer
),
(
  'sudden attacks' -- Meniere's disease
),
(
  'vertigo' -- Meniere's disease
),
(
  'loss of hearing' -- Meniere's disease
),
(
  'sense of pressure deep inside the ear' -- Meniere's disease
),
(
  'nosebleeds' -- nasal and sinus cancer
),
(
  'double vision' -- Meniere's disease
),
(
  'lump in the neck' -- neuroblastoma
),
(
  'low blood sugar' -- Neuroendocrine tumours,Type 2 Diabetes
),  
(
  'obsession' -- Obsessive Compulsive disorder
),
(
  'anxiety' -- Obsessive Compulsive disorder
),
(
  'loud snoring while sleeping' -- Obstructive sleep apnoea
),
(
  'noisy and laboured breathing' -- Obstructive sleep apnoea
),
(
  'persistent indigestion' -- Oesophageal cancer,stomach cancer
),
(
  'a grating or crackling sound in the joints' -- Osteoarthritis
),
(
  'joints apperaing slightly larger' -- Osteoarthritis
),
(
  'wrist or hip fractures' -- osteoporosis
),
(
  'spinal fractures' -- osteoporosis
),
(
  'increased abdominal size and persistent bloating' -- ovarian cancer
),
(
  'persistent pelvic pain' -- Ovarian cancer
),
(
  'pain in abdomen after lying down or after eating' -- pancreatic cancer
),
(
  'blood clots' -- pancreatic cancer
),
(
  'slowness of movement' -- Parkinson's disease
),
(
  'to-and-fro movements of body parts' -- Parkinson's disease
),
(
  'a sensation of a bulge in vagina' -- pelvic organ prolapse
),
(
  'problems passing urine in females' -- pelvic organ prolapse
),
(
  'feeling confused and disoriented' -- pneumonia,Alzheimer's disease,Chest Infection
),
(
  'hallucinations' -- Alzheimer's disease
),
(
  'needing to urinate more frequently, often during the night' -- Prostate cancer
),
(
  'straining or taking a long time while urinating' -- Prostate cancer
),
(
  'difficulty using fingers' -- Raynaud's Phenomenon
),
(
  'a change in the colour of the iris' -- Retinoblastoma
),
(
  'red or inflamed eye' -- Retinoblastoma
),
(
  'an unusual white reflection in the pupil' -- Retinoblastoma
),
(
  'tingling, burning, itching or throbbing' -- Restless leg syndrome
),
(
  'a painful, cramping sensation in the legs' -- Restless leg syndrome
),
(
  'rash containing tiny red spots' -- Scabies
),
(
  'intense itching' -- Scabies
),
(
  'visibly curved spine' -- Scoliosis
),
(
  'one soldier is higher than other' -- Scoliosis
),
(
  'a difference in leg lengths' -- Scoliosis
),
(
  'Anaemia' -- Sickle cell disease,stomach cancer
),
(
  "mole that's changing color and shape" -- skin cancer
),
(
  'growth of lump or discoloured patch' -- skin cancer
),
(
  'firm pink lump having flat, scaly and crusted surface.' -- skin cancer
),
(
  'dry mouth and eyes' -- Sjogren's syndrome
),
(
  'difficulty concentrating'-- Sjogren's syndrome
),
(
  'frequent burping' -- stomach cancer
),
(
  'not able to smile due to dropping of face on one side' -- Stroke
),
(
  'not able to lift both the arms' -- Stroke
),
(
  "lump or swelling at the front of the neck just below Adam's apple" -- Thyroid cancer
),
(
  'pain in neck' -- Thyroid Cancer
),
(
  'persistent cough for more than three weeks and phlegm with blood' -- Tuberculosis
),
(
  'persistently swollen glands' -- Tuberculosis,AIDS
),
(
  'feeling very thirsty' -- Type 1 and Type 2 Diabetes
),
(
  'itchiness around the genital area' -- Type 1 and Type 2 Diabetes
),
(
  'very high glucose levels' -- Type 2 Diabetes
),
(
  'Bed-wetting in children' -- Type 1 Diabetes
),
(
  'extreme hunger' -- Type 1 diabetes
),
(
  'areas of darkened skin' -- Type 2 Diabetes
),
(
  'pain or discomfort while peeing' -- Urinary Tract Infection
),
(
  'cloudy,foul-smelling urine' -- Urinary Tract Infection
),
(
  'restlessness' -- Urinary Tract Infection
),
(
  'need to empty bowels frequently' -- Addison's disease,Urinary Tract Infection
),
(
  'smelly or bloody vaginal discharge' -- Vaginal cancer
),
(
  'itch or lump in vagina' -- Vaginal cancer
),
(
  'a persistent itch in vulva' -- Vulval cancer
),
(
  'burning pain while passing urine' -- Vulval Cancer,Bladder Cancer
),
(
  'Small,fleshy and grainy bumps' -- Warts
),
(
  'itching or leisons in mouth or around genitals' -- Warts
),
(
  'swollen abdomen but painless' -- Wilm's tumour
),
(
  'raised blood pressure' -- Wilm's tumour
),
(
  'bleeding from mouth' -- Yellow fever
),
(
  'blackheads' -- Acne
),
(
  'pus-filled pimples' -- Acne
),
(
  'coughing up thickened mucus' -- Bronchitis
),
(
  'Involuntary jerking or writhing movements (chorea)' -- Huntington's disease
),
(
  'Impaired gait, posture and balance' -- Huntignation's disease
);

INSERT INTO symptoms_diseases(
  sym_id,
  dis_id
)
VALUES
(
  1,
  64
),
(
  1,
  80
),
(
  1,
  47
),
(
  1,
  19
),
(
  2,
  24
),
(
  2,
  49
),
(
  2,
  52
),
(
  2,
  53
),
(
  2,
  100
),
(
  2,
  105
),
(
  3,
  49
),
(
  3,
  55
),
(
  3,
  61
),
(
  3,
  75
),
(
  3,
  92
),
(
  4,
  60
),
(
  4,
  3
),
(
  4,
  82
),
(
  4,
  4
),
(
  4,
  10
),
(
  5,
  49
),
(
  6,
  56
),
(
  6,
  57
),
(
  6,
  20
),
(
  6,
  25
),
(
  6,
  62
),
(
  7,
  58
),
(
  8,
  3
),
(
  8,
  57
),
(
  9,
  14
),
(
  9,
  64
),
(
  10,
  100
),
(
  10,
  105
),
(
  11,
  41
),
(
  11,
  42
),
(
  11,
  47
),
(
  11,
  49
),
(
  11,
  55
),
(
  11,
  68
),
(
  11,
  95
),
(
  12,
  51
),
(
  12,
  55
),
(
  12,
  56
),
(
  13,
  4
),
(
  13,
  8
),
(
  13,
  11
),
(
  13,
  16
),
(
  13,
  17    
),
(
  13,
  56
),
(
  13,
  65
),
(
  13,
  75
),
(
  13,
  95
),
(
  13,
  99
),
(
  14,
  14
),
(
  15,
  53
),
(
  16,
  26
),
(
  16,
  53
),
(
  16,
  93
),
(
  17,
  71
),
(
  18,
  4
),
(
  18,
  5
),
(
  18,
  12
),
(
  18,
  19
),
(
  18,
  55
),
(
  18,
  56
),
(
  18,
  64
),
(
  18,
  67
),
(
  18,
  75
),
(
  18,
  92
),
(
  18,
  96
),
(
  18,
  104
),
(
  19,
  18
),
(
  19,
  63
),
(
  20,
  3
),
(
  20,
  61
),
(
  20,
  82
),
(
  20,
  105
),
(
  21,
  11
),
(
  22,
  105
),
(
  23,
  13
),
(
  24,
  13
),
(
  25,
  11
),
(
  25,
  20
),
(
  25,
  56
),
(
  26,
  17
),
(
  26,
  56
),
(
  26,
  65
),
(
  26,
  82
),
(
  27,
  52
),
(
  27,
  96
),
(
  28,
  50
),
(
  28,
  52
),
(
  29,
  52
),
(
  30,
  13
),
(
  31,
  14
),
(
  31,
  26
),
(
  31,
  64
),
(
  31,
  26
),
(
  32,
  26  
),
(
  33,
  27
),
(
  34,
  26
),
(
  34,
  35
),
(
  35,
  15
),
(
  36,
  15
),
(
  37,
  16
),
(
  37,
  49
),
(
  37,
  56
),
(
  37,
  82
),
(
  38,
  51
),
(
  38,
  57
),
(
  39,
  78
),
(
  40,
  19
),
(
  41,
  11
),
(
  41,
  82
),
(
  42,
  11
),
(
  42,
  20
),
(
  42,
  99
),
(
  43,
  21
),
(
  44,
  21
),
(
  45,
  24
),
(
  45,
  28
),
(
  45,
  41
),
(
  45,
  42
),
(
  45,
  51
),
(
  45,
  55
),
(
  45,
  56
),
(
  45,
  62
),
(
  45,
  64
),
(
  45,
  68
),
(
  45,
  75
),
(
  45,
  92
),
(
  46,
  3
),
(
  46,
  4
),
(
  46,
  22
),
(
  46,
  23
),
(
  46,
  71
),
(
  46,
  89
),
(
  47,
  22
),
(
  47,
  47
),
(
  47,
  54
),
(
  48,
  24
),
( 
  48,
  47
),
(
  48,
  55
),
(
  49,
  13
),
(
  49,
  22
),
(
  49,
  95
),
(
  50,
  7
),
(
  50,
  8
),
(
  51,
  24
),
(
  52,
  25
),
(
  52,
  57
),
(
  53,
  17
),
(
  53,
  25  
),
(
  54,
  26
),
(
  55,
  27
),
(
  56,
  27
),
(
  57,
  31
),
(
  58,
  27
),
(
  59,
  28
),
(
  59,
  34
),
(
  59,
  47
),
(
  59,
  49
),
(
  59,
  54
),
(
  60,
  29
),
(
  61,
  29  
),
(
  62,
  35
),
(
  63,
  31
),
(
  64,
  32
),
(
  64,
  96
),
(
  65,
  32
),
(
  66,
  32
),
(
  67,
  33
),
(
  67,
  52
),
(
  67,
  100
),
(
  68,
  33
),
(
  68,
  100
),
(
  69,
  19
),
(
  70,
  35
),
(
  70,
  63
),
(
  71,
  24
),
(
  71,
  36
),
(
  71,
  41
),
(
  71,
  55
),
(
  71,
  79
),
(
  72,
  37
),
(
  72,
  64
),
(
  73,
  38
),
(
  73,
  92
),
(
  74,
  38
),
(
  75,
  39
),
(
  76,
  39
),
(
  77,
  39
),
(
  78,
  40
),
(
  79,
  40
),
(
  80,
  7
),
(
  80,
  40
),
(
  81,
  22
),
(
  81,
  41
),
(
  81,
  42
),
(
  81,
  51
),
(
  81,
  61
),
(
  81,
  64
),
(
  81,
  65
),
(
  81,
  99
),
(
  81,
  104
),
(
  81,
  105
),
(
  82,
  41
),
(
  83,
  4 
),
(
  83,
  45
),
(
  83,
  63
),
(
  83,
  80
),
(
  84,
  49
),
(
  84,
  47
),
(
  84,
  51
),
(
  84,
  54
),
(
  84,
  61
),
(
  84,
  72
),
(
  85,
  47
),
(
  85,
  54
),
(
  86,
  50
),
(
  87,
  50
),
(
  87,
  51
),
(
  87,
  52
),
(
  88,
  53
),
(
  89,
  53
),
(
  90,
  58
),
(
  91,
  59
),
(
  92,
  59
),
(
  93,
  60
),
(
  94,
  6
),
(
  94,
  60
),
(
  94,
  91
),
(
  95,
  61
),
(
  96,
  62
),
(
  97,
  63
),
(
  98,
  63
),
(
  99,
  93
),
(
  100,
  64
),
(
  101,
  66
),
(
  102,
  66
),
(
  103,
  66
),
(
  104,
  66
),
(
  104,
  68
),
(
  104,
  93  
),
(
  105,
  66
),
(
  106,
  67
),
(
  107,
  67
),
(
  108,
  69
),
(
  109,
  69
),
(
  110,
  69
),
(
  111,
  69
),
(
  112,
  70
),
(
  113,
  69
),
(
  114,
  71
),
(
  115,
  72
),
(
  115,
  97
),
(
  116,
  73
),
(
  117,
  73
),
(
  118,
  74
),
(
  119,
  74
),
(
  120,
  75
),
(
  120,
  92
),
(
  121,
  76
),
(
  122,
  76
),
(
  123,
  77
),
(
  124,
  77
),
(
  125,
  78  
),
(
  126,
  78
),
(
  127,
  79
),
(
  128,
  79
),
(
  129,
  80
),
(
  130,
  80
),
(
  131,
  81
),
(
  132,
  81
),
(
  133,
  5
),
(
  133,
  20
),
(
  133,
  82
),
(
  134,
  5
),
(
  135,
  83
),
(
  136,
  83
),
(
  137,
  84
),
(
  138,
  85
),
(
  139,
  85
),
(
  140,
  85
),
(
  141,
  86
),
(
  142,
  86
),
(
  143,
  87
),
(
  144,
  87
),
(
  145,
  88
),
(
  146,
  88  
),
(
  147,
  88
),
(
  148,
  89
),
(
  148,
  92
),
(
  149,
  90
),
(
  150,
  90
),
(
  151,
  90
),
(
  152,
  91  
),
(
  153,
  91
),
(
  154,
  92
),
(
  155,
  93
),
(
  156,
  93
),
(
  157,
  94
),
(
  158,
  94
),
(
  159,
  95
),
(
  160,
  3
),
(
  160,
  95
),
(
  161,
  96
),
(
  161,
  97
),
(
  162,
  96
),
(
  162,
  97
),
(
  163,
  97
),
(
  164,
  96
),
(
  165,
  96
),
(
  166,
  97
),
(
  167,
  98
),
(
  168,
  98
),
(
  169,
  98
),
(
  170,
  6
),
(
  170,
  98
),
(
  171,
  101
),
(
  172,
  101
),
(
  173,
  102
),
(
  174,
  12
),
(
  174,
  102
),
(
  175,
  103
),
(
  176,
  103
),
(
  177,
  104
),
(
  178,
  104
),
(
  179,
  105
),
(
  180,
  2
),
(
  181,
  2
),
(
  182,
  17  
),
(
  183,
  43
),
(
  184,
  43
);
  
