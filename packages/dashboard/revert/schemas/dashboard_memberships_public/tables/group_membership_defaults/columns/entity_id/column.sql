-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults DROP COLUMN entity_id;
COMMIT;  

