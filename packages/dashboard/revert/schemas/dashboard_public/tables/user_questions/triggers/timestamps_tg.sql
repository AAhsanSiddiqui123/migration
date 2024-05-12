-- Revert: schemas/dashboard_public/tables/user_questions/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN created_at;
ALTER TABLE "dashboard_public".user_questions DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".user_questions;

COMMIT;  

