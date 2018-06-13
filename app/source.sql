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

),
(

),
(

),
CREATE TABLE diseases(
  dis_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dis_name VARCHAR(55),
  links VARCHAR(255)
);
INSERT INTO diseases(dis_name,links) VALUES
(
	'Abdominal Aortic aneurysm', 
),
(
	'Acne',
),
(
  'AIDS'
),
(
	'Acute cholecystitis',
),
(
	'Acute myleoid leukaemia'
),
(
	"Alzheimer's disease",
),
(
	"Addison’s disease",
),
(
	"Anal cancer",
),
(
  'Anaemia'
),
(
	"Anaphylaxis",
),
(
	"Angioedema",
),
(
	"Anorexia nervosa",
),
(
	"Appendicitis"
),
(
  "Arthritis",
),
(
  "Asthama",
),
(
  "Benign prostrate enlargement",
),
(
  "Bladder cancer",
),
(
  "Bone cancer",
),
(
  "Bowel cancer",
),
(
  "Bowel polyps",
),
(
  'Brain stem death'
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
  'Bunion'
),
(
  'Bursitis'
),
(
  'Catarrh'
),
(
  'Cellulitis'
),
(
  'Cervical cancer'
),
(
  'Chest Infection'
),
(
  'Chest pain'
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
  'Chronic pancreatitis'
),
(
  'Cirrhosis'
),
(
  'Coma'
),
(
  'Common cold'
),
(
  'Deafblindness'
),
(
  'Dehydration'
),
(
  'Depression'
),
(
  'Diabetes'
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
  'Ectopic Pregnency'
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
  'Gallstones'
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
  'Menopause'
),
--symptoms batayega to disease aur disease se remedy
-- A-14 , B-13, C-12, D-6, E-5, F-2, G-5, H-8, I-4, K-4, L-9, M-
--index cols to retrieve data fast.
