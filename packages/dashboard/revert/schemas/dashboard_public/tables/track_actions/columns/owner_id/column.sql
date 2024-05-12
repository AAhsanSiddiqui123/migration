-- Revert: schemas/dashboard_public/tables/track_actions/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".track_actions DROP COLUMN owner_id;
COMMIT;  

