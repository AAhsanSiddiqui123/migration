-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/alterations/alt0000000115 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_owner_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

