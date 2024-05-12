-- Revert: schemas/dashboard_memberships_public/tables/group_memberships/triggers/_00010_group_memberships_itrg from pg

BEGIN;
DROP TRIGGER _00010_group_memberships_itrg ON "dashboard_memberships_public".group_memberships;
COMMIT;  

