-- Revert: schemas/dashboard_public/tables/objects/columns/track_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN track_id;
COMMIT;  

