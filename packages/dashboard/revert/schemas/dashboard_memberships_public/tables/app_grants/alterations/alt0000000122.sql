-- Revert: schemas/dashboard_memberships_public/tables/app_grants/alterations/alt0000000122 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

