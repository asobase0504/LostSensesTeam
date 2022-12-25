xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 76;
 4.34967;-4.09233;3.43487;,
 -0.46583;-4.18626;5.66390;,
 2.03786;-4.30309;11.06763;,
 6.85323;-4.20910;8.83852;,
 3.10494;-26.13729;11.47687;,
 -2.20012;-26.23121;11.36941;,
 -2.08161;-26.11441;5.41498;,
 3.22376;-26.02052;5.52241;,
 1.81794;-13.61932;11.69657;,
 -2.20012;-26.23121;11.36941;,
 3.10494;-26.13729;11.47687;,
 7.12040;-13.37301;11.80709;,
 6.85323;-4.20910;8.83852;,
 2.03786;-4.30309;11.06763;,
 1.93901;-13.63669;5.73968;,
 -2.20012;-26.23121;11.36941;,
 1.81794;-13.61932;11.69657;,
 2.03786;-4.30309;11.06763;,
 7.24146;-13.39020;5.85003;,
 3.22376;-26.02052;5.52241;,
 -2.08161;-26.11441;5.41498;,
 1.93901;-13.63669;5.73968;,
 -0.46583;-4.18626;5.66390;,
 4.34967;-4.09233;3.43487;,
 7.12040;-13.37301;11.80709;,
 3.10494;-26.13729;11.47687;,
 7.24146;-13.39020;5.85003;,
 6.85323;-4.20910;8.83852;,
 -1.57598;-3.81609;-9.35469;,
 -6.39130;-3.90993;-7.12571;,
 -3.55600;-4.04220;-1.00593;,
 1.25932;-3.94833;-3.23482;,
 4.75088;-25.87650;-8.52319;,
 0.12533;-25.97039;-5.92316;,
 -3.18154;-25.83817;-11.80170;,
 1.44406;-25.74425;-14.40169;,
 4.11162;-13.65804;-7.33621;,
 0.12533;-25.97039;-5.92316;,
 4.75088;-25.87650;-8.52319;,
 8.75893;-13.41170;-9.89159;,
 1.25932;-3.94833;-3.23482;,
 -3.55600;-4.04220;-1.00593;,
 0.85716;-13.67793;-13.24733;,
 0.12533;-25.97039;-5.92316;,
 4.11162;-13.65804;-7.33621;,
 -3.55600;-4.04220;-1.00593;,
 5.50457;-13.43149;-15.80267;,
 1.44406;-25.74425;-14.40169;,
 -3.18154;-25.83817;-11.80170;,
 0.85716;-13.67793;-13.24733;,
 -6.39130;-3.90993;-7.12571;,
 -1.57598;-3.81609;-9.35469;,
 8.75893;-13.41170;-9.89159;,
 4.75088;-25.87650;-8.52319;,
 5.50457;-13.43149;-15.80267;,
 1.25932;-3.94833;-3.23482;,
 -1.60713;0.17374;-9.25422;,
 -6.42253;0.07987;-7.02506;,
 2.00663;-0.31332;11.16824;,
 6.82204;-0.21939;8.93917;,
 -6.42253;0.07987;-7.02506;,
 -6.39130;-3.90993;-7.12571;,
 2.03786;-4.30309;11.06763;,
 2.00663;-0.31332;11.16824;,
 -6.39130;-3.90993;-7.12571;,
 -1.57598;-3.81609;-9.35469;,
 6.85323;-4.20910;8.83852;,
 2.03786;-4.30309;11.06763;,
 -1.57598;-3.81609;-9.35469;,
 -1.60713;0.17374;-9.25422;,
 6.82204;-0.21939;8.93917;,
 6.85323;-4.20910;8.83852;,
 -6.42253;0.07987;-7.02506;,
 -1.60713;0.17374;-9.25422;,
 6.82204;-0.21939;8.93917;,
 2.00663;-0.31332;11.16824;;
 
 26;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;8,11,12,13;,
 4;14,6,15,16;,
 4;14,16,17,1;,
 4;18,19,20,21;,
 4;18,21,22,23;,
 4;24,25,7,26;,
 4;24,26,0,27;,
 4;28,29,30,31;,
 4;32,33,34,35;,
 4;36,37,38,39;,
 4;36,39,40,41;,
 4;42,34,43,44;,
 4;42,44,45,29;,
 4;46,47,48,49;,
 4;46,49,50,51;,
 4;52,53,35,54;,
 4;52,54,28,55;,
 4;56,57,58,59;,
 4;60,61,62,63;,
 4;64,65,66,67;,
 4;68,69,70,71;,
 4;68,61,72,73;,
 4;74,75,62,71;;
 
 MeshMaterialList {
  8;
  26;
  4,
  7,
  4,
  5,
  4,
  5,
  4,
  5,
  4,
  5,
  4,
  7,
  4,
  5,
  4,
  5,
  4,
  5,
  4,
  5,
  4,
  4,
  4,
  4,
  4,
  4;;
  Material {
   0.643200;0.800000;0.068800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.772000;0.536800;0.690400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.712000;0.624000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.091200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.492549;0.749804;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.489600;0.489600;0.489600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  33;
  -0.007825;0.999651;0.025233;,
  0.018085;-0.999651;-0.019246;,
  0.087237;0.084340;0.992611;,
  -0.990153;0.103862;0.093859;,
  -0.089865;-0.082461;-0.992534;,
  0.342048;0.926288;-0.158091;,
  0.005816;-0.999651;-0.025758;,
  -0.007810;0.999651;0.025222;,
  0.467894;-0.147323;0.871419;,
  -0.825143;0.324607;0.462352;,
  -0.467935;0.146152;-0.871594;,
  -0.007816;0.999651;0.025224;,
  -0.907350;-0.017696;0.420003;,
  0.007821;-0.999651;-0.025222;,
  -0.019914;-0.019591;0.999610;,
  0.192440;0.186387;0.963445;,
  -0.952055;0.305476;-0.016581;,
  -0.974489;-0.103391;0.199203;,
  0.019892;0.019602;-0.999610;,
  -0.197599;-0.182668;-0.963113;,
  0.990427;-0.100422;-0.094710;,
  0.953175;-0.301961;0.016655;,
  0.973792;0.106580;-0.200923;,
  0.486728;-0.059202;0.871545;,
  0.445260;-0.234248;0.864217;,
  -0.641447;-0.697990;0.318363;,
  -0.486717;0.059703;-0.871517;,
  -0.445492;0.231458;-0.864849;,
  0.826284;-0.320834;-0.462948;,
  0.636704;0.703435;-0.315890;,
  0.907350;0.017673;-0.420005;,
  -0.420316;0.019579;-0.907167;,
  0.420317;-0.019593;0.907166;;
  26;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,14,14,2;,
  4;2,2,15,15;,
  4;3,16,16,3;,
  4;3,3,17,17;,
  4;4,18,18,4;,
  4;4,4,19,19;,
  4;20,21,21,20;,
  4;20,20,22,22;,
  4;5,7,7,5;,
  4;6,6,6,6;,
  4;8,23,23,8;,
  4;8,8,24,24;,
  4;9,9,9,9;,
  4;25,25,25,25;,
  4;10,26,26,10;,
  4;10,10,27,27;,
  4;28,28,28,28;,
  4;29,29,5,5;,
  4;11,11,11,11;,
  4;12,12,12,12;,
  4;13,13,13,13;,
  4;30,30,30,30;,
  4;31,31,31,31;,
  4;32,32,32,32;;
 }
 MeshTextureCoords {
  76;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.428280;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.421330;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.434400;,
  0.000000;1.000000;,
  0.000000;0.428280;,
  0.000000;0.000000;,
  1.000000;0.427450;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.434400;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.421330;,
  1.000000;1.000000;,
  0.000000;0.427450;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.441950;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.435000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.448880;,
  0.000000;1.000000;,
  0.000000;0.441950;,
  0.000000;0.000000;,
  1.000000;0.441930;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.448880;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.435000;,
  1.000000;1.000000;,
  0.000000;0.441930;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;;
 }
}
