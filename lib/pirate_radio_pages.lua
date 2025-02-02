-- code to update/draw the pages (screens)


page_scroll = function (delta)
  pages:set_index_delta(util.clamp(delta, -1, 1), false)
end

local draw_main_nav = function()
  -- navigation marks
  screen.level(15)
  for i=1,pages.num_pages,1 do
    local level = i == pages.index and 15 or 5
    screen.level(level)
    local x = (8*i)
    local y = SCREEN_SIZE.y-3
    screen.move(x+2,y)
    screen.circle(x,y,3)
    screen.stroke()
    
  end
end

local update_pages = function()
  if initializing == false then
    screen.clear()
    if pages.index == 1 then
      tuner:redraw()
    elseif pages.index == 2 then
      eq:redraw()      
    elseif pages.index == 3 then
      
    elseif pages.index == 4 then
      
    elseif pages.index == 5 then
      
    end

    local menu_status = norns.menu.status()
    
    if menu_status == false then
      draw_main_nav()
    end
    screen.update()
  end
end

return {
  update_pages = update_pages
}
