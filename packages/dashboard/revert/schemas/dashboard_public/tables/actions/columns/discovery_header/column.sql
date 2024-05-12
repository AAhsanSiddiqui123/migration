-- Revert: schemas/dashboard_public/tables/actions/columns/discovery_header/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN discovery_header;
COMMIT;  

