-- Revert: schemas/dashboard_public/tables/related_actions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions DROP COLUMN owner_id;
COMMIT;  

