// q3mme - compatible with wolfcam 10.3
// edited by jones

// wolfcam additional inputs to some scripts are:
// team 		0 free, 1 red, 2 blue, 3 spectator
// clientnum
// enemy        1 if enemy of whoever is being specced in demo
// teammate
// ineyes       1 if first person view is with this player
// surfacetype  for impact scripts: 0 not specified, 1 metal, 2 wood, 3 dust

// wolfcam: the other ql weapons also available as 'nailgun', 'prox', and 'chaingun'
// wolfcam: weapons also have, in addition to impact scripts, impactflesh scripts.

// WEAPON EFFECTS:
// flash	is a 0.25 second event after a weapon is fired
// fired	is a single event when weapon is fired
// impact	is for weapons impact on something or explode like grenades
// trail	single event for weapons without projectiles or a constant event when 
//			projectile is in motion projectile is for rendering the specific projectile

// ROCKET

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/rocket/flash {

	color 1 0.75 0
	size 300 + rand * 32
	Light
	}

// input: origin, team, clientnum, enemy, teammate, ineyes, dir
// (note: if clientnum < 0  it's a non-player fired weapon. dir and parentDir aren't available)
weapon/rocket/fire {
   soundweapon sound/weapons/rocket/rocklf1a

}

// input: velocity, dir, rotate, origin, angles, axis, size
weapon/rocket/projectile {

	// model
	loopSound sound/weapons/rocket/rockfly.wav
	size 1.2
	model models/ammo/rocket/rocket.md3
	rotate time * 1000 / 4
	dirModel

}

// input: origin, angles, velocity, dir, axis
weapon/rocket/trail {

	size 5
	width 20
	color 1 1 1
	shader flareShaderNew
	distance 5 {
		emitter 0.2 {
			Spark
		}
	}	
}

// input: origin, dir
weapon/rocket/impact {

   	vibrate 70
	sound sound/weapons/rocket/rocklx1a.wav	

	// light

	color 1 0.5 0.1
	emitter 1 {

		size 200 * clip( 2 - 2 * lerp )
		Light
		}

	// beams

	width 40
	shader flareExplosion	
	repeat 8 + 8 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 200

			color 1 0.5 0.1

			colorFade 0
			Spark
			}
		}

	repeat 4 + 4 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 300

			color 1 0.1 0.1	

			colorFade 0
			Spark
			}
		}

	// explosion

	copy origin parentOrigin
	copy velocity parentVelocity

	t0 180 / pi
	t1 pi * 2

	normalize dir v2
	perpendicular dir v0
	cross v0 v2 v1

	shader flareShader	
	repeat 500 + rand * 100 {

		random dir
		addScale parentVelocity dir velocity 450 * rand
		width 2 + 1 * rand

		emitter 0.5 * rand {

			size 20 - lerp * 20

			color 1 0.4 0.1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}

	repeat 900 + 100 * rand {

		t2 2 * rand - 1 
		t3 t1 * rand
		
		t4 30 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t5 30 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t6 30 * cos( t0 * acos( t2 ) )

		scale v0 v3 t4
		addScale v3 v1 v4 t5
		addScale v4 v2 v5 t6

		add parentOrigin v5 origin

		t7 10 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t8 10 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t9 10 * cos( t0 * acos( t2 ) )

		scale v0 v6 t7
		addScale v6 v1 v7 t8
		addScale v7 v2 v8 t9

		addScale parentVelocity v8 velocity 10 * rand

		emitter 1.5 * rand {

			size ( t3 * 2 ) - ( t3 * 2 ) * lerp

			color 1 0.2 0.1

			colorFade 0.8
			moveBounce 150 0.8
			moveGravity 20
			Sprite
			}
		}

	repeat 500 + 100 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 35 * t3
		addScale v3 v1 v4 35 * t4

		add parentOrigin v4 origin

		t5 4 * -sin( t0 * loop * t1 )
		t6 4 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 8 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 * rand

		emitter 1 * rand {

			size t2 - t2 * lerp
			width size - size * lerp

			color 1 0.2 0.1

			colorFade 0.8
			moveBounce 150 0.8
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 400 + 100 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 25 * t3
		addScale v3 v1 v4 25 * t4

		add parentOrigin v4 origin

		t5 8 * -sin( t0 * loop * t1 )
		t6 8 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 6 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 * rand

		emitter 1 * rand {

			size t2 - t2 * lerp
			width size - size * lerp

			color 1 0.2 0.1

			colorFade 0.8
			moveBounce 150 0.8
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 300 + 100 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 30 * t3
		addScale v3 v1 v4 30 * t4

		add parentOrigin v4 origin

		t5 12 * -sin( t0 * loop * t1 )
		t6 12 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 2 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 * rand

		emitter 1.5 * rand {

			size t2 - t2 * lerp
			width size - size * lerp

			color 1 0.4 0.1

			colorFade 0.8
			moveBounce 150 0.8
			moveGravity 0
			Spark cullNear
			}
		}

	// decal

	rotate rand * 360
	shader gfx/damage/crack_mrk		
	size 100
	Decal
	}

	}

