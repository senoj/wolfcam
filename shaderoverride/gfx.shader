flareShader
{
	nopicmip
	entityMergable
	{
		map gfx/misc/flare.tga
		blendFunc GL_ONE GL_ONE
		rgbGen vertex
		alphagen vertex
	}
}

flareShaderNew
{
	nopicmip
	entityMergable
	{
		map gfx/misc/flareNew.tga
		blendFunc GL_ONE GL_ONE
		rgbGen vertex
		alphagen vertex
	}
}

teleShaderInner
{
	nopicmip
	{
		map gfx/misc/tele.tga
		blendFunc GL_ONE GL_ONE
		tcmod rotate 90
		rgbGen vertex
		alphagen vertex
	}
}

teleShaderOuter
{
	nopicmip
	{
		map gfx/misc/tele1.tga
		blendFunc GL_ONE GL_ONE
		tcmod rotate 180
		rgbGen vertex
		alphagen vertex
	}
}
teleShaderCircle
{
	nopicmip
	{
		map gfx/misc/tele2.tga
		blendFunc GL_ONE GL_ONE
		rgbGen vertex
		alphagen vertex
	}
}

flareExplosion
{
	nopicmip
	cull none
	entityMergable
	{
		map gfx/misc/explosionflare.tga
		blendFunc add
		rgbGen vertex
		alphagen vertex
	}
}

gfx/damage/crack_mrk
{
	nopicmip
	polygonOffset
	{
		map gfx/damage/crack_mrk.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

gfx/damage/ceramic_mrk
{
	polygonOffset
	{
		map gfx/damage/ceramic_mrk.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

gfx/damage/glass_mrk
{
	polygonOffset
	{
		map gfx/damage/glass_mrk.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

gfx/damage/wood_mrk
{
	polygonOffset
	{
		map gfx/damage/wood_mrk.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

gfx/damage/metal_mrk
{
	polygonOffset
	{
		map gfx/damage/metal_mrk.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

gfx/damage/bulletmult
{
	polygonOffset
	{
		map gfx/damage/bulletmult.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen vertex
		alphaGen vertex
	}
}

powerups/battleSuit
{
	nopicmip
	deformVertexes wave 100 sin 1 0 0 0
	{
		map textures/effects/envmapgold3.tga
                //map textures/sfx/specular.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
	{
		map textures/effects/envmapbs.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
			tcmod rotate 30
			tcmod scroll 1 0.1
		blendfunc GL_ONE GL_ONE
	}
}

powerups/battleWeapon
{
	nopicmip
	deformVertexes wave 100 sin 0.5 0 0 0
	{
		map textures/effects/envmapgold3.tga
                //map textures/sfx/specular.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
	{
		map textures/effects/envmapbs.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
			tcmod rotate 30
			tcmod scroll 1 0.1
		blendfunc GL_ONE GL_ONE
	}
}

powerups/invisibility
{
	nopicmip
	{
		map textures/effects/invismap.tga
                blendfunc GL_ONE GL_ONE
		tcMod turb 0 0.15 0 0.25
		tcGen environment
	}
}

powerups/quad
{
	deformVertexes wave 100 sin 3 -1 0 0.5
	nopicmip
	{
		map textures/effects/quadmap2.tga
		blendfunc add
		rgbGen identity
		tcmod rotate 30
		tcmod scroll 1 0.1
		tcGen environment
	}
}

powerups/quadWeapon
{
	deformVertexes wave 100 sin 0.5 0 0 0
	nopicmip
	{
		map textures/effects/quadmap2.tga
		blendfunc add
		rgbGen identity
		tcmod rotate 30
		tcmod scroll 1 0.1
		tcGen environment
	}
}

powerups/ice
{
	nopicmip
	deformVertexes wave 100 sin 3 0 0 0
	{
		map textures/effects/icemap.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
        tcmod rotate 30
        tcmod scroll 1 .1
	}
}

powerups/spawnarmor
{
	nopicmip
	deformVertexes wave 100 sin 3 0 0 0
	{
		map textures/effects/spawnarmormap.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
	}
}

powerups/spawnarmor2
{
	nopicmip
	deformVertexes wave 100 sin 3 0 0 0
	{
		map textures/effects/spawnarmormap2.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
	}
}

powerups/regen
{
	nopicmip
	deformVertexes wave 100 sin 3 0 0 0
	{
		map textures/effects/regenmap2.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
	}
}

