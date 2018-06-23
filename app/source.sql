CREATE DATABASE information_project;
USE information_project;

CREATE TABLE patient_info(
  pat_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(55),
  last_name VARCHAR(55),
  age INT NOT NULL,
  gender VARCHAR(8),
  dob DATE NOT NULL, --make seperate sql file to update age based on DATEDIFF(exp1,exp2) using dob
  ailments VARCHAR(255),  --provide an update button to only update ailments
  FOREIGN KEY(pat_id) REFERENCES login_info(pat_id);
);

CREATE TABLE doctor_info(
  doc_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT NOT NULL,
  qualification VARCHAR(50),
  speciality VARCHAR(50)
);
CREATE TABLE login_info(
  --login_id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(60) NOT NULL UNIQUE,
  pass VARCHAR(32) NOT NULL,
  pat_id INT AUTO_INCREMENT PRIMARY KEY,
);

CREATE TABLE bookings(
  booking_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pat_id INT NOT NULL,
  booked_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(pat_id) REFERENCES patient_info(pat_id);
);

CREATE TABLE location(
  city VARCHAR(40) NOT NULL,

);

CREATE TABLE locality(
  local_name VARCHAR(40) NOT NULL,

);
CREATE TABLE symptoms(
  sym_id INT NOT NULL AUTO_INCREMENT,
  sym_desc VARCHAR(255)
);
INSERT INTO symptoms(sym_desc) VALUES(
  'bledding'
),
(
  'constipation'
),
(
  'nausea'
),
(
  'vomitting'
),
(
  'tingling'
),
(
  'joint pain'
),

(
  'swelling'
),

(
  'bruising'
),

(
  'cough'
),
(
  'body rash'
),

(
  'sore throat'
),

(
  'headaches'
),

(
  'back pain'
),

(
  'pain in abdomen'
),
(
  'weakness'
),

(
  'shortness of breath'
),

(
  'feeling cold'
),

(
  'memory loss'
),

(
  'changes in vision'
),

(
  'dizziness'
),

(
  'pale skin'
),

(
  'weight loss'
),

(
  'depression'
),

(
  'muscle pain'
),

(
  'bluish discolouration of fingers'
),

(
  'absence of menstruation'
),

(
  'dehydration'
),

(
  'abnormal blood counts'
),

(
  'joint deformity'
),

(
  'joint redness'
),

(
  'limping'
),

(
  'chest tightness'
),

(
  'chest pain'
),
(
  'frequent urination'
),
(
  'blood in urine'
),
(
  'pain or burning sensation during urination'
),
(
  'weakened bone leading to fracture'
),
(
  'seizures'
),
(
  'personality or memory change'
),
(
  'sleep problems'
),
(
  'change in size of breast'
),
(
  'change in skin texture of breast'
),
(
  'coughing out blood'
),
(
  'thickening of skin under nails and toes'
),
(
  'Production of mucus'
),
(
  'slight fever and chills'
),
(
  'infertility'
),
(
  'inflammation of esophagus'
),
(
  'lack of control when eating'
),
(
  'vaginal bleeding'
),
(
  'unusual vaginal discharge'
),
(
  'wheezing'
),
(
  'rapid heartbeat'
),
(
  'clustered spots'
),
(
  'spots turning into blisters'
),
(
  'loss of appetite'
),
(
  'frequent infections'
),
(
  'a feeling of bloating'
),
(
  'swelling and discomfort in tummy'
),
(
  'night sweats'
),
(
  'loss of hair'
),
(
  'tiny red lines above waist'
),
(
  'hoarse voice'
),
(
  'blocked or running nose'
),

(
  'dry mouth, lips and eyes'
),

(
  'continuous low mood or sadness'
),
(
  'feeling hopeless and helpless'
),
(
  'lack of energy or lack of interest in sex'
),
(
  'difficulty in making decisions'
),
(
  'stomach cramps'
),
(
  'flat back of the head'
),
(
  'eyes that slant upwards and outwards'
),
(
  'stiffness or twitching in parts of the body'
),
(
  'complex seizures'
),
(
  'inability to get and maintain an erection for satisfactory intercourse.'
),
(
  'blurred vision'
),
(
  "a dark patch in my eye that's getting bigger"
),
(
  'shadows, flashes of light, or wiggly lines in my vision'
),
(
  'painful periods or heavy periods'
),
(
  'bleeding between periods'
),
(
  'pain during and after sex'
),
(
  'extreme sensitivity'
),
(
  'jaundice (yellowing of the skin and whites of the eyes)'
),
(
  'sudden, watery diarrhoea'
),
(
  'heartburn'
),
(
  'acid reflux'
),
(
  'red and swollen gums'
),
(
  'bleeding gums after brushing or flossing your teeth'
),
(
  'unpleasent taste in mouth'
),
(
  ''
),
(
  ''
),

CREATE TABLE diseases(
  dis_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dis_name VARCHAR(55),
  links VARCHAR(255)
);
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
  "Addison’s disease"
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
  'Haemorrhoids'
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
  'Insomnia'
),
(
  'Irritable bowel syndrome'
),
(
  'Itching'
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
  'Laryngeal cancer'
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
  'Malnutrition'
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
  'Mouth ulcer'
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
  'Nasopharyngeal cancer'
),
(
  'Neuroblastoma'
),
(
  'Neuroendocrine tumours'
),
(
  'Obesity'
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
  'Osteosarcoma'
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
  'Personality disorder'
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
  'Psychosis'
),
(
  "Raynaud's Phenomenon"
),
(
  'Retinoblastoma'
),
(
  'Rosacea'
),
(
  'Rhabdomyosarcoma'
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
  'Schizophrenia'
),
(
  'Sickle cell disease'
),
(
  'Skin cancer(melanoma)'
),
(
  'Skin cancer(non-melanoma)'
),
(
  "Sjogren's syndrome"
),
(
  'Stomach cancer'
),
(
  'Stomach ulcer'
),
(
  'Stroke'
),
(
  'Testicular cancer'
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
  'Urinary incotinence'
),
(
  'Uterus Cancer'
),
(
  'Vaginal Cancer'
),
(
  'Vertigo'
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
),
--symptoms batayega to disease aur disease se remedy
-- A-14 , B-13, C-12, D-5, E-5, F-2, G-5, H-8, I-4, K-4, L-9, M-11, N-4, O-8, P-7, R-5,S-10, T-5, U-4, V-3, W-2, Y-1
-- A-Y 141
--index cols to retrieve data fast.
