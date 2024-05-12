-- Deploy: schemas/dashboard_permissions_public/tables/membership_permissions/fixtures/fix0000000370 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/membership_permissions/table

BEGIN;
INSERT INTO "dashboard_permissions_public".membership_permissions (bitnum, name, description) VALUES (14, 'create_actions', 'Create actions within the organization'), (15, 'approve_actions', 'Approve actions within the organization'), (16, 'admin_actions', 'Create actions within the organization'), (17, 'verify_actions', 'Verify actions within the organization'), (18, 'admin_rewards', 'Manage rewards within the organization'), (19, 'create_posts', 'Create posts for the organization'), (20, 'admin_posts', 'Manage posts for the organization'), (21, 'admin_questions', 'Manage questions for the organization');
COMMIT;
