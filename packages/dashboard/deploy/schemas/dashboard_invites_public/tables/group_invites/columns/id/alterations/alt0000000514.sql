-- Deploy: schemas/dashboard_invites_public/tables/group_invites/columns/id/alterations/alt0000000514 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
