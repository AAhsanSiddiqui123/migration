-- Revert: schemas/dashboard_public/tables/track_language_variations/alterations/alt0000001415 from pg

BEGIN;


ALTER TABLE "dashboard_public".track_language_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

