-- Revert: schemas/dashboard_public/tables/group_posts/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".group_posts FROM authenticated;
COMMIT;  

