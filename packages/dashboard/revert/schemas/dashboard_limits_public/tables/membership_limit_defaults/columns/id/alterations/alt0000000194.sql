-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/columns/id/alterations/alt0000000194 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limit_defaults 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

