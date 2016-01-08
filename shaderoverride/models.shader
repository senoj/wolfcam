rocks
{
	cull disable
	nopicmip
	polygonOffset
	{
		map textures/rocks/ocretebase4.tga
	}
}

models/flags/bflagface
{
	cull none
	nopicmip
	nomipmaps
	{
		clampmap models/flags/bflagface1.jpg
		blendFunc gl_one gl_one
		rgbGen identity
	}
}

models/flags/rflagface
{
	cull none
	nopicmip
	nomipmaps
	{
		clampmap models/flags/rflagface1.jpg
		blendFunc gl_one gl_one
		rgbGen identity
	}
}

models/ammo/grenade
{
	nopicmip
	novlcollapse
	{
		map models/ammo/grenade.png
	}
	{
		AnimMap 7 models/ammo/grenade_r.png models/ammo/grenade_g.png
		blendfunc GL_ONE GL_ONE
		rgbGen entity
	}
}

rocketThrustf
{
	{
	// do nothing.
	}
}

rocketThrust
{
	{
	// do nothing.
	}
}
rocketFlare
{
	{
	// do nothing.
	}
}

models/ammo/rocket/rockflar
{
	{
	// do nothing.
	}
}

models/ammo/rocket/rockfls1
{
	{
	// do nothing.
	}
}

models/ammo/rocket/rockfls2
{
	{
	// do nothing.
	}
}

