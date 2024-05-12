-- Revert: schemas/dashboard_public/tables/tracks/alterations/alt0000000926 from pg

BEGIN;


ALTER TABLE "dashboard_public".tracks
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

