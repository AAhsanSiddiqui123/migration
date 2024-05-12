-- Revert: schemas/dashboard_public/tables/user_answers/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_answers DROP COLUMN created_at;
ALTER TABLE "dashboard_public".user_answers DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".user_answers;

COMMIT;  

