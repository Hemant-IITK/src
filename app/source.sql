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
  name VARCHAR(50),
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
  name VARCHAR(55),
  descr VARCHAR(255)
);
INSERT INTO diseases(name,descr) VALUES
(
	'AAA', 
	'An abdominal aortic aneurysm (AAA) is a swelling (aneurysm) of the aorta – the main blood vessel that leads away from the heart, down through the abdomen to the rest of the body.'
),
(
	'Acne',
	"Acne is a common skin condition that affects most people at some point. It causes spots, oily skin and sometimes skin that's hot or painful to touch.
It most commonly develops on the face – this affects almost everyone with acne,back – this affects more than half of people with acne,chest – this affects about 15% of people with acne"
),
(
	'Acute cholecystitis',
	'Acute cholecystitis is swelling (inflammation) of the gallbladder.'
),
(
	'Acute myleoid leukaemia',
	'Leukaemia is cancer of the white blood cells. Acute leukaemia means it progresses rapidly and aggressively, and usually requires immediate treatment.'
),
(
	"Alzheimer's disease",
	"Alzheimer's disease is the most common type of dementia,which is a progressive neurological disease which affects multiple brain functions, including memory."
),
(
	"Addison’s disease",
	"Addison’s disease (also known as primary adrenal insufficiency or hypoadrenalism) is a rare disorder of the adrenal glands in which the adrenal gland is damaged, and not enough cortisol and aldosterone are produced."
),
(
	"Anal cancer",
	"Anal cancer is a rare type of cancer that affects the very end of the large bowel."
),
(
	"Anaphylaxis",
	"Anaphylaxis is a severe, potentially life-threatening allergic reaction that can develop rapidly.It is also known as anaphylactic shock."
),
(
	"Angioedema",
	"Angioedema is the swelling of the deeper layers of the skin, caused by a build-up of fluid which affects eyes,lips,genitals,hands,feet"
),
(
	"Anorexia nervosa",
	"Anorexia nervosa is an eating disorder and a serious mental health condition.People with anorexia have problems with eating. They are very anxious about their weight and keep it as low as possible by strictly controlling and limiting what they eat."
),
(
	"Appendicitis"
	"Appendicitis is a painful swelling of the appendix. The appendix is a small, thin pouch about 5-10cm (2-4 inches) long. It's connected to the large intestine, where stools (faeces) are formed.
"
),
--symptoms batayega to disease aur disease se remedy

--index cols to retrieve data fast.
