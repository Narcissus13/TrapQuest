Royal Scepter by Equippables begins here.

royal scepter is a vibe-wand. royal scepter is unique. royal scepter is manly. royal scepter is plastic. royal scepter has a number called charge. The charge of royal scepter is 1.

princess-consort is a thing that varies. princess-consort is the throne.

Figure of royal scepter is the file "Items/Accessories/Equippables/scepter1.jpg".

To decide which figure-name is the clothing-image of (R - royal scepter):
	decide on figure of royal scepter.

The text-shortcut of royal scepter is "rs".

To say ClothingDesc of (W - royal scepter):
	say "A gold and pink wand vibrator, with opaque crystal ball set into the top underneath a golden crown. ";
	if diaper quest is 0 and princess-consort is an alive monster:
		say "The ball [if the charge of W < 0]seems to draw in the light around it[otherwise]illuminates the area around it[end if], and when you look closely, you can see a faint image of the [princess-consort] swirling around inside it. Somehow, you know you can find [him of princess-consort] in the [bold type][the location of princess-consort][roman type]. [if the refractory-period of princess-consort <= 0]You can sense that [he of princess-consort] is currently in need of your care![otherwise]You sense that [he of princess-consort] is currently not in need of your care.[end if]";
	otherwise:
		say "The ball seems to shine brightly when you're in a used diaper - it has the power to help you change yourself!".

To say ShortDesc of (W - royal scepter):
	say "royal scepter".

To decide which number is the damage improvement of (W - royal scepter):
	let X be MagicPowerDamage + the magic-modifier of W - (the humiliation of the player / 10000);
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	if the charge of W > 0, increase X by the square root of the charge of W;
	if X < 1, decide on 1;
	decide on X.

To compute attack of (W - royal scepter) at (M - a monster):
	say "You blast [NameDesc of M] with a[if the charge of W > 3] pulsing[end if] wave of magic.".

Definition: royal scepter is unlimited horniness: decide yes.
Definition: royal scepter is royalty themed: decide yes.

To decide which number is the initial outrage of (E - royal scepter):
	decide on 2.

To compute climax effect of (E - royal scepter):
	if princess-consort is penetrating a body part:
		say "Your [ShortDesc of E] pulses, and a pleasant feeling wells up inside of you.";
		dignify the charge of E * 3;
	otherwise if princess-consort is not the throne:
		if there is a live thing penetrating a body part:
			say "Your [ShortDesc of E] pulses, and you feel a horrible sense of shame in your heart from touching yourself while someone other than the [princess-consort] was inside you.";
			humiliate STRONG-HUMILIATION;
		otherwise:
			say "Your [ShortDesc of E] pulses, and you feel a powerful sense of yearning deep in your heart as an image of the [princess-consort] appears in your mind.";
			Arouse 3000;
			if the refractory-period of princess-consort > 0, decrease the refractory-period of princess-consort by the charge of E * 20.

To decide which number is the raw-masturbation-bonus of (E - royal scepter):
	if princess-consort is penetrating a body part:
		decide on 2;
	otherwise if princess-consort is the throne:
		decide on 1;
	decide on 0.

To compute betrothal of (M - a monster):[This only triggers when the player is fucked by a monster, for now.]
	if debugmode > 0, say "princess-consort is [princess-consort][line break]";
	if royal scepter is worn:
		let F be 0;
		if princess-consort is in the location of the player, now F is 1;
		otherwise now F is -1;
		if princess-consort is M, now F is 2;
		if F is -1:[the consort isn't around. Adultery!]
			if princess-consort is alive and princess-consort is mating and the refractory-period of princess-consort > 0:
				say "Your [printed name of royal scepter] pulses, and an image of [NameDesc of princess-consort] appears in your head. You know that no matter who you have sex with, nothing could ever shake your everlasting connection.";
			otherwise if princess-consort is alive:
				say "Your [printed name of royal scepter] pulses, and an image of [NameDesc of princess-consort] appears in your head as an overwhelming feeling of guilt washes over you.";
				punish infidelity;
			otherwise if princess-consort is monster:[How do we handle it if the consort is dead?]
				unless princess-consort is mating:
					say "Your [printed name of royal scepter] disappears, and you feel your connection to [NameDesc of princess-consort] slowly fade away.";
					now the charge of royal scepter is 0;
					only destroy royal scepter;
					now princess-consort is the throne;
				otherwise:[Getting pregnant from your consort grants freedom, but becomes constricting if they die]
					say "Your [printed name of royal scepter] pulses, and an image of [NameDesc of princess-consort] appears in your head as an overwhelming feeling of guilt at your lack of loyalty washes over you.";
					punish infidelity;
		if F is 2:[M is the consort]
			say "Your [royal scepter] pulses, and a pleasant feeling wells up inside of you.";
			dignify the charge of royal scepter * 5;
			if princess-consort is mating:
				FatigueDown the charge of royal scepter * 5;
				if the charge of royal scepter < 25, increase the charge of royal scepter by 10;
			otherwise:
				if the charge of royal scepter < 25, increase the charge of royal scepter by 5;
				unless princess-consort is father material, FavourUp princess-consort;
			progress quest of betrothal-quest;
	otherwise if (the times-submitted of current-monster > 1 or M is friendly) and M is alive:[We pretty much only care about the last part if M is the vine boss]
		if royal scepter is actually summonable:
			now princess-consort is M;
			now royal scepter is worn by the player;
			if M is vine boss and M is not in the location of the player, say "You find yourself peering wistfully at the ground below you, and somehow, you know that under there something is peering up at you. A [printed name of royal scepter] appears in your hand, as if to symbolise the blossoming of your connection.";
			otherwise say "You look up at [NameDesc of M] and your eyes meet. A [printed name of royal scepter] appears in your hand, as if to symbolise your lasting connection.";
			if M is vine boss, now the player is vine-cursed;
		progress quest of betrothal-quest.

To punish infidelity:
	humiliate the charge of royal scepter * 40;
	decrease the charge of royal scepter by 1;
	if royal scepter is blessed, now royal scepter is bland;
	if the number of worn chest tattoo is 0 and there is a worn tattoo:
		summon unfaithful tattoo;
		say "You feel a searing pain as the word 'UNFAITHFUL' burns itself into your chest in big red letters.";
	otherwise if the number of worn ass tattoo is 0 and there is a worn tattoo:
		summon cheating whore tattoo;
		say "You experience a heavy feeling of shame as the words 'CHEATING WHORE' etch themselves into your cheeks.";
	otherwise if a random number between 1 and 2 is 1 and there is a worn plentiful accessory:
		let J be random worn plentiful accessory;
		say "Your [printed name of J] hisses as it slowly disintegrates.";
		only destroy J;
	otherwise:
		IntDown 1;
		say "You feel your mind clouding over with thoughts of regret.".

Royal Scepter ends here.
