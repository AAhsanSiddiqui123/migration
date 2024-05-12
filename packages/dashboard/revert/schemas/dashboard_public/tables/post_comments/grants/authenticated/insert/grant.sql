-- Revert: schemas/dashboard_public/tables/post_comments/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".post_comments FROM authenticated;
COMMIT;  

