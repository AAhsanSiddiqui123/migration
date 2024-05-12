-- Revert: schemas/dashboard_public/tables/form_questions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".form_questions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".form_questions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".form_questions;


COMMIT;  

