-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/user_id/alterations/alt0000000590 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

