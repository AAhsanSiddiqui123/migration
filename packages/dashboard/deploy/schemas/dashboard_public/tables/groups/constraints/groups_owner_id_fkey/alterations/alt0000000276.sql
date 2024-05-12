-- Deploy: schemas/dashboard_public/tables/groups/constraints/groups_owner_id_fkey/alterations/alt0000000276 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/constraints/groups_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT groups_owner_id_fkey ON "dashboard_public".groups IS NULL;
COMMIT;
