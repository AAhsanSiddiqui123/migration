-- Deploy: schemas/dashboard_public/tables/track_groups/constraints/track_groups_owner_id_fkey/alterations/alt0000001634 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/constraints/track_groups_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT track_groups_owner_id_fkey ON "dashboard_public".track_groups IS E'@omit manyToMany';
COMMIT;
