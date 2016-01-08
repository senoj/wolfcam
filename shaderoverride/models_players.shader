models/players/visor/quadmaniac
{	
	{	
		map models/players/visor/quadspecmap.tga
		rgbGen lightingDiffuse
	}
	{	
		map textures/effects/quadmap2.tga
		blendfunc GL_DST_COLOR GL_ZERO
		tcGen environment
                tcmod rotate 30
		//tcMod turb 0 0.2 0 .2
                tcmod scroll 1 .1
	}
	{
		map models/players/visor/quadmaniac.tga
		blendfunc GL_ONE GL_ONE
		rgbGen lightingDiffuse
	}
}
