-- Revert: schemas/dashboard_limits_public/tables/membership_limits/columns/id/alterations/alt0000000188 from pg

BEGIN;


ALTER TABLE "dashboard_limits_public".membership_limits 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

