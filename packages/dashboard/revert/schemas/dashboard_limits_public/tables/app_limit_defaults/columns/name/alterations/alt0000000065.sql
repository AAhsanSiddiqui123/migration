-- Revert: schemas/dashboard_limits_public/tables/app_limit_defaults/columns/name/alterations/alt0000000065 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".app_limit_defaults 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

