-- Deploy: schemas/dashboard_public/tables/track_actions/constraints/track_actions_owner_id_fkey/alterations/alt0000000946 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/constraints/track_actions_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT track_actions_owner_id_fkey ON "dashboard_public".track_actions IS E'@omit manyToMany';
COMMIT;
