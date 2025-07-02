-- Eliminar tablas si existen para recrearlas (útil para pruebas y desarrollo)
-- El orden de eliminación es importante debido a las dependencias de claves foráneas.
DROP TABLE IF EXISTS `project_programming_languages`;
DROP TABLE IF EXISTS `project_hard_skills`;
DROP TABLE IF EXISTS `project_soft_skills`;
DROP TABLE IF EXISTS `education_programming_languages`;
DROP TABLE IF EXISTS `education_hard_skills`;
DROP TABLE IF EXISTS `education_soft_skills`;
DROP TABLE IF EXISTS `user_languages`;
DROP TABLE IF EXISTS `job_experiences`;
DROP TABLE IF EXISTS `projects`;
DROP TABLE IF EXISTS `educations`;
-- DROP TABLE IF EXISTS `users_profile`; -- Eliminada como solicitado
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `languages`;
DROP TABLE IF EXISTS `hard_skills`;
DROP TABLE IF EXISTS `soft_skills`;
DROP TABLE IF EXISTS `programming_languages`;

-- Tabla de usuarios
CREATE TABLE IF NOT EXISTS `users` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre de usuario único para el login',
  `password` VARCHAR(255) NOT NULL COMMENT 'Contraseña del usuario (debe ser almacenada como un hash seguro)',
  `first_name` VARCHAR(100) NOT NULL COMMENT 'Primer nombre del usuario',
  `middle_name` VARCHAR(100) COMMENT 'Segundo nombre del usuario (opcional)',
  `first_surname` VARCHAR(100) NOT NULL COMMENT 'Primer apellido del usuario',
  `second_surname` VARCHAR(100) NOT NULL COMMENT 'Segundo apellido del usuario',
  `email` VARCHAR(150) NOT NULL UNIQUE COMMENT 'Dirección de correo electrónico única del usuario',
  `nationality` VARCHAR(100) NOT NULL COMMENT 'Nacionalidad del usuario',
  `link_linkedin` VARCHAR(255) COMMENT 'Enlace al perfil de LinkedIn del usuario',
  `link_facebook` VARCHAR(255) COMMENT 'Enlace al perfil de Facebook del usuario',
  `my_description` TEXT COMMENT 'Descripción personal o biografía del usuario'
);

-- La tabla `users_profile` ha sido eliminada como solicitado.
-- Su información podría ser integrada directamente en la tabla `users` si es de uno a uno,
-- o si era puramente información adicional, podría gestionarse de otra forma.

-- Tabla de educaciones
CREATE TABLE IF NOT EXISTS `educations` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `user_id` BIGINT NOT NULL COMMENT 'Clave foránea que referencia al usuario al que pertenece esta educación',
  `name` VARCHAR(150) NOT NULL COMMENT 'Nombre del título o curso',
  `institution_name` VARCHAR(150) NOT NULL COMMENT 'Nombre de la institución educativa',
  `degree` VARCHAR(150) NOT NULL COMMENT 'Tipo de grado obtenido (e.g., Grado, Máster, Curso)',
  `start_date` DATE NOT NULL COMMENT 'Fecha de inicio de la educación',
  `end_date` DATE COMMENT 'Fecha de finalización de la educación (NULL si está en curso)',
  `description` TEXT COMMENT 'Descripción de los estudios o logros',
  `link_img` VARCHAR(255) COMMENT 'Enlace a una imagen o certificado relacionado con la educación',
  `is_visible` BOOLEAN DEFAULT TRUE COMMENT 'Indica si la educación es visible en el CV',
  `finalized` BOOLEAN DEFAULT FALSE COMMENT 'Indica si la educación ha sido finalizada',
  CONSTRAINT `fk_educations_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
);

-- Tabla de proyectos
CREATE TABLE IF NOT EXISTS `projects` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `user_id` BIGINT NOT NULL COMMENT 'Clave foránea que referencia al usuario creador del proyecto',
  `name` VARCHAR(150) NOT NULL COMMENT 'Nombre del proyecto',
  `description` TEXT COMMENT 'Descripción detallada del proyecto',
  `link_img` VARCHAR(255) COMMENT 'Enlace a una imagen representativa del proyecto',
  `link_github` VARCHAR(255) COMMENT 'Enlace al repositorio de GitHub del proyecto',
  `role` VARCHAR(100) COMMENT 'Rol desempeñado en el proyecto',
  `is_visible` BOOLEAN NOT NULL DEFAULT TRUE COMMENT 'Indica si el proyecto es visible en el CV',
  `category` VARCHAR(100) COMMENT 'Categoría del proyecto (e.g., Web, Mobile, Data Science)',
  `link_repository` VARCHAR(255) COMMENT 'Enlace a un repositorio general si no es GitHub',
  `start_date` DATE NOT NULL COMMENT 'Fecha de inicio del proyecto',
  `end_date` DATE COMMENT 'Fecha de finalización del proyecto (NULL si está en curso)',
  CONSTRAINT `fk_projects_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
);

-- Tabla de idiomas hablados
CREATE TABLE IF NOT EXISTS `languages` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre del idioma (e.g., Español, Inglés)',
  `level` VARCHAR(50) NOT NULL COMMENT 'Nivel de dominio del idioma (e.g., Nativo, B2, C1)',
  `is_native_language` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'Indica si es el idioma nativo del usuario'
);

