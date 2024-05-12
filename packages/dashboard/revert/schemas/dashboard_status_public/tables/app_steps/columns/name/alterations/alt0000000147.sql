-- Revert: schemas/dashboard_status_public/tables/app_steps/columns/name/alterations/alt0000000147 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_steps 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

