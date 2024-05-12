-- Revert: schemas/dashboard_public/tables/objects/constraints/objects_track_id_fkey/alterations/alt0000001682 from pg

BEGIN;
COMMENT ON CONSTRAINT objects_track_id_fkey ON "dashboard_public".objects IS NULL;
COMMIT;  

