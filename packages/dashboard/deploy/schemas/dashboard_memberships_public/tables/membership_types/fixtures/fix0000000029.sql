-- Deploy: schemas/dashboard_memberships_public/tables/membership_types/fixtures/fix0000000029 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/membership_types/table

BEGIN;
INSERT INTO "dashboard_memberships_public".membership_types (id, name, description, prefix) VALUES (1, 'App Member', 'Memberships to the app.', 'app'), (2, 'Organization Member', 'Membership to an organization.', 'membership'), (3, 'Group Member', 'User''s membership to a group.', 'group');
COMMIT;