// PLASMA

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/plasma/flash {

	color 0.35 0.35 1
	size 200 + rand * 25
	Light
	}

// input: velocity, dir, rotate, origin, angles, axis, size
weapon/plasma/projectile {

	loopSound	"sound/weapons/plasma/lasfly.wav"

	// world glow

	size 125
	color 0.35 0.35 1
	Light

	// 4x twisting flame

	t0 360 / pi
	t1 cos( t0 * time * pi * 2 )
	t2 sin( t0 * time * pi * 2 )

	normalize dir v2
	inverse v2
	perpendicular dir v0
	cross v2 v0 v1

	shader flareShader
	distance 6 + 1 * rand {	

		scale v2 v2 0.6 + 0.6 * rand

		repeat 4 {

			if loopcount = 0 {
			scale v0 v3 t2
			scale v1 v4 t2
			subScale v4 v0 v5 t1
			addScale v3 v1 v5 t1
			}

			if loopcount = 1 {
			scale v0 v3 -t2
			scale v1 v4 -t2
			addScale v4 v0 v5 t1
			subScale v3 v1 v5 t1
			} 

			if loopcount = 2 {
			scale v0 v3 t1
			scale v1 v4 t1
			subScale v4 v0 v5 t2
			addScale v3 v1 v5 -t2
			}

			if loopcount = 3 {
			scale v0 v3 -t1
			scale v1 v4 -t1
			subScale v4 v0 v5 -t2
			addScale v3 v1 v5 t2
			}

			add v2 v5 v6
			addScale parentVelocity v6 velocity 75 + 50 * rand

			emitter 0.3 * rand * rand {

				t3 5 + 0.5 * crand
				size t3 - t3 * ( 0.5 * lerp )

				red 0.2 - lerp * 0.1
				green 0.2 - lerp * 0.1
				blue 0.9 + lerp * 0.1

				colorFade 0
				moveGravity 0
				moveBounce 0.1 0.1
				Sprite cullNear
				}
			}

		// random flares

		t4 3 + 0.5 * crand

		random v7
		addScale parentVelocity v7 velocity 75 + rand * 50

		emitter 0.3 * rand * rand {

			size t4 - t4 * lerp

			red 0.2 - lerp * 0.1
			green 0.2 + lerp * 0.2
			blue 0.9 + lerp * 0.1

			colorFade 0
			moveGravity 0
			moveBounce 0.1 0.1
			Sprite cullNear
			}
		}
	}

// input: origin, angles, velocity, dir, axis
weapon/plasma/trail {

	// inverse flame

	shader flareShader
	distance 6 + 2 * rand {

		normalize dir v0
		inverse v0
		addScale parentVelocity v0 velocity 200 + rand * 75
	
		emitter 0.35 * rand * rand {

			t0 20 - 2 * rand
			size t0 - t0 * ( 0.5 * lerp )
			width size - size * lerp

			red 0.2 - lerp * 0.1
			green 0.2 - lerp * 0.1
			blue 0.9 + lerp * 0.1

			colorFade 0
			moveGravity 0
			Spark cullNear
			}

		// inverse flares

		normalize dir v1
		inverse v1
		addScale parentVelocity v1 velocity 250 + rand * 75

		emitter 0.3 * rand * rand {

			t1 8 - 2 * rand
			size t1 - t1 * ( 0.5 * lerp )
			width size - size * lerp

			red 0.2 - lerp * 0.1
			green 0.2 + lerp * 0.2
			blue 0.9 + lerp * 0.1

			colorFade 0
			moveGravity 0
			Spark cullNear
			}
		}
	}

