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
 3.68545;1.46042;-1.18103;,
 -2.07175;1.35232;0.83960;,
 -0.34621;2.85557;5.83621;,
 5.41082;2.96357;3.81549;,
 11.44797;-15.44323;7.26865;,
 5.69069;-15.55123;9.28928;,
 3.96537;-17.05435;4.29262;,
 9.72257;-16.94644;2.27190;,
 0.95758;-8.90130;8.92288;,
 5.69069;-15.55123;9.28928;,
 11.44797;-15.44323;7.26865;,
 6.67395;-8.42469;6.80556;,
 5.41082;2.96357;3.81549;,
 -0.34621;2.85557;5.83621;,
 -0.85457;-9.62204;3.72094;,
 5.69069;-15.55123;9.28928;,
 0.95758;-8.90130;8.92288;,
 -0.34621;2.85557;5.83621;,
 4.86201;-9.14567;1.60374;,
 9.72257;-16.94644;2.27190;,
 3.96537;-17.05435;4.29262;,
 -0.85457;-9.62204;3.72094;,
 -2.07175;1.35232;0.83960;,
 3.68545;1.46042;-1.18103;,
 6.67395;-8.42469;6.80556;,
 11.44797;-15.44323;7.26865;,
 4.86201;-9.14567;1.60374;,
 5.41082;2.96357;3.81549;;
 
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
  5,
  5,
  4,
  5,
  4,
  5,
  4,
  5,
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
  -0.106670;0.961702;-0.252489;,
  0.106651;-0.961706;0.252484;,
  0.313964;0.273536;0.909178;,
  -0.889903;-0.269187;0.368254;,
  -0.313954;-0.273528;-0.909184;,
  0.313956;0.273547;0.909177;,
  0.313971;0.273526;0.909179;,
  -0.776320;-0.502511;0.380538;,
  -0.943424;-0.017695;0.331116;,
  -0.313960;-0.273519;-0.909184;,
  -0.313947;-0.273537;-0.909184;,
  0.893361;0.259026;-0.367166;,
  0.787868;0.484266;-0.380461;,
  0.943432;0.017717;-0.331093;;
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
  1.000000;0.636130;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.616200;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.593800;,
  0.000000;1.000000;,
  0.000000;0.636130;,
  0.000000;0.000000;,
  1.000000;0.573870;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.593800;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.616200;,
  1.000000;1.000000;,
  0.000000;0.573870;,
  1.000000;0.000000;;
 }
}
