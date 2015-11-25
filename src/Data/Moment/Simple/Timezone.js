/* global exports */
'use strict';

// module Data.Moment.Simple.Timezone

var momentTimezone = require('moment-timezone-with-data');

exports.tz_ = function (m, tz) {
  return m.tz(tz);
}

exports.tzFormat_ = function (m, tz, fmt) {
  return m.tz(tz).format(fmt);
}
