-- Revert: schemas/dashboard_status_public/tables/app_levels/columns/name/alterations/alt0000000163 from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_levels 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

