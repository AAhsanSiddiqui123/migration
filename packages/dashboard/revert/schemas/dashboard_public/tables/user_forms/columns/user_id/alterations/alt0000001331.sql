-- Revert: schemas/dashboard_public/tables/user_forms/columns/user_id/alterations/alt0000001331 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

