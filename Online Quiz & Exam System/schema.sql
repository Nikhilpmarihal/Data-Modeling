CREATE TABLE "students" (
	"student_id" INTEGER NOT NULL UNIQUE,
	"email" VARCHAR(255) NOT NULL UNIQUE,
	"name" VARCHAR(255) NOT NULL,
	"enrollment_date" TIMESTAMP NOT NULL,
	"is_active" BOOLEAN NOT NULL,
	PRIMARY KEY("student_id")
);

CREATE TABLE "courses" (
	"course_id" INTEGER NOT NULL UNIQUE,
	"course_name" VARCHAR(255) NOT NULL,
	"description" TEXT,
	"passing_threshold" DECIMAL(5,2) NOT NULL,
	"is_active" BOOLEAN NOT NULL,
	"created_at" TIMESTAMP NOT NULL,
	PRIMARY KEY("course_id")
);

CREATE TABLE "quizzes" (
	"quiz_id" INTEGER NOT NULL UNIQUE,
	"course_id" INTEGER NOT NULL,
	"quiz_name" VARCHAR(255) NOT NULL,
	"description" TEXT,
	"time_limit_minutes" INTEGER,
	"max_attempts" INTEGER,
	"passing_score" DECIMAL(5,2) NOT NULL,
	"is_active" BOOLEAN NOT NULL,
	"created_at" TIMESTAMP NOT NULL,
	PRIMARY KEY("quiz_id")
);

CREATE TABLE "questions" (
	"question_id" INTEGER NOT NULL UNIQUE,
	"quiz_id" INTEGER NOT NULL,
	"question_text" TEXT NOT NULL,
	"question_type" VARCHAR(50) NOT NULL,
	"points" DECIMAL(5,2) NOT NULL,
	"correct_answer" TEXT,
	"order_in_quiz" INTEGER NOT NULL,
	PRIMARY KEY("question_id")
);

CREATE TABLE "answer_choices" (
	"choice_id" INTEGER NOT NULL UNIQUE,
	"question_id" INTEGER NOT NULL,
	"choice_text" TEXT NOT NULL,
	"is_correct" BOOLEAN NOT NULL,
	"order_in_question" INTEGER NOT NULL,
	PRIMARY KEY("choice_id")
);

CREATE TABLE "quiz_attempts" (
	"attempt_id" INTEGER NOT NULL UNIQUE,
	"student_id" INTEGER NOT NULL,
	"quiz_id" INTEGER NOT NULL,
	"started_at" TIMESTAMP NOT NULL,
	"submitted_at" TIMESTAMP,
	"score" DECIMAL(5,2),
	"passed" BOOLEAN,
	"attempt_number" INTEGER NOT NULL,
	PRIMARY KEY("attempt_id")
);

CREATE TABLE "student_responses" (
	"response_id" INTEGER NOT NULL UNIQUE,
	"attempt_id" INTEGER NOT NULL,
	"question_id" INTEGER NOT NULL,
	"selected_choice_id" INTEGER,
	"text_answer" TEXT,
	"is_correct" BOOLEAN,
	"points_earned" DECIMAL(5,2) NOT NULL,
	PRIMARY KEY("response_id")
);

ALTER TABLE "quizzes"
ADD FOREIGN KEY("course_id") REFERENCES "courses"("course_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "questions"
ADD FOREIGN KEY("quiz_id") REFERENCES "quizzes"("quiz_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "answer_choices"
ADD FOREIGN KEY("question_id") REFERENCES "questions"("question_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "quiz_attempts"
ADD FOREIGN KEY("student_id") REFERENCES "students"("student_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "quiz_attempts"
ADD FOREIGN KEY("quiz_id") REFERENCES "quizzes"("quiz_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "student_responses"
ADD FOREIGN KEY("attempt_id") REFERENCES "quiz_attempts"("attempt_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "student_responses"
ADD FOREIGN KEY("question_id") REFERENCES "questions"("question_id")
ON UPDATE NO ACTION ON DELETE CASCADE;

ALTER TABLE "student_responses"
ADD FOREIGN KEY("selected_choice_id") REFERENCES "answer_choices"("choice_id")
ON UPDATE NO ACTION ON DELETE SET NULL;

-- Indexes on foreign key columns
CREATE INDEX "idx_quizzes_course_id" ON "quizzes"("course_id");
CREATE INDEX "idx_questions_quiz_id" ON "questions"("quiz_id");
CREATE INDEX "idx_answer_choices_question_id" ON "answer_choices"("question_id");
CREATE INDEX "idx_quiz_attempts_student_id" ON "quiz_attempts"("student_id");
CREATE INDEX "idx_quiz_attempts_quiz_id" ON "quiz_attempts"("quiz_id");
CREATE INDEX "idx_student_responses_attempt_id" ON "student_responses"("attempt_id");
CREATE INDEX "idx_student_responses_question_id" ON "student_responses"("question_id");
CREATE INDEX "idx_student_responses_selected_choice_id" ON "student_responses"("selected_choice_id");