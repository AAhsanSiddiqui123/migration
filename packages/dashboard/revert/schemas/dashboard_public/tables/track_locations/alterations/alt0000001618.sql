-- Revert: schemas/dashboard_public/tables/track_locations/alterations/alt0000001618 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

