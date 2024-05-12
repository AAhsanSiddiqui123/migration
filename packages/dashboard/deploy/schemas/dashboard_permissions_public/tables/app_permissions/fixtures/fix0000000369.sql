-- Deploy: schemas/dashboard_permissions_public/tables/app_permissions/fixtures/fix0000000369 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permissions/table

BEGIN;
INSERT INTO "dashboard_permissions_public".app_permissions (bitnum, name, description) VALUES (12, 'create_actions', 'Create actions within the app.'), (13, 'approve_actions', 'Approve actions within the app.'), (14, 'verify_actions', 'Verify actions within the app.'), (15, 'admin_rewards', 'Manage rewards within the app.'), (16, 'create_posts', 'Create posts within the app.'), (17, 'admin_posts', 'Manage posts within the app.'), (18, 'admin_questions', 'Manage questions within the app.');
COMMIT;
