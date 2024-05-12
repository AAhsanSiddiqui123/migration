-- Revert: schemas/dashboard_public/tables/onboarding_questions/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN created_by;
ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".onboarding_questions;


COMMIT;  

