-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/reacter_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions DROP COLUMN reacter_id;
COMMIT;  

