-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/_99990_memberships_owners_chk from pg

BEGIN;
DROP TRIGGER _99990_memberships_owners_chk ON "dashboard_memberships_public".memberships;
COMMIT;  

