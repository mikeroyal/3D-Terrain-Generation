//--------------------------------------------------------------------------------------
// File: lecture 8.fx
//
// Copyright (c) Microsoft Corporation. All rights reserved.
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// Constant Buffer Variables
//--------------------------------------------------------------------------------------
Texture2D txDiffuse : register( t0 );
Texture2D txDepth : register(t1);
SamplerState samLinear : register( s0 );

cbuffer ConstantBuffer : register( b0 )
{
matrix World;
matrix View;
matrix Projection;
float4 info;
};



//--------------------------------------------------------------------------------------
struct VS_INPUT
{
    float4 Pos : POSITION;
    float2 Tex : TEXCOORD0;
};

struct PS_INPUT
{
    float4 Pos : SV_POSITION;
    float2 Tex : TEXCOORD0;
};


//--------------------------------------------------------------------------------------
// Vertex Shader
//--------------------------------------------------------------------------------------
PS_INPUT VS( VS_INPUT input )
{
    PS_INPUT output = (PS_INPUT)0;
	
	float4 pos = input.Pos;

	float4 dH = txDepth.SampleLevel(samLinear, input.Tex, 0);

	pos.y += dH.y * 10 - 10;

	//pos = mul(pos, World);
    output.Pos = mul( pos, World );
    output.Pos = mul( output.Pos, View );
    output.Pos = mul( output.Pos, Projection );
    output.Tex = input.Tex;
    
    return output;
}


//--------------------------------------------------------------------------------------
// Pixel Shader
//--------------------------------------------------------------------------------------
float4 PS( PS_INPUT input) : SV_Target
{
	
    float4 color = txDiffuse.Sample( samLinear, input.Tex );
	float depth = saturate(input.Pos.z / input.Pos.w);
	//depth = pow(depth,0.97);
	//color = depth;// (depth*0.9 + 0.02);
	color.a = 1;
	return color;
}
