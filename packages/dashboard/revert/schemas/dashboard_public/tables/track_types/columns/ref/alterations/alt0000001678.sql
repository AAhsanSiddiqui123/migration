-- Revert: schemas/dashboard_public/tables/track_types/columns/ref/alterations/alt0000001678 from pg

BEGIN;
ALTER TABLE "dashboard_public".track_types DROP CONSTRAINT track_types_ref_chk;
COMMIT;  

