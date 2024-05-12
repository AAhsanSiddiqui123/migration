-- Deploy: schemas/dashboard_public/tables/tracks/policies/auth_ins_create_track_check/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;
CREATE POLICY auth_ins_create_track_check ON "dashboard_public".tracks AS RESTRICTIVE FOR INSERT TO authenticated WITH CHECK ( owner_id IN (SELECT acl.actor_id FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = owner_id AND (acl.permissions & '00000000000000000000100000000000') = '00000000000000000000100000000000') );
COMMIT;
