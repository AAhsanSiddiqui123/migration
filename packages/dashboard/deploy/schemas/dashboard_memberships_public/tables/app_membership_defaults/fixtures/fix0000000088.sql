-- Deploy: schemas/dashboard_memberships_public/tables/app_membership_defaults/fixtures/fix0000000088 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_membership_defaults/table

BEGIN;
INSERT INTO "dashboard_memberships_public".app_membership_defaults (is_verified, is_approved) VALUES (TRUE, TRUE);
COMMIT;
