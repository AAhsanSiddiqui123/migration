-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/table from pg

BEGIN;
DROP TABLE "dashboard_memberships_public".group_membership_defaults;
COMMIT;  

