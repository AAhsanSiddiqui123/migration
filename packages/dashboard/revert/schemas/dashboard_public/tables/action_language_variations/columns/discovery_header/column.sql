-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/discovery_header/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN discovery_header;
COMMIT;  

