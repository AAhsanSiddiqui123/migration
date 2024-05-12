-- Revert: schemas/dashboard_public/tables/group_posts/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".group_posts FROM authenticated;
COMMIT;  

