-- Deploy: schemas/dashboard_memberships_public/tables/memberships/columns/actor_id/alterations/alt0000000234 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table
-- requires: schemas/dashboard_memberships_public/tables/memberships/columns/actor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".memberships 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
