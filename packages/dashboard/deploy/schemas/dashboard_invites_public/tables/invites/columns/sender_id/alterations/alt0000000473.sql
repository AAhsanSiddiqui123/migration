-- Deploy: schemas/dashboard_invites_public/tables/invites/columns/sender_id/alterations/alt0000000473 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_invites_public/schema
-- requires: schemas/dashboard_invites_public/tables/invites/table
-- requires: schemas/dashboard_invites_public/tables/invites/columns/sender_id/column

BEGIN;

ALTER TABLE "dashboard_invites_public".invites 
    ALTER COLUMN sender_id SET NOT NULL;
COMMIT;
