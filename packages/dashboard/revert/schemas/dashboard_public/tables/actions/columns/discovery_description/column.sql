-- Revert: schemas/dashboard_public/tables/actions/columns/discovery_description/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN discovery_description;
COMMIT;  

