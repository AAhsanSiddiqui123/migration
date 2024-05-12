-- Deploy: schemas/dashboard_invites_public/tables/member_invites/columns/id/alterations/alt0000000492 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_invites/columns/id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
