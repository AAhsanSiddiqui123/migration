-- Deploy: schemas/dashboard_invites_public/tables/group_invites/columns/sender_id/alterations/alt0000000515 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/group_invites/table
-- requires: schemas/dashboard_invites_public/tables/group_invites/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".group_invites 
    ALTER COLUMN sender_id SET NOT NULL;
COMMIT;
