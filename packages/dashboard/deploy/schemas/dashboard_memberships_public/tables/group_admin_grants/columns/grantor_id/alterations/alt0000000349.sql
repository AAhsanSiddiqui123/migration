-- Deploy: schemas/dashboard_memberships_public/tables/group_admin_grants/columns/grantor_id/alterations/alt0000000349 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_admin_grants/table
-- requires: schemas/dashboard_memberships_public/tables/group_admin_grants/columns/grantor_id/column

BEGIN;

ALTER TABLE "dashboard_memberships_public".group_admin_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
