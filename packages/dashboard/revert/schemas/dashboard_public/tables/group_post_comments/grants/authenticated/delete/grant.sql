-- Revert: schemas/dashboard_public/tables/group_post_comments/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".group_post_comments FROM authenticated;
COMMIT;  

