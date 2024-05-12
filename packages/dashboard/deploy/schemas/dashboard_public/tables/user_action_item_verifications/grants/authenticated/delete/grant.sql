-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".user_action_item_verifications TO authenticated;
COMMIT;
