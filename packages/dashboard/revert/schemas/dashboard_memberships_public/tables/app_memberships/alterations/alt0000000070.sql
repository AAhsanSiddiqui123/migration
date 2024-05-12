-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/alterations/alt0000000070 from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

