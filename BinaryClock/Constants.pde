// CONFIGURATION //

final boolean IS_12_HOUR    = false;
final boolean SHOW_CASIDOTS = true;

final float ACTIVE_ALPHA = 1;
final float INACTIVE_ALPHA = .25;

final color BG     = color(235        );
final color AMPM   = color(255,165,  0);
final color YEAR   = color(229, 57, 53);
final color MONTH  = color(251,140,  0);
final color DAY    = color(253,216, 53);
final color HOUR   = color( 67,160, 71);
final color MINUTE = color(  3,155,229);
final color SECOND = color( 94, 53,177);

// END CONFIGURATION //

final color YEAR_ACTIVE     = lerpColor(BG, YEAR  , ACTIVE_ALPHA);
final color MONTH_ACTIVE    = lerpColor(BG, MONTH , ACTIVE_ALPHA);
final color DAY_ACTIVE      = lerpColor(BG, DAY   , ACTIVE_ALPHA);
final color HOUR_ACTIVE     = lerpColor(BG, HOUR  , ACTIVE_ALPHA);
final color MINUTE_ACTIVE   = lerpColor(BG, MINUTE, ACTIVE_ALPHA);
final color SECOND_ACTIVE   = lerpColor(BG, SECOND, ACTIVE_ALPHA);
final color PM_ACTIVE       = lerpColor(BG, AMPM  , ACTIVE_ALPHA);
final color YEAR_INACTIVE   = lerpColor(BG, YEAR  , INACTIVE_ALPHA);
final color MONTH_INACTIVE  = lerpColor(BG, MONTH , INACTIVE_ALPHA);
final color DAY_INACTIVE    = lerpColor(BG, DAY   , INACTIVE_ALPHA);
final color HOUR_INACTIVE   = lerpColor(BG, HOUR  , INACTIVE_ALPHA);
final color MINUTE_INACTIVE = lerpColor(BG, MINUTE, INACTIVE_ALPHA);
final color SECOND_INACTIVE = lerpColor(BG, SECOND, INACTIVE_ALPHA);
final color PM_INACTIVE     = lerpColor(BG, AMPM  , INACTIVE_ALPHA);
