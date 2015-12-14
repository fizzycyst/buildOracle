CREATE PROFILE user_profile LIMIT
  FAILED_LOGIN_ATTEMPTS 6  -- Account locked after 6 failed logins.
  PASSWORD_LOCK_TIME 5     -- Number of days account is locked for. UNLIMITED required explicit unlock by DBA.
  PASSWORD_LIFE_TIME UNLIMITED    -- Password expires after 90 days.
  PASSWORD_GRACE_TIME 3    -- Grace period for password expiration.
  PASSWORD_REUSE_TIME 120  -- Number of days until a specific password can be reused. UNLIMITED means never.
  PASSWORD_REUSE_MAX 10    -- The number of changes required before a password can be reused. UNLIMITED means never.
;

CREATE USER developer IDENTIFIED BY developer PROFILE user_profile;

quit;
/