-- Revert: schemas/dashboard_public/tables/user_questions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_questions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_questions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_questions;


COMMIT;  

