-- Revert: schemas/dashboard_public/tables/organization_profile_variations/alterations/alt0000001393 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

