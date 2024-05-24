"SAW IF v0" by Kipling R & Lee R

Use American dialect.
Use serial comma.

Chapter 1 - Extra-narrative code

Section 1

[Window/door code for “looking through” etc.]
SizeDMod is a kind of value. The SizeDMods are You walk up to see, You peer through to see, and You gaze through to see.

A window is a kind of door. A window can be transparent. Windows are usually closed. Windows are usually transparent. Windows are usually not openable. Windows have a SizeDMod.

Doors can have a sizedmod.

Section 2 - (Faux?) Central Room

[For the purpose of creating windows]

The Central Stage is a room. “[if the player is not in the Central Stage]another room. In this room, someone is nailed to a wooden cross. Their face is covered by a ragged canvas sack pulled over their head, but as you watch, you can see them shift occasionally in discomfort. Around the cross is a horrific-looking device connected by wires to their bare chest, which is covered in deep, perpendicular cuts[otherwise]INSERT INTERNAL DESCRIPTION[end if]”


Chapter 2 - Tutorial

Chapter 3 - Starting room through ?

Section 1 - Starting room

The Rustic Bedroom is a room. "Apart from the bed you woke up on, little fills this room. The flooring is smooth but unfinished wooden planks, and the walls are made of rough-hewn logs. An incandescent bulb buzzes behind a hemisphere of thick, transparent plastic in the corner, illuminating everything in an orange tungsten glow. A large window is on the wall opposite the bed, and a door is recessed into the wall to the right. A plain, wooden table is in the center of the room, and a steel pitcher and cup sit atop the table." A bed, a table, and a lightbulb are in the bedroom.

[MOVE PLAYER START TO TUTORIAL ROOM] The player is in the bedroom.

The glass window is a window. The description of the glass window is “The double panes look thick and durable. Even a heavy blow won’t break this.” The glass window is south of the bedroom and northwest of the Central Stage. The sizedmod of the glass window is You walk up to see.

Instead of searching the glass window:
	say "[SizeDMod of the glass window] [the description of the other side of the glass window]."
	
The table is a supporter. A steel pitcher and a cup are on the table. The pitcher and cup are scenery. The description of the table is "The table is plain and made of some dark wood. On top of it, there's a steel pitcher - full of what appears to be water - and a cup."

The steel pitcher can be full, partially drained, or empty. The pitcher is full. Understand “water” as the pitcher. 

The pitcher is a container. The pitcher is open and opaque. A brass key is inside the pitcher. 
	
Instead of drinking the pitcher: 
	if the pitcher is full: 
		now the pitcher is partially drained; 
		say “You pour about half of the water into the cup and take a big swig. It feels the best drink of water you’ve had in years.”;
		stop the action;
	if the pitcher is partially drained: 
		now the pitcher is empty;
		say “After you pour the last of the water into the cup and gulp it down, you notice a brass key at the bottom of the pitcher.”

The bed is scenery. The description of the bed is "A lumpy mattress of scratchy linen and straw on top of a handmade wooden frame, this is barely more than a cot."

The bedframe leg is part of the bed. The leg is a supporter. The tape player is on the leg.

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