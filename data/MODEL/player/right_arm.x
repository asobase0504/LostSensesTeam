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
 28;
 2.34283;4.00079;-4.72151;,
 -3.41446;3.89269;-2.70115;,
 -1.72172;1.60327;1.99961;,
 4.03544;1.71140;-0.02093;,
 4.71580;-15.69916;-8.74572;,
 -1.04153;-15.80717;-6.72491;,
 -2.73423;-13.51761;-11.42553;,
 3.02311;-13.40964;-13.44610;,
 -3.02828;-8.06789;-2.24025;,
 -1.04153;-15.80717;-6.72491;,
 4.71580;-15.69916;-8.74572;,
 2.76742;-7.67578;-4.13618;,
 4.03544;1.71140;-0.02093;,
 -1.72172;1.60327;1.99961;,
 -4.73732;-5.89904;-6.99352;,
 -1.04153;-15.80717;-6.72491;,
 -3.02828;-8.06789;-2.24025;,
 -1.72172;1.60327;1.99961;,
 1.05848;-5.50672;-8.88949;,
 3.02311;-13.40964;-13.44610;,
 -2.73423;-13.51761;-11.42553;,
 -4.73732;-5.89904;-6.99352;,
 -3.41446;3.89269;-2.70115;,
 2.34283;4.00079;-4.72151;,
 2.76742;-7.67578;-4.13618;,
 4.71580;-15.69916;-8.74572;,
 1.05848;-5.50672;-8.88949;,
 4.03544;1.71140;-0.02093;;
 
 10;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;8,11,12,13;,
 4;14,6,15,16;,
 4;14,16,17,1;,
 4;18,19,20,21;,
 4;18,21,22,23;,
 4;24,25,7,26;,
 4;24,26,0,27;;
 
 MeshMaterialList {
  8;
  10;
  4,
  4,
  4,
  4,
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
  14;
  0.122772;0.908926;0.398472;,
  -0.122813;-0.908913;-0.398491;,
  0.308005;-0.416583;0.855331;,
  -0.949453;-0.181903;0.255834;,
  -0.307995;0.416583;-0.855335;,
  0.308010;-0.416583;0.855329;,
  0.308000;-0.416583;0.855333;,
  -0.924467;-0.340163;0.172192;,
  -0.943423;-0.017701;0.331118;,
  -0.307998;0.416595;-0.855328;,
  -0.307992;0.416570;-0.855342;,
  0.949750;0.176622;-0.258417;,
  0.927031;0.330135;-0.177834;,
  0.943430;0.017708;-0.331099;;
  10;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,5,5,2;,
  4;2,2,6,6;,
  4;3,7,7,3;,
  4;3,3,8,8;,
  4;4,9,9,4;,
  4;4,4,10,10;,
  4;11,12,12,11;,
  4;11,11,13,13;;
 }
 MeshTextureCoords {
  28;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.553660;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.537410;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.560560;,
  0.000000;1.000000;,
  0.000000;0.553660;,
  0.000000;0.000000;,
  1.000000;0.544300;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.560560;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.537410;,
  1.000000;1.000000;,
  0.000000;0.544300;,
  1.000000;0.000000;;
 }
}
