-- Revert: schemas/dashboard_public/tables/user_saved_actions/columns/id/alterations/alt0000001000 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_saved_actions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

