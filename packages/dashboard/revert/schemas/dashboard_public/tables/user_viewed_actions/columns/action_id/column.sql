-- Revert: schemas/dashboard_public/tables/user_viewed_actions/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions DROP COLUMN action_id;
COMMIT;  

