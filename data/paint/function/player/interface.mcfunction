tag @a[tag=!cif,nbt={SelectedItemSlot:0}] add cif
tag @a[tag=cif,nbt=!{SelectedItemSlot:0}] remove cif

#empty
title @a[tag=cif,tag=!mode1,tag=!mode2,tag=!mode3,tag=!mode4,tag=!cube] actionbar ["",{"text":""}]

#one color
title @a[tag=cif,tag=mode1,tag=!mode2,tag=!mode3,tag=!mode4,tag=!cube] actionbar [{"text":"O","color":"aqua"}]
title @a[tag=cif,tag=!mode1,tag=mode2,tag=!mode3,tag=!mode4,tag=!cube] actionbar [{"text":"O","color":"green"}]
title @a[tag=cif,tag=!mode1,tag=!mode2,tag=mode3,tag=!mode4,tag=!cube] actionbar [{"text":"O","color":"gold"}]
title @a[tag=cif,tag=!mode1,tag=!mode2,tag=!mode3,tag=mode4,tag=!cube] actionbar [{"text":"O","color":"red"}]

#two colors
title @a[tag=cif,tag=mode1,tag=mode2,tag=!mode3,tag=!mode4,tag=!cube,scores={mode=1}] actionbar [{"text":"O","color":"aqua"},{"text":"o","color":"green"}]
title @a[tag=cif,tag=mode1,tag=mode2,tag=!mode3,tag=!mode4,tag=!cube,scores={mode=2}] actionbar [{"text":"o","color":"aqua"},{"text":"O","color":"green"}]

title @a[tag=cif,tag=mode1,tag=!mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=1}] actionbar [{"text":"O","color":"aqua"},{"text":"o","color":"gold"}]
title @a[tag=cif,tag=mode1,tag=!mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=3}] actionbar [{"text":"o","color":"aqua"},{"text":"O","color":"gold"}]

title @a[tag=cif,tag=mode1,tag=!mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=1}] actionbar [{"text":"O","color":"aqua"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=mode1,tag=!mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=4}] actionbar [{"text":"o","color":"aqua"},{"text":"O","color":"red"}]

title @a[tag=cif,tag=!mode1,tag=mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=2}] actionbar [{"text":"O","color":"green"},{"text":"o","color":"gold"}]
title @a[tag=cif,tag=!mode1,tag=mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=3}] actionbar [{"text":"o","color":"green"},{"text":"O","color":"gold"}]

title @a[tag=cif,tag=!mode1,tag=mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=2}] actionbar [{"text":"O","color":"green"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=!mode1,tag=mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=4}] actionbar [{"text":"o","color":"green"},{"text":"O","color":"red"}]

title @a[tag=cif,tag=!mode1,tag=!mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=3}] actionbar [{"text":"O","color":"gold"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=!mode1,tag=!mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=4}] actionbar [{"text":"o","color":"gold"},{"text":"O","color":"red"}]

#three
title @a[tag=cif,tag=!mode1,tag=mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=2}] actionbar [{"text":"O","color":"green"},{"text":"o","color":"gold"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=!mode1,tag=mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=3}] actionbar [{"text":"o","color":"green"},{"text":"O","color":"gold"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=!mode1,tag=mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=4}] actionbar [{"text":"o","color":"green"},{"text":"o","color":"gold"},{"text":"O","color":"red"}]

title @a[tag=cif,tag=mode1,tag=!mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=1}] actionbar [{"text":"O","color":"aqua"},{"text":"o","color":"gold"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=mode1,tag=!mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=3}] actionbar [{"text":"o","color":"aqua"},{"text":"O","color":"gold"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=mode1,tag=!mode2,tag=mode3,tag=mode4,tag=!cube,scores={mode=4}] actionbar [{"text":"o","color":"aqua"},{"text":"o","color":"gold"},{"text":"O","color":"red"}]

title @a[tag=cif,tag=mode1,tag=mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=1}] actionbar [{"text":"O","color":"aqua"},{"text":"o","color":"green"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=mode1,tag=mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=2}] actionbar [{"text":"o","color":"aqua"},{"text":"O","color":"green"},{"text":"o","color":"red"}]
title @a[tag=cif,tag=mode1,tag=mode2,tag=!mode3,tag=mode4,tag=!cube,scores={mode=4}] actionbar [{"text":"o","color":"aqua"},{"text":"o","color":"green"},{"text":"O","color":"red"}]

title @a[tag=cif,tag=mode1,tag=mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=1}] actionbar [{"text":"O","color":"aqua"},{"text":"o","color":"green"},{"text":"o","color":"gold"}]
title @a[tag=cif,tag=mode1,tag=mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=2}] actionbar [{"text":"o","color":"aqua"},{"text":"O","color":"green"},{"text":"o","color":"gold"}]
title @a[tag=cif,tag=mode1,tag=mode2,tag=mode3,tag=!mode4,tag=!cube,scores={mode=3}] actionbar [{"text":"o","color":"aqua"},{"text":"o","color":"green"},{"text":"O","color":"gold"}]

#full
title @a[scores={upgrade=1..3}] actionbar [{"text":"á"}]
title @a[scores={upgrade=4..6}] actionbar [{"text":"é"}]
title @a[scores={upgrade=7..9}] actionbar [{"text":"í"}]
title @a[scores={upgrade=10..12}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=12..14}] actionbar [{"text":"á"}]
title @a[scores={upgrade=15..17}] actionbar [{"text":"é"}]
title @a[scores={upgrade=18..20}] actionbar [{"text":"í"}]
title @a[scores={upgrade=21..23}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=24..26}] actionbar [{"text":"á"}]
title @a[scores={upgrade=27..29}] actionbar [{"text":"é"}]
title @a[scores={upgrade=30..32}] actionbar [{"text":"í"}]
title @a[scores={upgrade=33..35}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=36..38}] actionbar [{"text":"á"}]
title @a[scores={upgrade=39..41}] actionbar [{"text":"é"}]
title @a[scores={upgrade=42..44}] actionbar [{"text":"í"}]
title @a[scores={upgrade=45..47}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=48}] actionbar [{"text":"á"}]
title @a[scores={upgrade=49}] actionbar [{"text":"é"}]
title @a[scores={upgrade=50}] actionbar [{"text":"í"}]
title @a[scores={upgrade=51}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=52}] actionbar [{"text":"á"}]
title @a[scores={upgrade=53}] actionbar [{"text":"é"}]
title @a[scores={upgrade=54}] actionbar [{"text":"í"}]
title @a[scores={upgrade=55}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=56}] actionbar [{"text":"á"}]
title @a[scores={upgrade=57}] actionbar [{"text":"é"}]
title @a[scores={upgrade=58}] actionbar [{"text":"í"}]
title @a[scores={upgrade=59}] actionbar [{"text":"ó"}]
title @a[scores={upgrade=60}] actionbar [{"text":"ú","bold":true}]

title @a[scores={upgrade=61..}] actionbar [{"text":"ú"}]

#cube
title @a[tag=cube] actionbar ["",{"text":"[]","color":"dark_gray"}]
