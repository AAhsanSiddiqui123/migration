-- Revert: schemas/dashboard_memberships_public/tables/group_members/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_members DROP COLUMN entity_id;
COMMIT;  

