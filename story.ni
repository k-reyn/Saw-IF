"SAW IF v0-0-0" by Kipling R & Lee R

Use American dialect.
Use serial comma.

Chapter 1 - Extra-narrative code

Section 1

[Window/door code for “looking through” etc.]
SizeDMod is a kind of value. The SizeDMods are You walk up to see, You peer through to see, and You gaze through to see.

A window is a kind of door. A window can be transparent. Windows are usually closed. Windows are usually transparent. Windows are usually not openable. Windows have a SizeDMod.

Doors can have a sizedmod.

[Liquid/fluid volume code]
Fill-level is a kind of value. The fill-levels are topped-up, almost full, partially drained, mostly empty, and completely empty. Things can have a fill-level.

Pouring is an action applying to one touchable thing. Filling it in is an action applying to two touchable things.

Understand “pour [something] out” as pouring. Understand "pour out [something]" as pouring. Understand “pour [something] into [something]” as filling it in. Understand "pour [something] in [something]" as filling it in.

Section 2 - (Faux?) Central Room

[For the purpose of creating windows]

The Central Stage is a room. “[if the player is not in the Central Stage]another room. In this room, someone is nailed to a wooden cross. Their face is covered by a ragged canvas sack pulled over their head, but as you watch, you can see them shift occasionally in discomfort. Around the cross is a horrific-looking device connected by wires to their bare chest, which is covered in deep, perpendicular cuts[otherwise]INSERT INTERNAL DESCRIPTION[end if]”

Chapter 2 - Tutorial

Chapter 3 - Starting room through ?

Section 1 - Starting room

Rule for printing the locale description of the rustic bedroom:
	Say “ “ instead.

The Rustic Bedroom is a room. "Apart from the bed you woke up on, little fills this room. The flooring is smooth but unfinished wooden planks, and the walls are made of rough-hewn logs. An incandescent bulb buzzes behind a hemisphere of thick, transparent plastic in the corner, illuminating everything in an orange tungsten glow. A large window is on the wall opposite the bed, and a door is recessed into the wall to the right. A plain, wooden table is in the center of the room, and a steel pitcher and cup sit atop the table." A bed, a table, an oaken door, and a lightbulb are in the bedroom.

[MOVE PLAYER START TO TUTORIAL ROOM] The player is in the bedroom.

The oaken door is west of the bedroom and east of The Ant Room. The oaken door is a door and scenery. The oaken door is lockable and locked.

The glass window is a window. The glass window is scenery. The description of the glass window is “The double panes look thick and durable. Even a heavy blow won’t break this.” The glass window is south of the bedroom and northwest of the Central Stage. The sizedmod of the glass window is You walk up to see.


Instead of searching the glass window:
	say "[SizeDMod of the glass window] [the description of the other side of the glass window]."
	
The table is a supporter. A steel pitcher and a cup are on the table. The cup is a container. The cup is not openable. The cup has a fill-level. The cup is completely empty. The table is scenery. The description of the table is "The table is plain and made of some dark wood."

The steel pitcher has a fill-level. The steel pitcher is topped-up. Understand “water” as the pitcher when the player is in the rustic bedroom.

The pitcher is a container. The description is "The galvanized steel is slightly warped and cloudy with age, but the water inside looks crisp and clear. The ice cubes floating at the top must be keeping it cold; beads of water slide down the sides." The pitcher is open and opaque.
There is a brass key. The description is "A worn and tarnished brass key." The brass key unlocks the oaken door.
	
Instead of drinking the pitcher:
	if the pitcher is topped-up:
		now the pitcher is partially drained;
		say “You pour about half of the water into the cup and take a big swig. It feels the best drink of water you’ve had in years.”;
		stop the action;
	if the pitcher is partially drained:
		now the pitcher is completely empty;
		now the brass key is inside the pitcher;
		say “After you pour the last of the water into the cup and gulp it down, you notice a brass key at the bottom of the pitcher.”

Instead of pouring the pitcher:
	if the pitcher is topped-up:
		now the pitcher is completely empty;
		now the brass key is in the rustic bedroom;
		say “Water Goes SPLAT. Key clatters to the floor”;
		continue the action;
	if the pitcher is partially drained:
		now the pitcher is completely empty;
		now the brass key is in the rustic bedroom;
		say “Water Goes SPLAT. Key clatters to the floor”;
		continue the action;
	if the pitcher is completely empty and the brass key is in the pitcher:
		now the brass key is in the rustic bedroom;
		say “A tarnished brass key falls to the floor along with a few drops of water.”;
		continue the action;
	otherwise:
		say “Nothing comes out.”;
		continue the action.

