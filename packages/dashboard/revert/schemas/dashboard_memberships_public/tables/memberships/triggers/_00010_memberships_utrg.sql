-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/_00010_memberships_utrg from pg

BEGIN;
DROP TRIGGER _00010_memberships_utrg ON "dashboard_memberships_public".memberships;
COMMIT;  

