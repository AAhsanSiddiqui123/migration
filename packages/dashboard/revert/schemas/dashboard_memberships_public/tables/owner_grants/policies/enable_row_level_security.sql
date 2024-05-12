-- Revert: schemas/dashboard_memberships_public/tables/owner_grants/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".owner_grants
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