// input: origin, dir, surfacetype
weapon/plasma/impact {

	vibrate 5
	sound sound/weapons/plasma/plasmx1a.wav

	shader plasmaExplosion
	model models/weaphits/ring02.md3
	rotate rand * 360
	emitter 0.5 {
		dirModel
		}

	copy origin parentOrigin
	copy velocity parentVelocity

	normalize dir v2
	perpendicular dir v0
	cross v0 v2 v1

	t0 180 / pi
	t1 pi * 2
	t2 25 - 5 * rand

	shader flareShader	
	repeat 30 + rand * 40 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.7 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}

	repeat 20 + 10 * rand {

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 10 * t3
		addScale v3 v1 v4 10 * t4

		add parentOrigin v4 origin

		t5 5 * -sin( t0 * loop * t1 )
		t6 5 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 5 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 25

		emitter 0.2 + 0.1 * rand {

			size t2 - t2 * ( 0.5 * lerp * 1.5 )
			width size - size * ( 0.5 * lerp * 1.5 )

			red 0.2 - lerp * 0.1
			green 0.2 - lerp * 0.1
			blue 0.9 + lerp * 0.1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 20 + 10 * rand {

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 10 * t3
		addScale v3 v1 v4 10 * t4

		add parentOrigin v4 origin

		t5 5 * -sin( t0 * loop * t1 )
		t6 5 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 5 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 25

		emitter 0.2 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp * 1.5 )
			width size - size * ( 0.5 * lerp * 1.5 )

			red 0.2 - lerp * 0.1
			green 0.2 - lerp * 0.1
			blue 0.9 + lerp * 0.1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes
weapon/plasma/impactflesh {

	shader flareShader	
	repeat 30 + rand * 40 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.2 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}
	}

// RAILGUN

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/rail/flash {

	color 0.5 0.5 1
	size 300 + rand * 32
	Light
	}

// input: origin, parentOrigin, end, dir, parentDir, color1, color2, team, clientnum, enemy, teammate, ineyes
weapon/rail/trail {

	copy dir v3

	t0 v3
	t1 360
	t2 180 / pi
	t3 pi * 2

	normalize dir v2
	perpendicular v2 v0
	cross v2 v0 v1

	// white particles

	shader flareShader
	repeat t0 {

		t1 t1 + 100
		t4 2 + 1 * rand

		scale v0 v3 crand
		scale v1 v4 crand
		add v3 v4 v5
		addScale v5 v2 v6 loop * t0
		add parentOrigin v6 origin 

		scale v5 v7 2 * rand
		addScale v7 v2 v8 15 + 15 * rand
		add parentVelocity v8 velocity

		emitter 0.8 + loop * t1 * 0.00001 {

			size t4 - t4 * ( 0.5 * lerp * 1.5 )

			color 1 1 1

			colorFade 0
			moveGravity 0
			Sprite cullNear
			}
		}

	if team = 0 {

		// blue spiral

		repeat t0 / 2 {

			t4 2 + 2 * rand
			t5 cos( t2 * loop * t3 * 10 )
			t6 sin( t2 * loop * t3 * 10 )

			scale v0 v3 3 * t5 
			scale v1 v4 3 * t6
			add v3 v4 v5
			addScale v5 v2 v6 loop * t0
			add parentOrigin v6 origin 

			scale v5 v7 3 * rand
			addScale v7 v2 v8 5 + 5 * rand
			add parentVelocity v8 velocity

			emitter 1.2 + 0.2 * rand {

				size t4 - t4 * ( 0.5 * lerp * 1.5 )

				color 0.1 0.2 1

				colorFade 0
				moveGravity 0
				Sprite cullNear
				}
			}

		// teal particles

		repeat t0 / 3 {

			t4 1 + 1 * rand

			scale v0 v3 2 * crand
			scale v1 v4 2 * crand
			add v3 v4 v5
			addScale v5 v2 v6 loop * t0
			add parentOrigin v6 origin 

			scale v5 v7 4 * rand
			addScale v7 v2 v8 10 + 10 * rand
			add parentVelocity v8 velocity

			emitter 1.2 + 0.2 * rand {

				size t4 - t4 * ( 0.5 * lerp * 1.5 )

				color 0.1 0.6 1

				colorFade 0
				moveGravity 0
				Sprite cullNear
				}
			}
		}

	if team = 1 {

		// red spiral

		repeat t0 / 2 {

			t4 2 + 2 * rand
			t5 cos( t2 * loop * t3 * 10 )
			t6 sin( t2 * loop * t3 * 10 )

			scale v0 v3 3 * t5 
			scale v1 v4 3 * t6
			add v3 v4 v5
			addScale v5 v2 v6 loop * t0
			add parentOrigin v6 origin 

			scale v5 v7 3 * rand
			addScale v7 v2 v8 5 + 5 * rand
			add parentVelocity v8 velocity

			emitter 1.2 + 0.2 * rand {

				size t4 - t4 * ( 0.5 * lerp * 1.5 )

				color 1 0.1 0.1

				colorFade 0
				moveGravity 0
				Sprite cullNear
				}
			}

		// orange particles

		repeat t0 / 3 {

			t4 1 + 1 * rand

			scale v0 v3 2 * crand
			scale v1 v4 2 * crand
			add v3 v4 v5
			addScale v5 v2 v6 loop * t0
			add parentOrigin v6 origin 

			scale v5 v7 4 * rand
			addScale v7 v2 v8 10 + 10 * rand
			add parentVelocity v8 velocity

			emitter 1.2 + 0.2 * rand {

				size t4 - t4 * ( 0.5 * lerp * 1.5 )

				color 1 0.5 0.1

				colorFade 0
				moveGravity 0
				Sprite cullNear
				}
			}
		}

	if team = 2 {

		// blue spiral

		repeat t0 / 2 {

			t4 2 + 2 * rand
			t5 cos( t2 * loop * t3 * 10 )
			t6 sin( t2 * loop * t3 * 10 )

			scale v0 v3 3 * t5 
			scale v1 v4 3 * t6
			add v3 v4 v5
			addScale v5 v2 v6 loop * t0
			add parentOrigin v6 origin 

			scale v5 v7 3 * rand
			addScale v7 v2 v8 5 + 5 * rand
			add parentVelocity v8 velocity

			emitter 1.2 + 0.2 * rand {

				size t4 - t4 * ( 0.5 * lerp * 1.5 )

				color 0.1 0.2 1

				colorFade 0
				moveGravity 0
				Sprite cullNear
				}
			}

		// teal particles

		repeat t0 / 3 {

			t4 1 + 1 * rand

			scale v0 v3 2 * crand
			scale v1 v4 2 * crand
			add v3 v4 v5
			addScale v5 v2 v6 loop * t0
			add parentOrigin v6 origin 

			scale v5 v7 4 * rand
			addScale v7 v2 v8 10 + 10 * rand
			add parentVelocity v8 velocity

			emitter 1.2 + 0.2 * rand {

				size t4 - t4 * ( 0.5 * lerp * 1.5 )

				color 0.1 0.6 1

				colorFade 0
				moveGravity 0
				Sprite cullNear
				}
			}
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes, surfacetype
weapon/rail/impact {

	vibrate 30
	sound sound/weapons/plasma/plasmx1a.wav
	rotate rand * 360
	shader railExplosion
	model models/weaphits/ring02.md3
	emitter 0.6 {

		dirModel
		size 24
		shader gfx/damage/plasma_mrk
		Decal energy
		}

	copy origin parentOrigin
	copy velocity parentVelocity

	normalize dir v2
	perpendicular dir v0
	cross v0 v2 v1

	t0 180 / pi
	t1 pi * 2
	t2 25 - 5 * rand

	shader flareShader	
	repeat 30 + rand * 40 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.7 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}

	repeat 20 + 10 * rand {

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 10 * t3
		addScale v3 v1 v4 10 * t4

		add parentOrigin v4 origin

		t5 5 * -sin( t0 * loop * t1 )
		t6 5 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 5 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 25

		emitter 0.2 + 0.1 * rand {

			size t2 - t2 * ( 0.5 * lerp * 1.5 )
			width size - size * ( 0.5 * lerp * 1.5 )

			red 0.2 - lerp * 0.1
			green 0.2 - lerp * 0.1
			blue 0.9 + lerp * 0.1

			colorFade 0.8
			moveBounce 150 0.8
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 20 + 10 * rand {

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 10 * t3
		addScale v3 v1 v4 10 * t4

		add parentOrigin v4 origin

		t5 5 * -sin( t0 * loop * t1 )
		t6 5 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 5 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 25

		emitter 0.2 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp * 1.5 )
			width size - size * ( 0.5 * lerp * 1.5 )

			red 0.2 - lerp * 0.1
			green 0.2 - lerp * 0.1
			blue 0.9 + lerp * 0.1

			colorFade 0.8
			moveBounce 150 0.8
			moveGravity 0
			Spark cullNear
			}
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes
weapon/rail/impactflesh {

	shader flareShader	
	repeat 10 + rand * 20 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.1 * rand + rand * 0.2 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}
	}

 // LIGHTNING

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/lightning/flash {

	color 0.5 0.5 1
	size 200 + rand * 25
	Light
	}

// input: origin, dir, end, team, clientnum, enemy, teammate, ineyes
weapon/lightning/trail {

	shader lightningBolt2
	size 16
	angle 45

	if ineyes {
		beam depthhack
        	} else {
		beam
		}

	t0 dir

	if ( t0 < 768 ) {

		shaderClear
		model models/weaphits/crackle.md3
		size 1
		addScale origin dir origin ( ( t0 - 16 ) / t0 )
		angles0 rand * 360
		angles1 rand * 360
		angles2 rand * 360
		anglesModel
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes, surfacetype
weapon/lightning/impact {

	soundList {

		sound/weapons/lightning/lg_hit.wav
		sound/weapons/lightning/lg_hit2.wav
		sound/weapons/lightning/lg_hit3.wav
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes
weapon/lightning/impactflesh {

	soundList {

		sound/weapons/lightning/lg_hit.wav
		sound/weapons/lightning/lg_hit2.wav
		sound/weapons/lightning/lg_hit3.wav
		}

	shader flareShader	
	repeat 30 + rand * 40 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.1 * rand + rand * 0.2 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}
	}

// GRENADE

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/grenade/flash {

	color 1 0.75 0
	size 300 + rand * 32
	light
	}

// input: velocity, dir, rotate, origin, angles, axis, size, team, clientnum, enemy, teammate, ineyes
weapon/grenade/projectile {

	model models/ammo/grenade1.md3

	if velocity {

		rotate time * 1000 / 4
		}

	dirModel
	}


// input: origin, angles, velocity, dir, axis, team, clientnum, enemy, teammate, ineyes
weapon/grenade/trail {

	alpha 0.33
	shader smokePuff
	angle 360 * rand

	interval 0.05 {
		emitter 0.700 {
			alphaFade 0
			size 8 + lerp * 32
			sprite cullNear
			}
		}
	}

// input: origin, dir, surfacetype
weapon/grenade/impact {

	vibrate 70
	sound sound/weapons/rocket/rocklx1a.wav

	// light

	color 1 0.5 0.1
	emitter 1 {

		size 200 * clip( 2 - 2 * lerp )
		Light
		}

	// beams

	width 40
	shader flareExplosion	
	repeat 4 + 4 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 200

			color 1 0.5 0.1

			colorFade 0
			Spark
			}
		}

	repeat 3 + 3 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 300

			color 1 0.1 0.1	

			colorFade 0
			Spark
			}
		}	

	repeat 2 + 2 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 350

			color 0 0.3 0.6	

			colorFade 0
			Spark
			}
		}


	// explosion

	copy origin parentOrigin
	copy velocity parentVelocity

	t0 180 / pi
	t1 pi * 2

	normalize dir v2
	perpendicular dir v0
	cross v0 v2 v1

	shader flareShader	
	repeat 50 + rand * 60 {

		random dir
		addScale parentVelocity dir velocity 450 * rand
		width 2 + 1 * rand

		emitter 0.7 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 1 0.4 0.1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}

	repeat 200 + 50 * rand {

		t2 2 * rand - 1 
		t3 t1 * rand
		
		t4 25 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t5 25 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t6 25 * cos( t0 * acos( t2 ) )

		scale v0 v3 t4
		addScale v3 v1 v4 t5
		addScale v4 v2 v5 t6

		add parentOrigin v5 origin

		t7 4 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t8 4 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t9 4 * cos( t0 * acos( t2 ) )

		scale v0 v6 t7
		addScale v6 v1 v7 t8
		addScale v7 v2 v8 t9

		addScale parentVelocity v8 velocity 10 + 10 * rand

		emitter 0.6 + 0.4 * rand {

			size ( t3 * 2 ) - ( t3 * 2 ) * lerp

			color 1 0.2 0.1

			moveBounce 1 1
			moveGravity 0
			Sprite cullNear
			}
		}

	repeat 50 + 50 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 35 * t3
		addScale v3 v1 v4 35 * t4

		add parentOrigin v4 origin

		t5 4 * -sin( t0 * loop * t1 )
		t6 4 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 8 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 + 5 * rand

		emitter 0.6 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp )
			width size - size * lerp

			color 1 0.2 0.1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 40 + 40 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 25 * t3
		addScale v3 v1 v4 25 * t4

		add parentOrigin v4 origin

		t5 8 * -sin( t0 * loop * t1 )
		t6 8 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 6 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 + 5 * rand

		emitter 0.6 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp )
			width size - size * lerp

			color 1 0.2 0.1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 30 + 30 * rand {

		t2 5 + 20 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 15 * t3
		addScale v3 v1 v4 15 * t4

		add parentOrigin v4 origin

		t5 12 * -sin( t0 * loop * t1 )
		t6 12 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 2 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 + 5 * rand

		emitter 0.6 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp )
			width size - size * lerp

			color 1 0.4 0.1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	// decal

	rotate rand * 360
	shader gfx/damage/crack_mrk		
	size 100
	Decal
	}

