-- Revert: schemas/dashboard_public/tables/group_posts/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".group_posts FROM authenticated;
COMMIT;  

