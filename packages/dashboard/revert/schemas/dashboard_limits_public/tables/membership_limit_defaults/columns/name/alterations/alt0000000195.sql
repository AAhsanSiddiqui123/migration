-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/name/alterations/alt0000000195 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limit_defaults 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