// SHOTGUN

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/shotgun/flash {

	color 1 0.75 0
	size 300 + rand * 32
	Light
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes, surfacetype
weapon/shotgun/impact {

	vibrate 1
	shader gfx/damage/bullet_mrk
	size 4
	Decal

	size 1
	shader bulletExplosion
	model models/weaphits/bullet.md3
	rotate rand * 360
	emitter 0.6 {

		dirModel
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes
weapon/shotgun/impactflesh {

	shader flareShader	
	repeat 10 + rand * 20 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.1 * rand + rand * 0.2 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}
	}

// MACHINEGUN

// input: origin, dir, team, clientnum, enemy, teammate, ineyes, surfacetype
weapon/machinegun/impact {

	soundList {
		sound/weapons/machinegun/ric1.wav
		sound/weapons/machinegun/ric2.wav
		sound/weapons/machinegun/ric3.wav
		}

	shader gfx/damage/bullet_mrk
	size 8
	Decal

	size 1
	shader bulletExplosion
	model models/weaphits/bullet.md3
	rotate rand * 360
	emitter 0.6 {

		dirModel
		}
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes
weapon/machinegun/impactflesh {

	shader flareShader	
	repeat 10 + rand * 20 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.1 * rand + rand * 0.2 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}
	}

// GAUNTLET

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/gauntlet/flash {

	color 0.6 0.6 1
	size 300 + rand * 32
	Light
	}

// input: origin, dir, team, clientnum, enemy, teammate, ineyes
weapon/gauntlet/impactflesh {

	shader flareShader	
	repeat 30 + rand * 40 {

		random dir
		addScale parentVelocity dir velocity 350 * rand
		width 2 + 1 * rand

		emitter 0.2 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.1 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}
	}

// BFG

// input: origin, team, clientnum, enemy, teammate, ineyes
weapon/bfg/flash {

	color 0.2 0.2 1
	size 300 + rand * 32
	Light
	}

// input: velocity, dir, rotate, origin, angles, axis, size
weapon/bfg/projectile {

	loopSound "sound/weapons/rocket/rockfly.wav"
	model models/weaphits/bfg.md3
	size 1
	dirModel
	}

// input: origin, angles, velocity, dir (normalized), axis
weapon/bfg/trail {

	// world glow

	color 0.2 0.2 1
	size 200
	Light
	}

// input: origin, dir
weapon/bfg/impact {

	vibrate 100
	sound sound/weapons/rocket/rocklx1a.wav

	// light

	color 0.2 0.2 1
	emitter 1 {

		size 200 * clip( 2 - 2 * lerp )
		Light
		}

	// beams

	width 40
	shader flareExplosion	
	repeat 4 + 4 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 200

			color 0.2 0.2 1

			colorFade 0
			Spark
			}
		}

	repeat 3 + 3 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 300

			color 0.2 0.4 1

			colorFade 0
			Spark
			}
		}	

	repeat 2 + 2 * rand {

		normalize dir
		wobble dir velocity 40 + 30 * rand

		emitter 0.6 + rand * 0.3 {

			size 400 - lerp * 350

			color 0.2 0.6 1

			colorFade 0
			Spark
			}
		}


	// explosion

	copy origin parentOrigin
	copy velocity parentVelocity

	t0 180 / pi
	t1 pi * 2

	normalize dir v2
	perpendicular dir v0
	cross v0 v2 v1

	shader flareShader	
	repeat 50 + rand * 60 {

		random dir
		addScale parentVelocity dir velocity 450 * rand
		width 2 + 1 * rand

		emitter 0.7 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.2 0.4 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark
			}
		}

	repeat 200 + 50 * rand {

		t2 2 * rand - 1 
		t3 t1 * rand
		
		t4 25 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t5 25 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t6 25 * cos( t0 * acos( t2 ) )

		scale v0 v3 t4
		addScale v3 v1 v4 t5
		addScale v4 v2 v5 t6

		add parentOrigin v5 origin

		t7 4 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t8 4 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t9 4 * cos( t0 * acos( t2 ) )

		scale v0 v6 t7
		addScale v6 v1 v7 t8
		addScale v7 v2 v8 t9

		addScale parentVelocity v8 velocity 10 + 10 * rand

		emitter 0.6 + 0.4 * rand {

			size ( t3 * 2 ) - ( t3 * 2 ) * lerp

			color 0.2 0.2 1

			moveBounce 1 1
			moveGravity 0
			Sprite cullNear
			}
		}

	repeat 50 + 50 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 35 * t3
		addScale v3 v1 v4 35 * t4

		add parentOrigin v4 origin

		t5 4 * -sin( t0 * loop * t1 )
		t6 4 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 8 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 + 5 * rand

		emitter 0.6 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp )
			width size - size * lerp

			color 0.2 0.2 1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 40 + 40 * rand {

		t2 30 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 25 * t3
		addScale v3 v1 v4 25 * t4

		add parentOrigin v4 origin

		t5 8 * -sin( t0 * loop * t1 )
		t6 8 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 6 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 + 5 * rand

		emitter 0.6 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp )
			width size - size * lerp

			color 0.2 0.2 1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	repeat 30 + 30 * rand {

		t2 5 + 20 * rand

		t3 cos( t0 * loop * t1 )
		t4 sin( t0 * loop * t1 )

		scale v0 v3 15 * t3
		addScale v3 v1 v4 15 * t4

		add parentOrigin v4 origin

		t5 12 * -sin( t0 * loop * t1 )
		t6 12 * cos( t0 * loop * t1 )

		scale v0 v5 t5
		addScale v5 v1 v6 t6

		scale v2 v7 2 * rand
		add v6 v7 v8
		addScale parentVelocity v8 velocity 15 + 5 * rand

		emitter 0.6 + 0.2 * rand {

			size t2 - t2 * ( 0.5 * lerp )
			width size - size * lerp

			color 0.2 0.4 1

			colorFade 0
			moveBounce 1 1
			moveGravity 0
			Spark cullNear
			}
		}

	// decal

	rotate rand * 360
	shader gfx/damage/crack_mrk		
	size 100
	Decal
	}

