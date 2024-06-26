-- Deploy: schemas/dashboard_permissions_public/alterations/alt0000000132 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_permissions_public/schema
-- requires: schemas/dashboard_permissions_public/tables/app_permission_defaults/table
-- requires: schemas/dashboard_permissions_public/procedures/app_permissions_get_mask_by_names/procedure

BEGIN;

INSERT INTO "dashboard_permissions_public".app_permission_defaults 
 (permissions)
 VALUES 
 (
    "dashboard_permissions_public".app_permissions_get_mask_by_names(
        ARRAY['invites_approved', 'create_invites']::citext[]
    )
 );
COMMIT;
