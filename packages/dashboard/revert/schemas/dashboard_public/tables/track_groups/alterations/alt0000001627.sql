-- Revert: schemas/dashboard_public/tables/track_groups/alterations/alt0000001627 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_groups
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

