-- Deploy: schemas/dashboard_invites_public/tables/group_invites/columns/entity_id/alterations/alt0000000529 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
