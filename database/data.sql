-- Desarrollo Web: Frontend
INSERT INTO programming_languages (name, type, extension) VALUES
  ('HTML', 'language', '.html'),
  ('CSS', 'language', '.css'),
  ('JavaScript', 'language', '.js'),
  ('React', 'framework', '.jsx'),
  ('Vue.js', 'framework', '.vue'),
  ('Bootstrap', 'framework', NULL),
  ('Next.js', 'framework', '.jsx');

-- Desarrollo Web: Backend
INSERT INTO programming_languages (name, type, extension) VALUES
  ('Node.js', 'runtime', '.js'),
  ('Express.js', 'framework', '.js'),
  ('Django', 'framework', '.py'),
  ('Flask', 'framework', '.py'),
  ('FastAPI', 'framework', '.py'),
  ('PHP', 'language', '.php'),
  ('Ruby', 'language', '.rb'),
  ('Ruby on Rails', 'framework', '.rb'),
  ('Java', 'language', '.java'),
  ('Spring Boot', 'framework', '.java'),
  ('C#', 'language', '.cs'),
  ('ASP.NET Core', 'framework', '.cs'),
  ('Go', 'language', '.go');

-- Bases de Datos
INSERT INTO programming_languages (name, type, extension) VALUES
  ('SQL', 'language', '.sql'),
  ('MySQL', 'tool', NULL),
  ('PostgreSQL', 'tool', NULL),
  ('SQLite', 'tool', '.sqlite'),
  ('MongoDB', 'tool', '.json'),
  ('Redis', 'tool', NULL),
  ('Firebase', 'tool', NULL);

-- Análisis de Datos
INSERT INTO programming_languages (name, type, extension) VALUES
  ('Python', 'language', '.py'),
  ('Pandas', 'library', '.py'),
  ('NumPy', 'library', '.py'),
  ('Matplotlib', 'library', '.py'),
  ('Seaborn', 'library', '.py'),
  ('Jupyter Notebook', 'tool', '.ipynb'),
  ('R', 'language', '.r'),
  ('ggplot2', 'library', '.r'),
  ('Excel', 'tool', '.xlsx'),
  ('Tableau', 'tool', NULL),
  ('Power BI', 'tool', '.pbix');

-- Inteligencia Artificial
INSERT INTO programming_languages (name, type, extension) VALUES
  ('TensorFlow', 'library', '.py'),
  ('PyTorch', 'library', '.py'),
  ('Keras', 'library', '.py'),
  ('scikit-learn', 'library', '.py'),
  ('OpenCV', 'library', '.py'),
  ('Hugging Face Transformers', 'library', '.py'),
  ('spaCy', 'library', '.py'),
  ('NLTK', 'library', '.py'),
  ('ONNX', 'tool', '.onnx');


  INSERT INTO hard_skills (name) VALUES
  ('Desarrollo Web'),
  ('Desarrollo Frontend'),
  ('Desarrollo Backend'),
  ('Bases de Datos'),
  ('Análisis de Datos'),
  ('Ciencia de Datos'),
  ('Inteligencia Artificial'),
  ('Machine Learning'),
  ('Procesamiento de Lenguaje Natural (NLP)'),
  ('Visión Computacional'),
  ('DevOps'),
  ('Testing y QA'),
  ('Automatización'),
  ('Ciberseguridad'),
  ('Cloud Computing'),
  ('Internet de las Cosas (IoT)');


INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 1, id FROM hard_skills WHERE name = 'Desarrollo Backend';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 2, id FROM hard_skills WHERE name = 'Desarrollo Backend';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 3, id FROM hard_skills WHERE name = 'Desarrollo Frontend';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 4, id FROM hard_skills WHERE name = 'Desarrollo Frontend';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 5, id FROM hard_skills WHERE name = 'Desarrollo Frontend';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 6, id FROM hard_skills WHERE name = 'Bases de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 7, id FROM hard_skills WHERE name = 'Desarrollo Web';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 8, id FROM hard_skills WHERE name = 'Bases de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 9, id FROM hard_skills WHERE name = 'Bases de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 10, id FROM hard_skills WHERE name = 'Análisis de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 11, id FROM hard_skills WHERE name = 'Bases de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 12, id FROM hard_skills WHERE name = 'Análisis de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 13, id FROM hard_skills WHERE name = 'Análisis de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 14, id FROM hard_skills WHERE name = 'Automatización';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 15, id FROM hard_skills WHERE name = 'Ciencia de Datos';
INSERT INTO education_hard_skills (education_id, hard_skill_id)
SELECT 16, id FROM hard_skills WHERE name = 'Ciencia de Datos';


INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 1, id FROM programming_languages WHERE name = 'Node.js';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 2, id FROM programming_languages WHERE name = 'JavaScript';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 3, id FROM programming_languages WHERE name = 'React';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 4, id FROM programming_languages WHERE name = 'React';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 4, id FROM programming_languages WHERE name = 'Next.js';  -- Por Vite.js
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 4, id FROM programming_languages WHERE name = 'CSS';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 5, id FROM programming_languages WHERE name = 'React';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 6, id FROM programming_languages WHERE name = 'SQL';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 6, id FROM programming_languages WHERE name = 'MySQL';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 7, id FROM programming_languages WHERE name = 'JavaScript';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 8, id FROM programming_languages WHERE name = 'SQL';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 8, id FROM programming_languages WHERE name = 'MySQL';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 8, id FROM programming_languages WHERE name = 'SQLite'; -- MaríaDB as proxy

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 9, id FROM programming_languages WHERE name = 'SQL';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 10, id FROM programming_languages WHERE name = 'Excel';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 11, id FROM programming_languages WHERE name = 'SQL';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 12, id FROM programming_languages WHERE name = 'Excel';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 13, id FROM programming_languages WHERE name = 'Excel';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 14, id FROM programming_languages WHERE name = 'Excel';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 15, id FROM programming_languages WHERE name = 'Python';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 15, id FROM programming_languages WHERE name = 'Pandas';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 15, id FROM programming_languages WHERE name = 'NumPy';
INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 15, id FROM programming_languages WHERE name = 'scikit-learn';

INSERT INTO education_programming_languages (education_id, programming_language_id)
SELECT 16, id FROM programming_languages WHERE name = 'Jupyter Notebook';



INSERT INTO education_soft_skills (education_id, soft_skill_id)
SELECT 10, id FROM soft_skills WHERE name = 'Gestión del tiempo';

INSERT INTO education_soft_skills (education_id, soft_skill_id)
SELECT 12, id FROM soft_skills WHERE name = 'Orientación a resultados';

INSERT INTO education_soft_skills (education_id, soft_skill_id)
SELECT 13, id FROM soft_skills WHERE name = 'Orientación a resultados';

INSERT INTO education_soft_skills (education_id, soft_skill_id)
SELECT 14, id FROM soft_skills WHERE name = 'Proactividad';

INSERT INTO education_soft_skills (education_id, soft_skill_id)
SELECT 15, id FROM soft_skills WHERE name = 'Capacidad de aprendizaje';

INSERT INTO education_soft_skills (education_id, soft_skill_id)
SELECT 16, id FROM soft_skills WHERE name = 'Capacidad de aprendizaje';
