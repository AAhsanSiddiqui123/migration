-- Revert: schemas/dashboard_public/tables/user_pass_actions/columns/owner_id/alterations/alt0000000997 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

