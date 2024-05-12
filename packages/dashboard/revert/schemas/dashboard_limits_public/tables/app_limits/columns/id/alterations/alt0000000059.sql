-- Revert: schemas/dashboard_limits_public/tables/app_limits/columns/id/alterations/alt0000000059 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limits 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

