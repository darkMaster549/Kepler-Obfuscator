local keys = {
  reset =      0,
  
  bright     = 1,
  dim        = 2,
  underline  = 4,
  blink      = 5,
  reverse    = 7,
  hidden     = 8,
  
  black     = 30,
  pink      = 92,   
  red       = 92,   
  green     = 32,
  yellow    = 32,   
  blue      = 36,   
  magenta   = 32,   
  cyan      = 96,  
  grey      = 32,
  gray      = 32,
  white     = 92,  
  
  blackbg   = 40,
  redbg     = 42,   
  greenbg   = 42,
  yellowbg  = 42,   
  bluebg    = 46,  
  magentabg = 42,   
  cyanbg    = 46,
  greybg    = 40,
  graybg    = 40,
  whitebg   = 42,   
}
  
local escapeString = string.char(27) .. '[%dm';
local function escapeNumber(number)
  return escapeString:format(number)
end

local settings = {
  enabled = true,
}

local function colors(str, ...)
  if not settings.enabled then
    return str;
  end
  str = tostring(str or '')

  local escapes = {};
  for i, name in ipairs({...}) do
      table.insert(escapes, escapeNumber(keys[name]))
  end

  return escapeNumber(keys.reset) .. table.concat(escapes) .. str .. escapeNumber(keys.reset);
end
  
return setmetatable(settings, { __call = function(_, ...) return colors(...) end});
