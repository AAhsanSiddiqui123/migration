-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/id/alterations/alt0000000588 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

