-- Revert: schemas/dashboard_public/tables/post_comments/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".post_comments FROM authenticated;
COMMIT;  