-- Tabla de experiencia laboral
CREATE TABLE IF NOT EXISTS `job_experiences` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `user_id` BIGINT NOT NULL COMMENT 'Clave foránea que referencia al usuario con esta experiencia laboral',
  `name` VARCHAR(150) NOT NULL COMMENT 'Nombre de la empresa o entidad',
  `role` VARCHAR(100) NOT NULL COMMENT 'Cargo o rol desempeñado',
  `start_date` DATE NOT NULL COMMENT 'Fecha de inicio del empleo',
  `end_date` DATE COMMENT 'Fecha de finalización del empleo (NULL si es actual)',
  `description` TEXT COMMENT 'Descripción de las responsabilidades y logros',
  `is_visible` BOOLEAN DEFAULT TRUE COMMENT 'Indica si la experiencia laboral es visible en el CV',
  CONSTRAINT `fk_job_experiences_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
);

-- Tabla de habilidades duras (técnicas)
CREATE TABLE IF NOT EXISTS `hard_skills` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre de la habilidad dura (e.g., SQL, Java, Docker)'
);

-- Tabla de habilidades blandas
CREATE TABLE IF NOT EXISTS `soft_skills` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre de la habilidad blanda (e.g., Comunicación, Liderazgo)'
);

-- Tabla para lenguajes de programación y herramientas específicas
CREATE TABLE IF NOT EXISTS `programming_languages` (
  `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre del lenguaje o herramienta (e.g., Python, Pandas, React)',
  `type` VARCHAR(50) NOT NULL COMMENT 'Tipo: "language", "tool", "framework", "library", etc.'
);

-- --- TABLAS DE UNIÓN (Para relaciones muchos a muchos) ---

-- Relación N:M entre `users` y `languages` (idiomas hablados por un usuario)
CREATE TABLE IF NOT EXISTS `user_languages` (
  `user_id` BIGINT NOT NULL COMMENT 'ID del usuario',
  `language_id` BIGINT NOT NULL COMMENT 'ID del idioma',
  PRIMARY KEY (`user_id`, `language_id`), -- Clave primaria compuesta para asegurar unicidad
  CONSTRAINT `fk_user_languages_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_languages_language_id` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE
);

-- Relación N:M entre `educations` y `soft_skills`
CREATE TABLE IF NOT EXISTS `education_soft_skills` (
  `education_id` BIGINT NOT NULL COMMENT 'ID de la educación',
  `soft_skill_id` BIGINT NOT NULL COMMENT 'ID de la habilidad blanda',
  PRIMARY KEY (`education_id`, `soft_skill_id`),
  CONSTRAINT `fk_edu_soft_skills_edu_id` FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_edu_soft_skills_soft_id` FOREIGN KEY (`soft_skill_id`) REFERENCES `soft_skills` (`id`) ON DELETE CASCADE
);

-- Relación N:M entre `educations` y `hard_skills`
CREATE TABLE IF NOT EXISTS `education_hard_skills` (
  `education_id` BIGINT NOT NULL COMMENT 'ID de la educación',
  `hard_skill_id` BIGINT NOT NULL COMMENT 'ID de la habilidad dura',
  PRIMARY KEY (`education_id`, `hard_skill_id`),
  CONSTRAINT `fk_edu_hard_skills_edu_id` FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_edu_hard_skills_hard_id` FOREIGN KEY (`hard_skill_id`) REFERENCES `hard_skills` (`id`) ON DELETE CASCADE
);

-- Relación N:M entre `educations` y `programming_languages`
CREATE TABLE IF NOT EXISTS `education_programming_languages` (
  `education_id` BIGINT NOT NULL COMMENT 'ID de la educación',
  `programming_language_id` BIGINT NOT NULL COMMENT 'ID del lenguaje de programación/herramienta',
  PRIMARY KEY (`education_id`, `programming_language_id`),
  CONSTRAINT `fk_edu_prog_lang_edu_id` FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_edu_prog_lang_prog_id` FOREIGN KEY (`programming_language_id`) REFERENCES `programming_languages` (`id`) ON DELETE CASCADE
);

-- Relación N:M entre `projects` y `soft_skills`
CREATE TABLE IF NOT EXISTS `project_soft_skills` (
  `project_id` BIGINT NOT NULL COMMENT 'ID del proyecto',
  `soft_skill_id` BIGINT NOT NULL COMMENT 'ID de la habilidad blanda',
  PRIMARY KEY (`project_id`, `soft_skill_id`),
  CONSTRAINT `fk_proj_soft_skills_proj_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_proj_soft_skills_soft_id` FOREIGN KEY (`soft_skill_id`) REFERENCES `soft_skills` (`id`) ON DELETE CASCADE
);

-- Relación N:M entre `projects` y `hard_skills`
CREATE TABLE IF NOT EXISTS `project_hard_skills` (
  `project_id` BIGINT NOT NULL COMMENT 'ID del proyecto',
  `hard_skill_id` BIGINT NOT NULL COMMENT 'ID de la habilidad dura',
  PRIMARY KEY (`project_id`, `hard_skill_id`),
  CONSTRAINT `fk_proj_hard_skills_proj_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_proj_hard_skills_hard_id` FOREIGN KEY (`hard_skill_id`) REFERENCES `hard_skills` (`id`) ON DELETE CASCADE
);

-- Relación N:M entre `projects` y `programming_languages`
CREATE TABLE IF NOT EXISTS `project_programming_languages` (
  `project_id` BIGINT NOT NULL COMMENT 'ID del proyecto',
  `programming_language_id` BIGINT NOT NULL COMMENT 'ID del lenguaje de programación/herramienta',
  PRIMARY KEY (`project_id`, `programming_language_id`),
  CONSTRAINT `fk_proj_prog_lang_proj_id` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_proj_prog_lang_prog_id` FOREIGN KEY (`programming_language_id`) REFERENCES `programming_languages` (`id`) ON DELETE CASCADE
);


ALTER TABLE `programming_languages`
ADD COLUMN `extension` VARCHAR(20) COMMENT 'Extensión de archivo asociada (e.g., .py, .js, .cpp)';
