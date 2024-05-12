-- Revert: schemas/dashboard_public/tables/user_location_types/alterations/alt0000001559 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_location_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