// OTHER EFFECTS

// input: origin, velocity, team, clientnum, enemy, teammate, ineyes
player/gibbed {

	shader flareShader	
	repeat 20 + rand * 30 {

		random dir
		addScale parentVelocity dir velocity 450 * rand
		width 2 + 1 * rand

		emitter 0.7 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.1 0.3 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark cullNear
			}
		}

	repeat 20 + rand * 30 {

		random dir
		addScale parentVelocity dir velocity 450 * rand
		width 2 + 1 * rand

		emitter 0.7 * rand + rand * 0.4 {

			size 20 - lerp * 20

			color 0.1 0.6 1

			colorFade 0.8
			moveBounce 150 0.8
			Spark cullNear
			}
		}

	repeat 20 + rand * 10 {

		random dir
		addScale parentVelocity dir velocity 350 * rand

		size rand * 3

		emitter rand + rand {

			color 0.1 0.3 1

			colorFade 0
			moveBounce 250 0.8
			Sprite cullNear
			}
		}

	repeat 30 + rand * 20 {

		random dir
		addScale parentVelocity dir velocity 350 * rand

		size rand * 3

		emitter rand + rand {

			color 0.1 0.6 1

			colorFade 0
			moveBounce 250 0.8
			Sprite cullNear
			}
		}

	t0 180 / pi
	t1 pi * 2

	normalize dir v2
	perpendicular dir v0
	cross v0 v2 v1

	clear velocity

	copy origin parentOrigin
	copy velocity parentVelocity

	repeat 150 + 50 * rand {

		t2 2 * rand - 1 
		t3 t1 * rand
		
		t4 8 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t5 8 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t6 8 * cos( t0 * acos( t2 ) )

		scale v0 v3 t4
		addScale v3 v1 v4 t5
		addScale v4 v2 v5 t6

		add parentOrigin v5 origin

		t7 4 * sin( t0 * acos( t2 ) ) * cos( t0 * loop * t3 )
		t8 4 * sin( t0 * acos( t2 ) ) * sin( t0 * loop * t3 )
		t9 4 * cos( t0 * acos( t2 ) )

		scale v0 v6 t7
		addScale v6 v1 v7 t8
		addScale v7 v2 v8 t9

		addScale parentVelocity v8 velocity 20 + 40 * rand

		emitter 0.7 + 0.4 * rand {

			size t3 - t3 * lerp

			color 0.1 0.3 1

			moveBounce 1 1
			moveGravity 0
			Sprite cullNear
			}
		}
	}

