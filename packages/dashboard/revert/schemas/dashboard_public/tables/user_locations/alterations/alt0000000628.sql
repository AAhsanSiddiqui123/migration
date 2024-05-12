-- Revert: schemas/dashboard_public/tables/user_locations/alterations/alt0000000628 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_locations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

