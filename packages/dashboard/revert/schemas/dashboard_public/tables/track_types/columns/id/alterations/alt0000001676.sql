-- Revert: schemas/dashboard_public/tables/track_types/columns/id/alterations/alt0000001676 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

