-- Revert: schemas/dashboard_public/tables/onboarding_questions/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN created_at;
ALTER TABLE "dashboard_public".onboarding_questions DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".onboarding_questions;

COMMIT;  