models/powerups/ammo/bfgammo
{
	nopicmip
   cull none
       {
	        map textures/effects/envmapbfg.tga
		 //tcmod scale 3 3
                tcmod rotate 350
                tcmod scroll 3 1
		//tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
        {
	        map textures/effects/tinfx2.tga
		tcGen environment
		blendfunc GL_ONE GL_ONE
                rgbGen identity
       }
       {
	        map models/powerups/ammo/bfgammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/bfgammo1
{
	nopicmip
        {
	        map textures/effects/envmapbfg.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
        }
}
models/powerups/ammo/bfgammo2
{
	nopicmip
	{
		map models/powerups/ammo/bfgammo2.tga
		rgbGen identity
	}
	
}

models/powerups/ammo/grenammo
{
	nopicmip
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/grenammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/grenammo1
{
	nopicmip
	{
	        map textures/effects/envmapgren.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/grenammo2
{
	nopicmip
	{
		map models/powerups/ammo/grenammo2.tga
		rgbGen identity
	}
	
}
models/powerups/ammo/lighammo
{
	nopicmip
       {
	        map textures/effects/envmapligh.tga
		 //tcmod scale 3 3
                tcmod rotate 350
                tcmod scroll 3 1
		//tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/lighammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/lighammo1
{
	nopicmip
	{
	        map textures/effects/envmapligh.tga
                tcGen environment
		//tcmod scale 2 2
                tcmod rotate 6
                tcmod scroll .09 .09
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/lighammo2
{
	nopicmip
	{
		map models/powerups/ammo/lighammo2.tga
		rgbGen identity
	}
	
}
models/powerups/ammo/machammo
{
	nopicmip
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/machammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/machammo1
{
	nopicmip
       {
	        map textures/effects/envmapmach.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/machammo2
{
	nopicmip
	{
		map models/powerups/ammo/machammo2.tga
		rgbGen identity
	}
	
}
models/powerups/ammo/plasammo1
{
	nopicmip
       {
	        map textures/effects/envmapplas.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/plasammo
{
	nopicmip
       {
	        map textures/effects/envmapplas.tga
                //tcmod scale 3 3
                tcmod rotate 350
                tcmod scroll 3 1
		//tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/plasammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/plasammo2
{
	nopicmip
	{
		map models/powerups/ammo/plasammo2.tga
		rgbGen identity
	}
	
}
models/powerups/ammo/railammo1
{
	nopicmip
       {
	        map textures/effects/envmaprail.tga
                tcGen environment
		//tcmod scale 4 4
                //tcmod rotate 70
                //tcmod scroll .5 .5
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/railammo
{
	nopicmip
       {
	        map textures/effects/envmaprail.tga
                //tcmod scale 3 3
                tcmod rotate 350
                tcmod scroll 3 1
		//tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/railammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/railammo2
{
	nopicmip
	{
		map models/powerups/ammo/railammo2.tga
		rgbGen identity
	}
	
}
models/powerups/ammo/rockammo
{
	nopicmip
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/rockammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/rockammo1
{
	nopicmip
       {
	        map textures/effects/envmaproc.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/rockammo2
{
	nopicmip
	{
		map models/powerups/ammo/rockammo2.tga
		rgbGen identity
	}
	
}
models/powerups/ammo/shotammo
{
	nopicmip
       {
	        map textures/effects/tinfx2c.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/shotammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/shotammo1
{
	nopicmip
       {
	        map textures/effects/envmapgold3.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/shotammo2
{
	{
		map models/powerups/ammo/shotammo2.tga
		rgbGen identity
	}

}

models/powerups/armor/energy_grn1
{
	nopicmip
   deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/effects/envmaprail.tga
		blendFunc GL_ONE GL_ONE
                tcGen environment
                tcmod rotate 30
		tcMod scroll 1 1
                rgbGen wave triangle -.3 1.3 0 .3
	}

}

models/powerups/armor/energy_gre1
{
	nopicmip
	{
		map models/powerups/armor/energy_gre1.tga 
		blendFunc GL_ONE GL_ONE
		tcMod scroll 7.4 1.3
	}
}

models/powerups/armor/energy_red1
{
	nopicmip
	{
		map models/powerups/armor/energy_red1.tga 
                blendFunc GL_ONE GL_ONE
		tcMod scroll 7.4 1.3
	}

}

models/powerups/armor/energy_yel1
{
	nopicmip
	{
		map models/powerups/armor/energy_yel3.tga 
		blendFunc GL_ONE GL_ONE
		tcMod scroll 7.4 1.3
	}

}

models/powerups/armor/newred
{ 
	nopicmip
        {
                map textures/sfx/specular.tga         
                tcGen environment
                rgbGen identity
	}  
        {
		map models/powerups/armor/newred.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}     
        {
		map models/powerups/armor/newred.tga
                blendfunc add
		rgbGen identity
	}            
}

models/powerups/armor/newyellow
{   
	nopicmip   
        {
                map textures/sfx/specular5.tga          
                tcGen environment
                rgbGen identity
	}  
        {
		map models/powerups/armor/newyellow.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
        {
		map models/powerups/armor/newyellow.tga
                blendfunc add
		rgbGen identity
	}               
}

models/powerups/armor/newgreen
{      
	nopicmip
      {
            map textures/sfx/specular.tga          
            tcGen environment
            rgbGen identity
	}  
        {
		map models/powerups/armor/newgreen.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}     
        {
		map models/powerups/armor/newgreen.tga
                blendfunc add
		rgbGen identity
	}     
}

models/powerups/health/yellow
{
	nopicmip	
	{
		map textures/effects/envmapmach.tga
                tcGen environment
		//blendfunc GL_ONE GL_ONE
		
	}
        
}

models/powerups/health/sphere
{
	nopicmip
	{
		map textures/effects/tinfx2c.tga
		tcmod rotate 22
                tcmod scroll 1 1
                tcGen environment
		blendfunc GL_ONE GL_ONE
	}
}

models/powerups/health/red
{	
	nopicmip
	{
		map textures/effects/envmapgold.tga
                tcGen environment
		blendfunc GL_ONE GL_ZERO
		
	}
}

models/powerups/health/sphere_orange
{
	nopicmip
	{
		map textures/effects/envmapgold.tga
		tcmod rotate 22
                tcmod scroll 1 1
                tcGen environment
		blendfunc add
	}
}

models/powerups/health/mega2
{	
	nopicmip	
	{
		map textures/effects/megahealth1.tga
                tcGen environment
		blendfunc GL_ONE GL_ZERO
		
	}
}

models/powerups/health/mega1
{
	nopicmip
	{
		map textures/effects/megahealth1.tga
                tcGen environment
                tcmod rotate 33
                tcmod scroll 1 1
		blendfunc GL_ONE GL_ONE
	}
}

models/powerups/health/blue
{
	nopicmip
	{
		map textures/effects/megahealth1.tga
		tcGen environment
		blendfunc GL_ONE GL_ONE
	}
}

models/powerups/health/sphere_blue
{
	nopicmip
	{
		map textures/effects/megahealth2.tga
		tcmod rotate 22
                tcmod scroll 1 1
                tcGen environment
		blendfunc GL_ONE GL_ONE
	}

}
models/powerups/health/blue_ring
{
	nopicmip
	cull disable
        deformVertexes autoSprite
	{
		map textures/effects/blue_ring.tga
		blendfunc GL_ONE GL_ONE
	}
}
models/powerups/health/green
{
	nopicmip
	
	{
		map textures/effects/envmaprail.tga
		tcGen environment
		
	}
}

models/powerups/health/sphere_green
{
	nopicmip
	{
		map textures/effects/tinfx2c.tga
		tcmod rotate 22
                tcmod scroll 1 1
                tcGen environment
		blendfunc GL_ONE GL_ONE
	}
}

models/powerups/armor/shard2
{
	nopicmip
        {
                map textures/effects/shard_fx.tga
                tcGen environment
                rgbGen identity
        }
        {
                map models/powerups/armor/shard2.tga
                blendFunc blend
                rgbGen lightingdiffuse
        }
}

models/powerups/instant/scan
{
	{
		map models/powerups/instant/scan.tga
	}
	{
		map textures/effects/envmapdim.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
	}
}
models/powerups/instant/quad
{
	//{
	//	map gfx/colors/darkblue.tga
	//}
	{
		map textures/effects/envmapblue.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/instant/enviro
{
	//{
	//	map models/powerups/instant/enviro.tga
	//}
	{
		map textures/effects/envmapgold.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/instant/flight
{
	{
		map textures/effects/envmappurp.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/instant/haste
{
	{
		map textures/effects/envmapyel.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/instant/invis
{
	{
		map textures/effects/tinfx2c.tga
                //map textures/sfx/specular.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
	}
}
models/powerups/instant/regen
{
	{
		map textures/effects/envmapred.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
}

models/weapons2/gauntlet/gauntlet1
{
	sort additive
	cull disable
	nopicmip
	{
		map	models/weapons2/gauntlet/gauntlet1.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/gauntlet/gauntlet2
{      
	nopicmip
       {
                map textures/sfx/specular.tga
                blendFunc GL_ONE GL_ZERO
                tcGen environment
                rgbGen lightingDiffuse
                rgbGen identity
	}  
        {
		map models/weapons2/gauntlet/gauntlet2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen lightingDiffuse
	}  
}
  
models/weapons2/gauntlet/gauntlet3
{
	nopicmip
	cull disable
	sort additive
        nopicmip
	{
               AnimMap 10 models/weapons2/gauntlet/gauntlet3.tga models/weapons2/gauntlet/gauntlet4.tga
	       blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/grenadel/grenadel
{
	cull disable
	nopicmip
	{
		map	models/weapons2/grenadel/grenadel.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/grenadel/f_grenadel
{
	nopicmip
	sort additive
	cull disable
	{
		map	models/weapons2/grenadel/f_grenadel.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/grenadel/ring
{
	nopicmip
	
	{
		map models/weapons2/grenadel/ring.tga
        }

        {
                map textures/effects/envmapdim.tga
		tcGen environment
		blendFunc GL_ONE GL_ONE
                //rgbGen identity
        }
}

models/weapons2/lightning/lightning2
{
	cull disable
	nopicmip
	{
		map	models/weapons2/lightning/lightning2.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/lightning/ball
{
   deformVertexes autoSprite
        {
		map models/weapons2/lightning/ball.tga
		blendfunc GL_ONE GL_ONE
                rgbgen wave triangle 1 2 0 7
                tcMod rotate 360
	}
        {
		map models/weapons2/lightning/ball.tga
		blendfunc GL_ONE GL_ONE
                rgbgen wave triangle 1 5 1 3
                tcMod rotate -200
	}
	
}

models/weapons2/lightning/ball1
{
	nopicmip
	sort additive
	cull disable
	
	{
		animMap 15 models/weapons2/lightning/ball1.tga models/weapons2/lightning/ball2.tga
		blendFunc GL_ONE GL_ONE
		rgbGen vertex				
	}
	
}

models/weapons2/lightning/button
{
	nopicmip
        {
		map models/weapons2/lightning/button.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin 1 1 0 1		
	}
	
}

models/weapons2/lightning/crackle1
{
	sort additive
	cull disable
	
	{
		animMap 15 models/weapons2/lightning/crackle1.tga models/weapons2/lightning/crackle2.tga models/weapons2/lightning/crackle3.tga models/weapons2/lightning/crackle4.tga models/weapons2/lightning/crackle5.tga models/weapons2/lightning/crackle6.tga models/weapons2/lightning/crackle7.tga models/weapons2/lightning/crackle8.tga
		blendFunc GL_ONE GL_ONE
	}
		
}

models/weapons2/lightning/f_lightning
{
	nopicmip
	sort additive
	cull disable
	{
		map models/weapons2/lightning/f_lightning.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/lightning/glass
{
        {
		map models/weapons2/lightning/glass.tga
	}
	{
		map textures/effects/envmapdim.tga
		tcGen environment
		blendfunc GL_ONE GL_ONE
		rgbGen lightingDiffuse
	}
}

models/weapons2/lightning/trail
{
	{
		map models/weapons2/lightning/trail.tga
		tcMod scroll 3.1 1
                rgbgen wave triangle 1 2 0 7
		blendfunc GL_ONE GL_ONE
	}
        {
		map models/weapons2/lightning/trail.tga
		tcMod scroll -1.7 1
                rgbgen wave triangle 1 1.1 0 5.1
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/lightning/trail1
{
	sort additive
	cull disable
	
	{
		animMap 15 models/weapons2/lightning/trail1.tga models/weapons2/lightning/trail2.tga models/weapons2/lightning/trail3.tga models/weapons2/lightning/trail4.tga
		blendFunc GL_ONE GL_ONE
		rgbGen vertex				
	}
	
}

models/weapons2/lightning/trail2
{
	{
		map models/weapons2/lightning/trail2.tga
		tcMod scroll 3.1 1
                rgbgen wave triangle 1 2 0 7
		blendfunc GL_ONE GL_ONE
	}
        {
		map models/weapons2/lightning/trail2.tga
		tcMod scroll -1.7 1
                rgbgen wave triangle 1 1.1 0 5.1
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/machinegun/machinegun
{
	cull disable
	nopicmip
	{
		map	models/weapons2/machinegun/machinegun.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/machinegun/f_machinegun
{
	sort additive
	cull disable
	{
		map	models/weapons2/machinegun/f_machinegun.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/plasma/plasma
{
        nopicmip
	{
		map textures/effects/quadmap88.tga 
                tcmod rotate 33
                tcMod scroll 1 .1
                rgbGen identity
	}
	{
		map	models/weapons2/plasma/plasma.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen lightingDiffuse	
	}
}

models/weapons2/plasma/f_plasma
{
	nopicmip
	cull disable
	sort additive
	{
		map models/weapons2/plasma/f_plasma.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/plasma/plasma_glass
{
	nopicmip
	{
		map textures/effects/quadmap88.tga 
		tcGen environment
                tcMod scroll .01 .02
		blendfunc GL_ONE GL_ONE
		rgbGen lightingDiffuse
	}
}

models/weapons2/plasma/plasma_glo
{
	nopicmip
	{
		map textures/effects/quadmap88.tga
                tcmod rotate 33
                tcMod scroll .7 1
                rgbGen identity
	}
        {
		map textures/effects/quadmap88.tga
                tcmod rotate -33
                tcMod scroll -1 .7
                blendfunc add
                rgbGen identity
	}
        {
		map textures/common/mirror1.tga
		tcGen environment
                tcMod scroll .01 .02
		blendfunc add
		rgbGen lightingDiffuse
	}
}

models/weapons2/railgun/railgun1
{
	cull disable
	nopicmip
	{
		map	models/weapons2/railgun/railgun1.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/railgun/f_railgun2
{
	sort additive
	cull disable
	nopicmip
	{
		map	models/weapons2/railgun/f_railgun2.tga
		blendfunc GL_ONE GL_ONE
		rgbgen entity
	}
}

models/weapons2/railgun/railgun2
{
	sort additive
	cull disable
	nopicmip
	{
		map	models/weapons2/railgun/railgun2.glow.tga
		blendfunc GL_ONE GL_ONE
		rgbGen entity	// identity
	}
}

models/weapons2/railgun/railgun3
{
	nopicmip
	{
		map	models/weapons2/railgun/railgun3.tga
		rgbGen lightingDiffuse				
	}

	{
		map	models/weapons2/railgun/railgun3.glow.tga
		blendfunc GL_ONE GL_ONE
		rgbGen entity	// identity
	}
}

models/weapons2/railgun/railgun4
{
	nopicmip
	{
		map models/weapons2/railgun/railgun4.tga
		tcMod scroll 0 1
		rgbGen entity	// identity
	}

}

models/weapons2/rocketl/rocketl
{
	cull disable
	nopicmip
	{
		map	models/weapons2/rocketl/rocketl.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/rocketl/f_rocketl
{
	nopicmip
	cull disable
	sort additive
	{
		map models/weapons2/rocketl/f_rocketl.tga
		blendfunc GL_ONE GL_ONE
	}
}

// this one can go away eventually
models/weapons2/rocketl/rocketl14
{
	nopicmip
	cull disable
	sort additive
	{
		map models/weapons2/rocketl/f_rocketl.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/weapons2/shotgun/shotgun
{
	cull disable
	nopicmip
	{
		map	models/weapons2/shotgun/shotgun.tga
		rgbGen lightingDiffuse	
	}
}

models/weapons2/shotgun/f_shotgun
{
	nopicmip
	sort additive
	cull disable
	{
		map	models/weapons2/shotgun/f_shotgun.tga
		blendfunc add
	}
}

models/weapons2/shotgun/shotgun_laser
{
	nopicmip
	
	{
		map	models/weapons2/shotgun/shotgun_laser.tga
		blendfunc add
	}
}

models/weapons2/shells/m_shell
{
	
	{
		map textures/effects/envmapgold2.tga
		tcGen environment
		
	}
}

models/weapons2/shells/shell_shotgun01
{
	
	{
		map textures/effects/regenmap2.tga
		tcGen environment
		
	}
}

models/weapons2/shells/shell_shotgun02
{
	
	{
		map textures/effects/envmap3.tga
		tcGen environment
		
	}
}