// input: origin
player/teleportIn {
	sound sound/world/telein.wav

	// lower effect by 20 from origin
	origin2 origin2 - 20
	// give effect upward direction so Quad works
	dir2 dir2 + 1

	// bottom glow
	color 0.1 0.1 0.9
	shader flareShaderNew
	emitter 2 {
		size 140 - 20 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad
	}

	// outer rune(s)
	color 0.2 0.2 0.9
	shader teleShaderOuter
	emitter 1.8 {
		size 150
		colorFade 1 - 1 * lerp * lerp
		Quad
	}

	// inner rune(s)
	color 0.6 0.6 0.9
	shader teleShaderInner
	emitter 1.5 {
		size 100
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 10 * lerp
		size 100 - 30 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 20 * lerp
		size 100 - 60 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 30 * lerp
		size 100 - 90 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 40 * lerp
		size 100 - 120 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 50 * lerp
		size 100 - 150 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 60 * lerp
		size 100 - 180 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad								
	}

	// small circles
	color 0.4 0.4 0.9
	shader teleShaderCircle
	emitter 2 {

		origin2 origin2 + 8 * lerp
		size 70 - 80 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 16 * lerp
		size 70 - 90 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 24 * lerp
		size 70 - 100 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 32 * lerp
		size 70 - 110 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 40 * lerp
		size 70 - 120 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 48 * lerp
		size 70 - 130 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 56 * lerp
		size 70 - 140 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad				
	}

	// large circles
	color 0.1 0.1 0.9
	shader teleShaderCircle
	emitter 2 {

		origin2 origin2 + 8 * lerp
		size 95 - 100 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 16 * lerp
		size 95 - 110 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 24 * lerp
		size 95 - 120 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 32 * lerp
		size 95 - 130 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 40 * lerp
		size 95 - 140 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 48 * lerp
		size 95 - 150 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 56 * lerp
		size 95 - 150 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad				
	}
}

