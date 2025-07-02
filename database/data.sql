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
