-- Revert: schemas/dashboard_public/tables/question_template_language_variations/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".question_template_language_variations DROP COLUMN created_at;
ALTER TABLE "dashboard_public".question_template_language_variations DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".question_template_language_variations;

COMMIT;  

