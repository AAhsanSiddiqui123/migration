-- Revert: schemas/dashboard_public/tables/question_types/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".question_types DROP COLUMN created_at;
ALTER TABLE "dashboard_public".question_types DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".question_types;

COMMIT;  

