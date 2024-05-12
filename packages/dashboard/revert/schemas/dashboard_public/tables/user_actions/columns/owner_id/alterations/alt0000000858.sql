-- Revert: schemas/dashboard_public/tables/user_actions/columns/owner_id/alterations/alt0000000858 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

