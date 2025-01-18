-- Gen Z Translator
-- Demonstrates keyed tables

local genZ = {
  ["slay"] = "to do something exceptionally well or to dominate.",
  ["no cap"] = "for real or not lying.",
  ["bet"] = "agreement or confirmation, like 'okay' or 'sure'.",
  ["sus"] = "suspicious or questionable behavior.",
  ["vibe check"] = "an assessment of someone's energy or attitude.",
  ["bussin"] = "extremely good or delicious.",
  ["yeet"] = "to throw something with force, often in excitement.",
  ["extra"] = "over the top or dramatic behavior.",
  ["drip"] = "stylish or trendy appearance, especially with clothing.",
  ["periodt"] = "emphasis added to a point being made; end of discussion.",
  ["fam"] = "close friends or family members.",
  ["lit"] = "exciting, fun, or amazing.",
  ["salty"] = "bitter or annoyed about something.",
  ["lowkey"] = "quietly or subtly.",
  ["highkey"] = "openly or obviously.",
  ["snatched"] = "looking great, especially in appearance.",
  ["spill the tea"] = "share gossip or information.",
  ["shook"] = "shocked or surprised.",
  ["stan"] = "to strongly support or obsess over someone or something.",
  ["fire"] = "amazing or very cool.",
  ["ghost"] = "to cut off communication without warning.",
  ["on fleek"] = "perfectly done or looking great.",
  ["big yikes"] = "a more intense version of 'yikes', expressing embarrassment.",
  ["sending me"] = "making me laugh a lot.",
  ["main character"] = "someone acting as if they are the center of attention.",
  ["hits different"] = "feels unique or special compared to others.",
}

local choice

while choice ~= 0 do
  print([[  
  Gen Z Phrase Translator

  0 - Quit
  1 - Look up a Gen Z phrase
  2 - Add a Gen Z phrase
  3 - Redefine a Gen Z phrase
  4 - Delete a Gen Z phrase
  ]])

  io.write("Choice: ")
  choice = tonumber(io.read())
  print()

  if choice == 0 then -- exit
    print("Goodbye, bestie!")

  elseif choice == 1 then -- get a definition
    io.write("What phrase do you want me to translate?: ")
    local phrase = io.read()
    if genZ[phrase] then
      local definition = genZ[phrase]
      print("\n" .. phrase .. " means: " .. definition)
    else
      print("\nSorry, I don't know the phrase '" .. phrase .. "'.")
    end

  elseif choice == 2 then -- add a phrase-definition pair
    io.write("What phrase do you want to add?: ")
    local phrase = io.read()
    if not genZ[phrase] then
      io.write("What's the definition?: ")
      local definition = io.read()
      genZ[phrase] = definition
      print("\n'" .. phrase .. "' has been added.")
    else
      print("\nThat phrase already exists! Try redefining it.")
    end

  elseif choice == 3 then -- redefine an existing phrase
    io.write("What phrase do you want me to redefine?: ")
    local phrase = io.read()
    if genZ[phrase] then
      io.write("What's the new definition?: ")
      local definition = io.read()
      genZ[phrase] = definition
      print("\n'" .. phrase .. "' has been redefined.")
    else
      print("\nThat phrase doesn't exist! Try adding it.")
    end

  elseif choice == 4 then -- delete a phrase-definition pair
    io.write("What phrase do you want me to delete?: ")
    local phrase = io.read()
    if genZ[phrase] then
      genZ[phrase] = nil
      print("\nOkay, I deleted '" .. phrase .. "'.")
    else
      print("\nI can't do that! '" .. phrase .. "' doesn't exist in the dictionary.")
    end

  else -- some unknown choice
    print("\nSorry, but '" .. choice .. "' isn't a valid choice.")
  end
end
