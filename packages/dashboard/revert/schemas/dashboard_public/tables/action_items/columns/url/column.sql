-- Revert: schemas/dashboard_public/tables/action_items/columns/url/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN url;
COMMIT;  

