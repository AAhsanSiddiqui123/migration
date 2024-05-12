-- Revert: schemas/dashboard_public/tables/track_types/alterations/alt0000001675 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

