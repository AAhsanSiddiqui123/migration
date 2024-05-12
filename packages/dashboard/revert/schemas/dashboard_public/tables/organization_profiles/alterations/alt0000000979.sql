-- Revert: schemas/dashboard_public/tables/organization_profiles/alterations/alt0000000979 from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profiles
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

