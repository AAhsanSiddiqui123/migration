-- Revert: schemas/dashboard_public/tables/user_action_verifications/columns/notes/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_verifications DROP COLUMN notes;
COMMIT;  

