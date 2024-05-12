-- Revert: schemas/dashboard_public/tables/track_groups/columns/id/alterations/alt0000001629 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

