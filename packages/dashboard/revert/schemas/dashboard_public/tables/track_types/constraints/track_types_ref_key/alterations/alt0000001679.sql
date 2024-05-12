-- Revert: schemas/dashboard_public/tables/track_types/constraints/track_types_ref_key/alterations/alt0000001679 from pg

BEGIN;
COMMENT ON CONSTRAINT track_types_ref_key ON "dashboard_public".track_types IS NULL;
COMMIT;  