Instead of filling the pitcher in the cup:
	if the pitcher is topped-up:
		now the pitcher is partially drained;
		now the cup is topped-up;
		say “Your shaky hands caused you to spill a little on the table, but the cup is now full”;
		continue the action;
	if the pitcher is partially drained:
		now the pitcher is completely empty;
		now the brass key is in the pitcher;
		now the cup is topped-up;
		say “You fill the cup with a dexterity that belies your fragile mental state. As you lower the pitcher to the table, there is a slight ping of metal-on-metal. A brass key glints dully at the bottom.”;
		continue the action.

Instead of pouring the cup:
	if the cup is topped-up:
		now the cup is completely empty;
		say “Now the floor is a little wet and slippery.”;
		continue the action;
	if the cup is completely empty:
		say “Nothing happens.”.

The bed is scenery. The description of the bed is "A lumpy mattress of scratchy linen and straw on top of a handmade wooden frame, this is barely more than a cot."

The bedframe leg is part of the bed. The leg is a supporter. The tape player is on the leg.

Instead of doing anything when the player is in the rustic bedroom:
	if examining the bed:
		continue the action;
	if going to the rustic bedroom:
		continue the action;
	if saying the room description:
		continue the action;
	otherwise:
		say "monologue monologue";
		stop the action.

[Instead of doing anything other than examining the bed when the player is in the rustic bedroom:
	Say "A voice, slightly distorted and fuzzy by poor audio, suddenly rings out. It sounds like it's coming from below the bed. You pause, a shiver running down your spine as you listen. 'Welcome. I’m glad you’re awake. You’re here because you have been chosen to be my judge. The man you can see through the window - his life, and his livelihood, depends on your judgment. Before you will make that judgment, however, I will put you through several tests to train you for the final decision. I trust that you will look carefully in order to gain the evidence you will need to make the final judgment.'";
	stop the action.
]
The lightbulb is scenery. The description of the lightbulb is “Although incandescent rather than an LED or fluorescent, the bulb still sticks out as anachronistic in this old-timey room, as does the the plastic bubble which encases it.”


Chapter 2 - In Progress/TBD code

[THIS CODE KINDA WORKS, I WAS WORKING ON A HEALTH/ENDURANCE SYSTEM. THIS STUFF I WROTE BELOW HAS POTENTIAL TO BE USEFUL, BUT IT NEEDS SOME WORK BEFORE IT IS ACTUALLY GOOD.]
[Endurance is a kind of value. 1 ep specifies an endurance.
Animals can have an endurance. The player has an endurance. The player has an endurance 12 ep.]

[Equation - Current HP
	N = C - D
where N is a health, C is a health, and D is a damage.
Damage is a kind of value. 1 dmg specifies a damage. Harm is a damage that varies. Harm is 2 dmg. 
Health is a kind of value. 1hp specifies a health. 

Instead of examining the bed:
	if health is not less than 1 dmg:
		[now subtract 2 dmg from health;]
		say "You have taken damage. You can take [health] more before succumbing to your anguish."]
[		
HP is a kind of value. The HPs are healthy, passable, decent, uncomfortable, hurt, injured, wounded, battered, suffering, traumatized, brutalized, and dying. The player has an HP. The player is healthy.
]
[
Before of examining the bed:
	if the player is healthy:
		now the player is passable;
		continue the action;
	if the player is passable:
		now the player is decent;
		continue the action;
	if the player is decent:
		now the player is uncomfortable;
		continue the action;
	if the player is uncomfortable:
		now the player is hurt;
		continue the action;
	if the player is injured:
		now the player is wounded;
		continue the action;
	if the player is wounded:
		now the player is battered;
		continue the action;
	if the player is suffering:
		now the player is traumatized;
		continue the action;
	if the player is traumatized:
		now the player is brutalized;
		continue the action;
	if the player is brutalized:
		now the player is dying;
		continue the action;
After examining the bed:
	say "Ouch! You get stabbed by a splinter on the side of the bedframe. Now you feel [HP of the player]"
]