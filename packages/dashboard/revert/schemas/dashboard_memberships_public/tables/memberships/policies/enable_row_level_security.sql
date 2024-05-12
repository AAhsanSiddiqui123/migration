-- Revert: schemas/dashboard_memberships_public/tables/memberships/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

