-- Revert: schemas/dashboard_memberships_public/tables/members/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".members DROP COLUMN entity_id;
COMMIT;  

