-- Deploy: schemas/dashboard_invites_public/tables/member_invites/columns/entity_id/alterations/alt0000000507 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/member_invites/table
-- requires: schemas/dashboard_invites_public/tables/member_invites/columns/entity_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".member_invites 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
