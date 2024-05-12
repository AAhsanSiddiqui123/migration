-- Revert: schemas/dashboard_public/tables/user_forms/columns/owner_id/alterations/alt0000001339 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

