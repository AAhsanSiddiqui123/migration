-- Revert: schemas/dashboard_public/tables/user_tracks/alterations/alt0000000950 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_tracks
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

