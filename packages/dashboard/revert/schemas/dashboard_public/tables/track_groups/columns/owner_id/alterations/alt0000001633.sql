-- Revert: schemas/dashboard_public/tables/track_groups/columns/owner_id/alterations/alt0000001633 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

