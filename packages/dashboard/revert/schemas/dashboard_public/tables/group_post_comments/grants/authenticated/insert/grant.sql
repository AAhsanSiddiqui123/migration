-- Revert: schemas/dashboard_public/tables/group_post_comments/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".group_post_comments FROM authenticated;
COMMIT;  

