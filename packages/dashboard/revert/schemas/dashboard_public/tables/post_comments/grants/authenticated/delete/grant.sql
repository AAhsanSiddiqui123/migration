-- Revert: schemas/dashboard_public/tables/post_comments/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".post_comments FROM authenticated;
COMMIT;  

