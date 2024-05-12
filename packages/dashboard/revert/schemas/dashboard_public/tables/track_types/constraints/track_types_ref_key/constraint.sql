-- Revert: schemas/dashboard_public/tables/track_types/constraints/track_types_ref_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types 
    DROP CONSTRAINT track_types_ref_key;

COMMIT;  

