-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_99990_group_memberships_owners_chk from pg

BEGIN;
DROP TRIGGER _99990_group_memberships_owners_chk ON "dashboard_memberships_public".group_memberships;
COMMIT;  

