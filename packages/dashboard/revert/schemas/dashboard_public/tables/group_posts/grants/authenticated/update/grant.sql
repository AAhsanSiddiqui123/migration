-- Revert: schemas/dashboard_public/tables/group_posts/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".group_posts FROM authenticated;
COMMIT;  