// input: origin
player/teleportOut {
	sound sound/world/teleout.wav

	// lower effect by 20 from origin
	origin2 origin2 - 20
	// give effect upward direction so Quad works
	dir2 dir2 + 1

	// bottom glow
	color 0.1 0.1 0.9
	shader flareShaderNew
	emitter 2 {
		size 140 - 20 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad
	}

	// outer rune(s)
	color 0.2 0.2 0.9
	shader teleShaderOuter
	emitter 1.8 {
		size 150
		colorFade 1 - 1 * lerp * lerp
		Quad
	}

	// inner rune(s)
	color 0.6 0.6 0.9
	shader teleShaderInner
	emitter 1.5 {
		size 100
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 10 * lerp
		size 100 - 30 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 20 * lerp
		size 100 - 60 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 30 * lerp
		size 100 - 90 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 40 * lerp
		size 100 - 120 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 50 * lerp
		size 100 - 150 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 60 * lerp
		size 100 - 180 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad								
	}

	// small circles
	color 0.4 0.4 0.9
	shader teleShaderCircle
	emitter 2 {

		origin2 origin2 + 8 * lerp
		size 70 - 80 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 16 * lerp
		size 70 - 90 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 24 * lerp
		size 70 - 100 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 32 * lerp
		size 70 - 110 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 40 * lerp
		size 70 - 120 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 48 * lerp
		size 70 - 130 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 56 * lerp
		size 70 - 140 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad				
	}

	// large circles
	color 0.1 0.1 0.9
	shader teleShaderCircle
	emitter 2 {

		origin2 origin2 + 8 * lerp
		size 95 - 100 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 16 * lerp
		size 95 - 110 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 24 * lerp
		size 95 - 120 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 32 * lerp
		size 95 - 130 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 40 * lerp
		size 95 - 140 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 48 * lerp
		size 95 - 150 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad

		origin2 origin2 + 56 * lerp
		size 95 - 150 * lerp
		colorFade 1 - 1 * lerp * lerp
		Quad				
	}
}

// input: origin
weapon/common/bubbles {

	shader waterbubble
	distance 5 + rand * 10 {

		size 1 + rand * 2
		random dir
		addScale origin dir origin 10 * rand

		emitter 1 + rand * 0.25 {

			alphaFade 0
			origin2 origin2 + lerp * 8
			Sprite
			}
		}
	}


// input: origin, angles, velocity, dir, team, clientnum, enemy, teammate, ineyes
// player/haste {}

// input: origin, angles, velocity, dir, team, clientnum, enemy, teammate, ineyes
// player/flight {}

// input: origin, angles, velocity, dir, team, clientnum, enemy, teammate, ineyes
// player/head/trail {}

// input: origin, angles, velocity, dir, team, clientnum, enemy, teammate, ineyes
// player/torso/trail {}

// input: origin, angles, velocity, dir, team, clientnum, enemy, teammate, ineyes
// player/legs/trail {}

// input: origin, velocity, team, clientnum, enemy, teammate, ineyes
// player/thawed {}
