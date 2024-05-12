-- Revert: schemas/dashboard_public/tables/user_action_reactions/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_reactions DROP COLUMN id;
COMMIT;  

