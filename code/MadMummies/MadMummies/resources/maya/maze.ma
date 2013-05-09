//Maya ASCII 2013 scene
//Name: maze.ma
//Last modified: Tue, Apr 30, 2013 10:58:52 PM
//Codeset: 1252
file -rdi 1 -ns "wallModul1" -rfn "wallModul1RN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/wallModul1.ma";
file -rdi 1 -ns "wallModul2" -rfn "wallModul2RN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/wallModul2.ma";
file -rdi 1 -ns "wallModul3" -rfn "wallModul3RN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/wallModul3.ma";
file -rdi 1 -ns "myDuckie" -rfn "myDuckieRN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/myDuckie.ma";
file -r -ns "wallModul1" -dr 1 -rfn "wallModul1RN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/wallModul1.ma";
file -r -ns "wallModul2" -dr 1 -rfn "wallModul2RN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/wallModul2.ma";
file -r -ns "wallModul3" -dr 1 -rfn "wallModul3RN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/wallModul3.ma";
file -r -ns "myDuckie" -dr 1 -rfn "myDuckieRN" "D:/TUWien/MASTER/cg2_ue/maya_sandbox/myDuckie.ma";
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.241684955374375 10.578012354557663 22.850348758511245 ;
	setAttr ".r" -type "double3" -13.538352729577404 448.59999999991442 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 35.65247253353764;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.0606003284671282 85.535380291616661 22.287049688257103 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".rp" -type "double3" 0 0 1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" 0 1.4210854715202007e-014 -1.421085471520207e-014 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 82.535380291616633;
	setAttr ".ow" 34.356761731710215;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -14.651824029032962 2.9999999999999858 29.164565816201534 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Edges";
	setAttr ".rp" -type "double3" -0.5 3 2.4999999999999964 ;
	setAttr ".sp" -type "double3" -0.5 3 2.4999999999999964 ;
createNode transform -n "Edge4" -p "Edges";
	setAttr ".t" -type "double3" 24.000000000000021 0 23.000000000000007 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".rpt" -type "double3" 7.6571373978538989e-016 0 2 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "Edge4";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|Edges|Edge4|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "Edge4";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|Edges|Edge4|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Edge4";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|Edges|Edge4|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Edge3" -p "Edges";
	setAttr ".t" -type "double3" -23.000000000000021 0 24.000000000000007 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".rpt" -type "double3" -0.99999999999999956 0 1.0000000000000002 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "Edge3";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|Edges|Edge3|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "Edge3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|Edges|Edge3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Edge3";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|Edges|Edge3|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Edge1_R1C7" -p "Edges";
	setAttr ".t" -type "double3" 23.000000000000021 0 -24.000000000000007 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".rpt" -type "double3" 1.0000000000000004 0 0.99999999999999933 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "Edge1_R1C7";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|Edges|Edge1_R1C7|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "Edge1_R1C7";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|Edges|Edge1_R1C7|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Edge1_R1C7";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|Edges|Edge1_R1C7|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Edge2_R1C1" -p "Edges";
	setAttr ".t" -type "double3" -24.000000000000021 0 -23.000000000000004 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "Edge2_R1C1";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|Edges|Edge2_R1C1|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "Edge2_R1C1";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|Edges|Edge2_R1C1|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Edge2_R1C1";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|Edges|Edge2_R1C1|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R1C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 -23.000000000000007 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R1C2";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R1C2|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R1C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R1C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R1C6";
	setAttr ".t" -type "double3" 16.000000000000014 0 -23.000000000000007 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R1C6";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R1C6|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R1C6";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R1C6|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R1C3";
	setAttr ".t" -type "double3" -8.0000000000000071 0 -23.000000000000007 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R1C3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R1C3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R1C3";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R1C3|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R1C3";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R1C3|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R1C5";
	setAttr ".t" -type "double3" 8.0000000000000071 0 -23.000000000000007 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R1C5";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R1C5|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R1C5";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R1C5|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R1C5";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R1C5|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R1C4";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 0 -23.000000000000007 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R1C4";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R1C4|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R1C4";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R1C4|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R1C4";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R1C4|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C4_center";
	setAttr ".t" -type "double3" 0 0 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R4C4_center";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C4_center|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R4C4_center";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C4_center|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C7";
	setAttr ".t" -type "double3" 24.000000000000021 0 1.0000000000000002 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R4C7";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C7|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R4C7";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C7|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C3";
	setAttr ".t" -type "double3" -8.0000000000000071 0 -15.000000000000004 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R2C3";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C3|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R2C3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C7";
	setAttr ".t" -type "double3" 24.000000000000021 0 17.000000000000004 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R6C7";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C7|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C7";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C7|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R5C6";
	setAttr ".t" -type "double3" 16.000000000000014 0 9.0000000000000018 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R5C6";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R5C6|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R5C6";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R5C6|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R5C4";
	setAttr ".t" -type "double3" 0 0 9.0000000000000018 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R5C4";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R5C4|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R5C4";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R5C4|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C4";
	setAttr ".t" -type "double3" 0 0 17.000000000000004 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R6C4";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C4|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C4";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C4|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C3";
	setAttr ".t" -type "double3" -8.0000000000000071 0 17.000000000000004 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube2" -p "R6C3";
	setAttr ".t" -type "double3" 0 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C3|pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C3";
	setAttr ".t" -type "double3" -8.0000000000000071 0 1.0000000000000002 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R4C3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R4C3";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C3|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R4C3";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R4C3|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 1.0000000000000002 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R4C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R4C2";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C2|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R4C2";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R4C2|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C1";
	setAttr ".t" -type "double3" -24.000000000000021 0 -7.0000000000000018 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R3C1";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C1|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C1";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C1|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R3C1";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R3C1|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R5C1";
	setAttr ".t" -type "double3" -24.000000000000021 0 9.0000000000000018 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R5C1";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R5C1|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R5C1";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R5C1|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R5C1";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R5C1|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R5C7";
	setAttr ".t" -type "double3" 24.000000000000021 0 9.0000000000000018 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R5C7";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R5C7|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R5C7";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R5C7|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R5C7";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R5C7|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C7";
	setAttr ".t" -type "double3" 24.000000000000021 0 -7.0000000000000018 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R3C7";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C7|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C7";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C7|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R3C7";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R3C7|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 -15.000000000000004 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R2C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R2C2";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C2|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R2C2";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R2C2|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C3";
	setAttr ".t" -type "double3" -8.0000000000000071 0 -7.0000000000000018 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R3C3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C3";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C3|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R3C3";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R3C3|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C4";
	setAttr ".t" -type "double3" 0 0 -7.0000000000000018 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R3C4";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C4|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C4";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C4|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R3C4";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R3C4|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C5";
	setAttr ".t" -type "double3" 8.0000000000000071 0 -7.0000000000000018 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R3C5";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C5|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C5";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C5|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R3C5";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R3C5|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C6";
	setAttr ".t" -type "double3" 16.000000000000014 0 -7.0000000000000018 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R3C6";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C6|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C6";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C6|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R3C6";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R3C6|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R7C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 25.000000000000007 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R7C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R7C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R7C2";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R7C2|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R7C2";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R7C2|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R7C3";
	setAttr ".t" -type "double3" -8.0000000000000071 0 25.000000000000007 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0 3 -1 ;
	setAttr ".sp" -type "double3" 0 3 -1 ;
createNode transform -n "pCube1" -p "R7C3";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R7C3|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R7C3";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R7C3|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3" -p "R7C3";
	setAttr ".t" -type "double3" -3 3 2 ;
createNode mesh -n "pCubeShape3" -p "|R7C3|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C5";
	setAttr ".t" -type "double3" 8.0000000000000071 0 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R4C5";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R4C5|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R4C5";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C5|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R4C5";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C5|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C6";
	setAttr ".t" -type "double3" 15.000000000000014 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".rpt" -type "double3" 1.0000000000000004 0 0.99999999999999933 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R4C6";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R4C6|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R4C6";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C6|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R4C6";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C6|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R4C1";
	setAttr ".t" -type "double3" -23.000000000000021 0 -2.2204460492503131e-016 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".rpt" -type "double3" -0.99999999999999956 0 1.0000000000000002 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R4C1";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R4C1|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R4C1";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R4C1|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R4C1";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R4C1|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C1";
	setAttr ".t" -type "double3" -24.000000000000021 0 -15.000000000000004 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R2C1";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R2C1|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R2C1";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C1|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R2C1";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C1|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C7";
	setAttr ".t" -type "double3" 24.000000000000021 0 -15.000000000000004 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R2C7";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R2C7|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R2C7";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C7|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R2C7";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C7|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R3C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 -7.0000000000000018 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R3C2";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R3C2|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R3C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R3C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R3C2";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R3C2|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R5C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 9.0000000000000018 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R5C2";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R5C2|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R5C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R5C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R5C2";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R5C2|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C4";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 0 -15.000000000000004 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R2C4";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R2C4|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R2C4";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C4|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R2C4";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C4|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C5";
	setAttr ".t" -type "double3" 8.0000000000000071 0 -15.000000000000004 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R2C5";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R2C5|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R2C5";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C5|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R2C5";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C5|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R2C6";
	setAttr ".t" -type "double3" 16.000000000000014 0 -15.000000000000004 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R2C6";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R2C6|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R2C6";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R2C6|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R2C6";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R2C6|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C1";
	setAttr ".t" -type "double3" -24.000000000000021 0 17.000000000000004 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R6C1";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R6C1|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C1";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C1|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R6C1";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C1|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C6";
	setAttr ".t" -type "double3" 16.000000000000014 0 17.000000000000004 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R6C6";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R6C6|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C6";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C6|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R6C6";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C6|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C5";
	setAttr ".t" -type "double3" 8.0000000000000071 0 17.000000000000004 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R6C5";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R6C5|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C5";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C5|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R6C5";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C5|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R6C2";
	setAttr ".t" -type "double3" -16.000000000000014 0 17.000000000000004 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 3 -1 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-016 3 -1 ;
createNode transform -n "pCube3" -p "R6C2";
	setAttr ".t" -type "double3" -3 3 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode mesh -n "pCubeShape3" -p "|R6C2|pCube3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920322 0.0018409526
		 0.4602344 0.0018409526 0.4602344 0.46008337 0.0019920322 0.46008337 0.46798649 0.46008331
		 0.46798649 0.0018409487 0.62073392 0.0018409487 0.62073392 0.46008331 0.5397656 0.46407476
		 0.99800801 0.46407476 0.99800801 0.92231715 0.5397656 0.92231715 0.38088283 0.92231715
		 0.38088283 0.46407476 0.53363031 0.46407476 0.53363031 0.92231715 0.22200011 0.46407482
		 0.37474754 0.46407482 0.37474754 0.92231715 0.22200011 0.92231715 0.063117303 0.46407482
		 0.21586478 0.46407482 0.21586478 0.92231715 0.063117303 0.92231715;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -3 -3 1 3 -3 1 -3 3 1 3 3 1 -3 3 -1 3 3 -1
		 -3 -3 -1 3 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "R6C2";
	setAttr ".t" -type "double3" 0 3 -4 ;
createNode mesh -n "pCubeShape1" -p "|R6C2|pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0018653073 0.49813128
		 0.0018653073 0.0019920445 0.3739697 0.0019920445 0.3739697 0.49813128 0.3798165 0.49813128
		 0.3798165 0.0019920426 0.50385129 0.0019920426 0.50385129 0.49813128 0.51121426 0.49813128
		 0.51121426 0.0019920426 0.88331866 0.0019920426 0.88331866 0.49813128 0.81048483
		 0.99800801 0.81048483 0.50186878 0.93451965 0.50186878 0.93451965 0.99800801 0.68070495
		 0.50186878 0.80473977 0.50186878 0.80473977 0.87397319 0.68070495 0.87397319 0.55092514
		 0.50186878 0.67495996 0.50186878 0.67495996 0.87397319 0.55092514 0.87397319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -3 1 4 -3 1 -4 3 1 4 3 1 -4 3 -1 4 3 -1
		 -4 -3 -1 4 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "R6C2";
	setAttr ".t" -type "double3" 3 3 2 ;
createNode mesh -n "pCubeShape2" -p "|R6C2|pCube2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.0019920319 0.0018307695
		 0.22983931 0.0018307695 0.22983931 0.68537259 0.0019920319 0.68537259 0.77016079
		 0.91721135 0.77016079 0.68936402 0.99800801 0.68936402 0.99800801 0.91721135 0.23606119
		 0.0018307944 0.46390846 0.0018307944 0.46390846 0.68537259 0.23606119 0.68537259
		 0.53617823 0.68936402 0.76402551 0.68936402 0.76402551 0.91721135 0.53617823 0.91721135
		 0.47188446 0.0018307695 0.69973159 0.0018307695 0.69973159 0.68537259 0.47188446
		 0.68537259 0.70770764 0.0018307695 0.93555486 0.0018307695 0.93555486 0.68537259
		 0.70770764 0.68537259;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -3 1 1 -3 1 -1 3 1 1 3 1 -1 3 -1 1 3 -1
		 -1 -3 -1 1 -3 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 4 5 6 7
		f 4 2 9 -4 -9
		mu 0 4 8 9 10 11
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 16 17 18 19
		f 4 10 4 6 8
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.53\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"myDuckie:LOD3sp\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.53\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"myDuckie:LOD3sp\" \n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n"
		+ "                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"horizontal2\\\" -ps 1 100 64 -ps 2 100 36 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Hypergraph\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"hyperGraphPanel\\\" -l (localizedPanelLabel(\\\"Hypergraph\\\")) -mbv $menusOkayInPanels `;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"HyperGraphEd\\\");\\n            hyperGraph -e \\n                -graphLayoutStyle \\\"hierarchicalLayout\\\" \\n                -orientation \\\"horiz\\\" \\n                -mergeConnections 1\\n                -zoom 0.53\\n                -animateTransition 0\\n                -showRelationships 1\\n                -showShapes 0\\n                -showDeformers 0\\n                -showExpressions 0\\n                -showConstraints 0\\n                -showUnderworld 0\\n                -showInvisible 0\\n                -transitionFrames 5\\n                -currentNode \\\"myDuckie:LOD3sp\\\" \\n                -opaqueContainers 0\\n                -freeform 0\\n                -imagePosition 0 0 \\n                -imageScale 1\\n                -imageEnabled 0\\n                -graphType \\\"DAG\\\" \\n                -heatMapDisplay 0\\n                -updateSelection 1\\n                -updateNodeAdded 1\\n                -useDrawOverrideColor 0\\n                -limitGraphTraversal -1\\n                -range 0 0 \\n                -iconSize \\\"largeIcons\\\" \\n                -showCachedConnections 0\\n                $editorName\"\n"
		+ "\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Hypergraph\\\")) -mbv $menusOkayInPanels  $panelName;\\n\\n\\t\\t\\t$editorName = ($panelName+\\\"HyperGraphEd\\\");\\n            hyperGraph -e \\n                -graphLayoutStyle \\\"hierarchicalLayout\\\" \\n                -orientation \\\"horiz\\\" \\n                -mergeConnections 1\\n                -zoom 0.53\\n                -animateTransition 0\\n                -showRelationships 1\\n                -showShapes 0\\n                -showDeformers 0\\n                -showExpressions 0\\n                -showConstraints 0\\n                -showUnderworld 0\\n                -showInvisible 0\\n                -transitionFrames 5\\n                -currentNode \\\"myDuckie:LOD3sp\\\" \\n                -opaqueContainers 0\\n                -freeform 0\\n                -imagePosition 0 0 \\n                -imageScale 1\\n                -imageEnabled 0\\n                -graphType \\\"DAG\\\" \\n                -heatMapDisplay 0\\n                -updateSelection 1\\n                -updateNodeAdded 1\\n                -useDrawOverrideColor 0\\n                -limitGraphTraversal -1\\n                -range 0 0 \\n                -iconSize \\\"largeIcons\\\" \\n                -showCachedConnections 0\\n                $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "wallModul1RN";
	setAttr -s 20 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wallModul1RN"
		"wallModul1RN" 122
		2 "|wallModul1:wallModul_parallel" "miDeriveFromMaya" " 1"
		2 "|wallModul1:wallModul_parallel" "miHide" " 0"
		2 "|wallModul1:wallModul_parallel" "miVisible" " 2"
		2 "|wallModul1:wallModul_parallel" "miTrace" " 2"
		2 "|wallModul1:wallModul_parallel" "miShadow" " 2"
		2 "|wallModul1:wallModul_parallel" "miCaustic" " 5"
		2 "|wallModul1:wallModul_parallel" "miGlobillum" " 5"
		2 "|wallModul1:wallModul_parallel" "miExportGeoShader" " 0"
		2 "|wallModul1:wallModul_parallel" "miProxyRenderable" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miDeriveFromMaya" " 1"
		
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miHide" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miVisible" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miTrace" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miShadow" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miCaustic" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miGlobillum" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miExportGeoShader" 
		" 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miProxyRenderable" 
		" 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideCaustics" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miCausticAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miCausticRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miGlobillumRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherView" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMinSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMaxSamples" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miTransparencyCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miTransparencyReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miReflectionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miRefractionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miShadingSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMaxDisplace" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miDeriveFromMaya" " 1"
		
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miHide" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miVisible" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miTrace" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miShadow" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miCaustic" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miGlobillum" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miExportGeoShader" 
		" 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miProxyRenderable" 
		" 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideCaustics" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miCausticAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miCausticRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miGlobillumRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherView" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMinSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMaxSamples" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miTransparencyCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miTransparencyReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miReflectionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miRefractionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miShadingSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMaxDisplace" " 0"
		2 "wallModul1:defaultRenderLayer" "globalIllum" " 0"
		2 "wallModul1:wall_material" "miRefractionBlur" " 0"
		2 "wallModul1:wall_material" "miRefractionRays" " 1"
		2 "wallModul1:wall_material" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul1:wall_material" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "wallModul1:wall_material" "miDeriveFromMaya" " 1"
		2 "wallModul1:wall_material" "miRefractiveIndex" " 1"
		2 "wallModul1:wall_material" "miRefractions" " 1"
		2 "wallModul1:wall_material" "miAbsorbs" " 1"
		2 "wallModul1:wall_material" "miDiffuse" " 0.8"
		2 "wallModul1:wall_material" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul1:wall_material" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul1:wall_material" "miTranslucence" " 0"
		2 "wallModul1:wall_material" "miTranslucenceFocus" " 0.5"
		2 "wallModul1:wall_material" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul1:wall_material" "miFrameBufferWriteOperation" " 1"
		2 "wallModul1:wall_material" "miFrameBufferWriteFlags" " 0"
		2 "wallModul1:wall_material" "miFrameBufferWriteFactor" " 1"
		2 "wallModul1:wall_material" "miRefractionBlurLimit" " 1"
		2 "wallModul1:wall_material" "miScatterRadius" " 0"
		2 "wallModul1:wall_material" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "wallModul1:wall_material" "miScatterAccuracy" " 97"
		2 "wallModul1:wall_material" "miScatterFalloff" " 0"
		2 "wallModul1:wall_material" "miScatterLimit" " 1"
		2 "wallModul1:wall_material" "miScatterCache" " 0"
		2 "wallModul1:lambert2SG" "miExportMrMaterial" " 0"
		2 "wallModul1:lambert2SG" "miOpaque" " 0"
		2 "wallModul1:lambert2SG" "miCutAwayOpacity" " 0"
		2 "wallModul1:lambert2SG" "miExportShadingEngine" " 1"
		2 "wallModul1:lambert2SG" "miExportVolumeSampler" " 0"
		2 "wallModul1:lambert2SG" "miContourEnable" " 0"
		2 "wallModul1:lambert2SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul1:lambert2SG" "miContourAlpha" " 1"
		2 "wallModul1:lambert2SG" "miContourWidth" " 1.25"
		2 "wallModul1:lambert2SG" "miContourRelativeWidth" " 0"
		2 "wallModul1:file1" "miUseEllipticalFilter" " 0"
		2 "wallModul1:file1" "miEllipticalMaxMinor" " 8"
		2 "wallModul1:file1" "miOverrideConvertToOptim" " 0"
		2 "wallModul1:file1" "miConvertToOptim" " 0"
		"wallModul1RN" 145
		2 "|wallModul1:wallModul_parallel" "translate" " -type \"double3\" 16 0 25"
		
		2 "|wallModul1:wallModul_parallel" "rotatePivot" " -type \"double3\" 0 3 -1"
		
		2 "|wallModul1:wallModul_parallel" "scalePivot" " -type \"double3\" 0 3 -1"
		
		2 "|wallModul1:wallModul_parallel" "miDeriveFromMaya" " 1"
		2 "|wallModul1:wallModul_parallel" "miHide" " 0"
		2 "|wallModul1:wallModul_parallel" "miVisible" " 2"
		2 "|wallModul1:wallModul_parallel" "miTrace" " 2"
		2 "|wallModul1:wallModul_parallel" "miShadow" " 2"
		2 "|wallModul1:wallModul_parallel" "miCaustic" " 5"
		2 "|wallModul1:wallModul_parallel" "miGlobillum" " 5"
		2 "|wallModul1:wallModul_parallel" "miExportGeoShader" " 0"
		2 "|wallModul1:wallModul_parallel" "miProxyRenderable" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miDeriveFromMaya" " 1"
		
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miHide" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miVisible" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miTrace" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miShadow" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miCaustic" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miGlobillum" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miExportGeoShader" 
		" 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2" "miProxyRenderable" 
		" 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideCaustics" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miCausticAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miCausticRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miGlobillumRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherView" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miOverrideSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMinSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMaxSamples" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miTransparencyCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miTransparencyReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miReflectionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miRefractionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miShadingSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube2|wallModul1:pCubeShape2" 
		"miMaxDisplace" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miDeriveFromMaya" " 1"
		
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miHide" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miVisible" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miTrace" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miShadow" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miCaustic" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miGlobillum" " 5"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miExportGeoShader" 
		" 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1" "miProxyRenderable" 
		" 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideCaustics" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miCausticAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miCausticRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miGlobillumRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherView" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miOverrideSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMinSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMaxSamples" " 2"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miTransparencyCast" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miTransparencyReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miReflectionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miRefractionReceive" " 1"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miShadingSamples" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul1:wallModul_parallel|wallModul1:pCube1|wallModul1:pCubeShape1" 
		"miMaxDisplace" " 0"
		2 "wallModul1:defaultRenderLayer" "globalIllum" " 0"
		2 "wallModul1:wall_material" "miRefractionBlur" " 0"
		2 "wallModul1:wall_material" "miRefractionRays" " 1"
		2 "wallModul1:wall_material" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul1:wall_material" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "wallModul1:wall_material" "miDeriveFromMaya" " 1"
		2 "wallModul1:wall_material" "miRefractiveIndex" " 1"
		2 "wallModul1:wall_material" "miRefractions" " 1"
		2 "wallModul1:wall_material" "miAbsorbs" " 1"
		2 "wallModul1:wall_material" "miDiffuse" " 0.8"
		2 "wallModul1:wall_material" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul1:wall_material" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul1:wall_material" "miTranslucence" " 0"
		2 "wallModul1:wall_material" "miTranslucenceFocus" " 0.5"
		2 "wallModul1:wall_material" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul1:wall_material" "miFrameBufferWriteOperation" " 1"
		2 "wallModul1:wall_material" "miFrameBufferWriteFlags" " 0"
		2 "wallModul1:wall_material" "miFrameBufferWriteFactor" " 1"
		2 "wallModul1:wall_material" "miRefractionBlurLimit" " 1"
		2 "wallModul1:wall_material" "miScatterRadius" " 0"
		2 "wallModul1:wall_material" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "wallModul1:wall_material" "miScatterAccuracy" " 97"
		2 "wallModul1:wall_material" "miScatterFalloff" " 0"
		2 "wallModul1:wall_material" "miScatterLimit" " 1"
		2 "wallModul1:wall_material" "miScatterCache" " 0"
		2 "wallModul1:lambert2SG" "miExportMrMaterial" " 0"
		2 "wallModul1:lambert2SG" "miOpaque" " 0"
		2 "wallModul1:lambert2SG" "miCutAwayOpacity" " 0"
		2 "wallModul1:lambert2SG" "miExportShadingEngine" " 1"
		2 "wallModul1:lambert2SG" "miExportVolumeSampler" " 0"
		2 "wallModul1:lambert2SG" "miContourEnable" " 0"
		2 "wallModul1:lambert2SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul1:lambert2SG" "miContourAlpha" " 1"
		2 "wallModul1:lambert2SG" "miContourWidth" " 1.25"
		2 "wallModul1:lambert2SG" "miContourRelativeWidth" " 0"
		2 "wallModul1:file1" "miUseEllipticalFilter" " 0"
		2 "wallModul1:file1" "miEllipticalMaxMinor" " 8"
		2 "wallModul1:file1" "miOverrideConvertToOptim" " 0"
		2 "wallModul1:file1" "miConvertToOptim" " 0"
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[1]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[2]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[3]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[4]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[5]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[6]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[7]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[8]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[9]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[10]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[11]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[12]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[13]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[14]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[15]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[16]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[17]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[18]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[19]" 
		""
		5 4 "wallModul1RN" "wallModul1:lambert2SG.dagSetMembers" "wallModul1RN.placeHolderList[20]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "wallModul2RN";
	setAttr -s 105 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wallModul2RN"
		"wallModul2RN" 197
		2 "|wallModul2:wallModul_crossing" "miDeriveFromMaya" " 1"
		2 "|wallModul2:wallModul_crossing" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing" "miExportGeoShader" " 0"
		2 "|wallModul2:wallModul_crossing" "miProxyRenderable" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miDeriveFromMaya" " 1"
		
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miExportGeoShader" 
		" 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miProxyRenderable" 
		" 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideCaustics" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miCausticAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miCausticRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miGlobillumRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherView" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMinSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMaxSamples" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miTransparencyCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miTransparencyReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miReflectionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miRefractionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miShadingSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMaxDisplace" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miDeriveFromMaya" " 1"
		
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miExportGeoShader" 
		" 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miProxyRenderable" 
		" 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideCaustics" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miCausticAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miCausticRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miGlobillumRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherView" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMinSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMaxSamples" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miTransparencyCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miTransparencyReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miReflectionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miRefractionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miShadingSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMaxDisplace" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miDeriveFromMaya" " 1"
		
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miExportGeoShader" 
		" 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miProxyRenderable" 
		" 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideCaustics" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miCausticAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miCausticRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miGlobillumRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherView" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMinSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMaxSamples" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miTransparencyCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miTransparencyReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miReflectionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miRefractionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miShadingSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMaxDisplace" " 0"
		2 "wallModul2:defaultRenderLayer" "globalIllum" " 0"
		2 "wallModul2:wall_material" "miRefractionBlur" " 0"
		2 "wallModul2:wall_material" "miRefractionRays" " 1"
		2 "wallModul2:wall_material" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul2:wall_material" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "wallModul2:wall_material" "miDeriveFromMaya" " 1"
		2 "wallModul2:wall_material" "miRefractiveIndex" " 1"
		2 "wallModul2:wall_material" "miRefractions" " 1"
		2 "wallModul2:wall_material" "miAbsorbs" " 1"
		2 "wallModul2:wall_material" "miDiffuse" " 0.8"
		2 "wallModul2:wall_material" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul2:wall_material" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul2:wall_material" "miTranslucence" " 0"
		2 "wallModul2:wall_material" "miTranslucenceFocus" " 0.5"
		2 "wallModul2:wall_material" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul2:wall_material" "miFrameBufferWriteOperation" " 1"
		2 "wallModul2:wall_material" "miFrameBufferWriteFlags" " 0"
		2 "wallModul2:wall_material" "miFrameBufferWriteFactor" " 1"
		2 "wallModul2:wall_material" "miRefractionBlurLimit" " 1"
		2 "wallModul2:wall_material" "miScatterRadius" " 0"
		2 "wallModul2:wall_material" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "wallModul2:wall_material" "miScatterAccuracy" " 97"
		2 "wallModul2:wall_material" "miScatterFalloff" " 0"
		2 "wallModul2:wall_material" "miScatterLimit" " 1"
		2 "wallModul2:wall_material" "miScatterCache" " 0"
		2 "wallModul2:lambert2SG" "miExportMrMaterial" " 0"
		2 "wallModul2:lambert2SG" "miOpaque" " 0"
		2 "wallModul2:lambert2SG" "miCutAwayOpacity" " 0"
		2 "wallModul2:lambert2SG" "miExportShadingEngine" " 1"
		2 "wallModul2:lambert2SG" "miExportVolumeSampler" " 0"
		2 "wallModul2:lambert2SG" "miContourEnable" " 0"
		2 "wallModul2:lambert2SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul2:lambert2SG" "miContourAlpha" " 1"
		2 "wallModul2:lambert2SG" "miContourWidth" " 1.25"
		2 "wallModul2:lambert2SG" "miContourRelativeWidth" " 0"
		2 "wallModul2:file1" "miUseEllipticalFilter" " 0"
		2 "wallModul2:file1" "miEllipticalMaxMinor" " 8"
		2 "wallModul2:file1" "miOverrideConvertToOptim" " 0"
		2 "wallModul2:file1" "miConvertToOptim" " 0"
		2 "wallModul2:lambert3" "miRefractionBlur" " 0"
		2 "wallModul2:lambert3" "miRefractionRays" " 1"
		2 "wallModul2:lambert3" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul2:lambert3" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "wallModul2:lambert3" "miDeriveFromMaya" " 1"
		2 "wallModul2:lambert3" "miRefractiveIndex" " 1"
		2 "wallModul2:lambert3" "miRefractions" " 1"
		2 "wallModul2:lambert3" "miAbsorbs" " 1"
		2 "wallModul2:lambert3" "miDiffuse" " 0.8"
		2 "wallModul2:lambert3" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul2:lambert3" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul2:lambert3" "miTranslucence" " 0"
		2 "wallModul2:lambert3" "miTranslucenceFocus" " 0.5"
		2 "wallModul2:lambert3" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul2:lambert3" "miFrameBufferWriteOperation" " 1"
		2 "wallModul2:lambert3" "miFrameBufferWriteFlags" " 0"
		2 "wallModul2:lambert3" "miFrameBufferWriteFactor" " 1"
		2 "wallModul2:lambert3" "miRefractionBlurLimit" " 1"
		2 "wallModul2:lambert3" "miScatterRadius" " 0"
		2 "wallModul2:lambert3" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul2:lambert3" "miScatterAccuracy" " 97"
		2 "wallModul2:lambert3" "miScatterFalloff" " 0"
		2 "wallModul2:lambert3" "miScatterLimit" " 1"
		2 "wallModul2:lambert3" "miScatterCache" " 0"
		2 "wallModul2:lambert3SG" "miExportMrMaterial" " 0"
		2 "wallModul2:lambert3SG" "miOpaque" " 0"
		2 "wallModul2:lambert3SG" "miCutAwayOpacity" " 0"
		2 "wallModul2:lambert3SG" "miExportShadingEngine" " 1"
		2 "wallModul2:lambert3SG" "miExportVolumeSampler" " 0"
		2 "wallModul2:lambert3SG" "miContourEnable" " 0"
		2 "wallModul2:lambert3SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul2:lambert3SG" "miContourAlpha" " 1"
		2 "wallModul2:lambert3SG" "miContourWidth" " 1.25"
		2 "wallModul2:lambert3SG" "miContourRelativeWidth" " 0"
		2 "wallModul2:file2" "miUseEllipticalFilter" " 0"
		2 "wallModul2:file2" "miEllipticalMaxMinor" " 8"
		2 "wallModul2:file2" "miOverrideConvertToOptim" " 0"
		2 "wallModul2:file2" "miConvertToOptim" " 0"
		"wallModul2RN" 306
		2 "|wallModul2:wallModul_crossing" "translate" " -type \"double3\" 8 0 25"
		
		2 "|wallModul2:wallModul_crossing" "rotate" " -type \"double3\" 0 180 0"
		2 "|wallModul2:wallModul_crossing" "rotatePivot" " -type \"double3\" 0 3 -1"
		
		2 "|wallModul2:wallModul_crossing" "scalePivot" " -type \"double3\" 0 3 -1"
		
		2 "|wallModul2:wallModul_crossing" "miDeriveFromMaya" " 1"
		2 "|wallModul2:wallModul_crossing" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing" "miExportGeoShader" " 0"
		2 "|wallModul2:wallModul_crossing" "miProxyRenderable" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miDeriveFromMaya" " 1"
		
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miExportGeoShader" 
		" 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1" "miProxyRenderable" 
		" 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideCaustics" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miCausticAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miCausticRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miGlobillumRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherView" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miOverrideSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMinSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMaxSamples" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miTransparencyCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miTransparencyReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miReflectionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miRefractionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miShadingSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube1|wallModul2:pCubeShape1" 
		"miMaxDisplace" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miDeriveFromMaya" " 1"
		
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miExportGeoShader" 
		" 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2" "miProxyRenderable" 
		" 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideCaustics" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miCausticAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miCausticRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miGlobillumRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherView" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miOverrideSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMinSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMaxSamples" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miTransparencyCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miTransparencyReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miReflectionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miRefractionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miShadingSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube2|wallModul2:pCubeShape2" 
		"miMaxDisplace" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miDeriveFromMaya" " 1"
		
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miHide" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miVisible" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miTrace" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miShadow" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miCaustic" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miGlobillum" " 5"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miExportGeoShader" 
		" 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3" "miProxyRenderable" 
		" 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideCaustics" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miCausticAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miCausticRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miGlobillumRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherView" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miOverrideSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMinSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMaxSamples" " 2"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miTransparencyCast" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miTransparencyReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miReflectionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miRefractionReceive" " 1"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miShadingSamples" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul2:wallModul_crossing|wallModul2:pCube3|wallModul2:pCubeShape3" 
		"miMaxDisplace" " 0"
		2 "wallModul2:defaultRenderLayer" "globalIllum" " 0"
		2 "wallModul2:wall_material" "miRefractionBlur" " 0"
		2 "wallModul2:wall_material" "miRefractionRays" " 1"
		2 "wallModul2:wall_material" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul2:wall_material" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "wallModul2:wall_material" "miDeriveFromMaya" " 1"
		2 "wallModul2:wall_material" "miRefractiveIndex" " 1"
		2 "wallModul2:wall_material" "miRefractions" " 1"
		2 "wallModul2:wall_material" "miAbsorbs" " 1"
		2 "wallModul2:wall_material" "miDiffuse" " 0.8"
		2 "wallModul2:wall_material" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul2:wall_material" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul2:wall_material" "miTranslucence" " 0"
		2 "wallModul2:wall_material" "miTranslucenceFocus" " 0.5"
		2 "wallModul2:wall_material" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul2:wall_material" "miFrameBufferWriteOperation" " 1"
		2 "wallModul2:wall_material" "miFrameBufferWriteFlags" " 0"
		2 "wallModul2:wall_material" "miFrameBufferWriteFactor" " 1"
		2 "wallModul2:wall_material" "miRefractionBlurLimit" " 1"
		2 "wallModul2:wall_material" "miScatterRadius" " 0"
		2 "wallModul2:wall_material" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "wallModul2:wall_material" "miScatterAccuracy" " 97"
		2 "wallModul2:wall_material" "miScatterFalloff" " 0"
		2 "wallModul2:wall_material" "miScatterLimit" " 1"
		2 "wallModul2:wall_material" "miScatterCache" " 0"
		2 "wallModul2:lambert2SG" "miExportMrMaterial" " 0"
		2 "wallModul2:lambert2SG" "miOpaque" " 0"
		2 "wallModul2:lambert2SG" "miCutAwayOpacity" " 0"
		2 "wallModul2:lambert2SG" "miExportShadingEngine" " 1"
		2 "wallModul2:lambert2SG" "miExportVolumeSampler" " 0"
		2 "wallModul2:lambert2SG" "miContourEnable" " 0"
		2 "wallModul2:lambert2SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul2:lambert2SG" "miContourAlpha" " 1"
		2 "wallModul2:lambert2SG" "miContourWidth" " 1.25"
		2 "wallModul2:lambert2SG" "miContourRelativeWidth" " 0"
		2 "wallModul2:file1" "miUseEllipticalFilter" " 0"
		2 "wallModul2:file1" "miEllipticalMaxMinor" " 8"
		2 "wallModul2:file1" "miOverrideConvertToOptim" " 0"
		2 "wallModul2:file1" "miConvertToOptim" " 0"
		2 "wallModul2:lambert3" "miRefractionBlur" " 0"
		2 "wallModul2:lambert3" "miRefractionRays" " 1"
		2 "wallModul2:lambert3" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul2:lambert3" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "wallModul2:lambert3" "miDeriveFromMaya" " 1"
		2 "wallModul2:lambert3" "miRefractiveIndex" " 1"
		2 "wallModul2:lambert3" "miRefractions" " 1"
		2 "wallModul2:lambert3" "miAbsorbs" " 1"
		2 "wallModul2:lambert3" "miDiffuse" " 0.8"
		2 "wallModul2:lambert3" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul2:lambert3" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul2:lambert3" "miTranslucence" " 0"
		2 "wallModul2:lambert3" "miTranslucenceFocus" " 0.5"
		2 "wallModul2:lambert3" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul2:lambert3" "miFrameBufferWriteOperation" " 1"
		2 "wallModul2:lambert3" "miFrameBufferWriteFlags" " 0"
		2 "wallModul2:lambert3" "miFrameBufferWriteFactor" " 1"
		2 "wallModul2:lambert3" "miRefractionBlurLimit" " 1"
		2 "wallModul2:lambert3" "miScatterRadius" " 0"
		2 "wallModul2:lambert3" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul2:lambert3" "miScatterAccuracy" " 97"
		2 "wallModul2:lambert3" "miScatterFalloff" " 0"
		2 "wallModul2:lambert3" "miScatterLimit" " 1"
		2 "wallModul2:lambert3" "miScatterCache" " 0"
		2 "wallModul2:lambert3SG" "miExportMrMaterial" " 0"
		2 "wallModul2:lambert3SG" "miOpaque" " 0"
		2 "wallModul2:lambert3SG" "miCutAwayOpacity" " 0"
		2 "wallModul2:lambert3SG" "miExportShadingEngine" " 1"
		2 "wallModul2:lambert3SG" "miExportVolumeSampler" " 0"
		2 "wallModul2:lambert3SG" "miContourEnable" " 0"
		2 "wallModul2:lambert3SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul2:lambert3SG" "miContourAlpha" " 1"
		2 "wallModul2:lambert3SG" "miContourWidth" " 1.25"
		2 "wallModul2:lambert3SG" "miContourRelativeWidth" " 0"
		2 "wallModul2:file2" "miUseEllipticalFilter" " 0"
		2 "wallModul2:file2" "miEllipticalMaxMinor" " 8"
		2 "wallModul2:file2" "miOverrideConvertToOptim" " 0"
		2 "wallModul2:file2" "miConvertToOptim" " 0"
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[1]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[2]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[3]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[4]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[5]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[6]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[7]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[8]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[9]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[10]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[11]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[12]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[13]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[14]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert2SG.dagSetMembers" "wallModul2RN.placeHolderList[15]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[16]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[17]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[18]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[19]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[20]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[21]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[22]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[23]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[24]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[25]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[26]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[27]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[28]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[29]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[30]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[31]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[32]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[33]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[34]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[35]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[36]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[37]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[38]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[39]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[40]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[41]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[42]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[43]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[44]" 
		""
		5 3 "wallModul2RN" "wallModul2:lambert3SG.memberWireframeColor" "wallModul2RN.placeHolderList[45]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[46]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[47]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[48]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[49]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[50]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[51]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[52]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[53]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[54]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[55]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[56]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[57]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[58]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[59]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[60]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[61]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[62]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[63]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[64]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[65]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[66]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[67]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[68]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[69]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[70]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[71]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[72]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[73]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[74]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.dagSetMembers" "wallModul2RN.placeHolderList[75]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[76]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[77]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[78]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[79]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[80]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[81]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[82]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[83]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[84]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[85]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[86]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[87]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[88]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[89]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[90]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[91]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[92]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[93]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[94]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[95]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[96]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[97]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[98]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[99]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[100]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[101]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[102]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[103]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[104]" 
		""
		5 4 "wallModul2RN" "wallModul2:lambert3SG.groupNodes" "wallModul2RN.placeHolderList[105]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "wallModul3RN";
	setAttr -s 136 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"wallModul3RN"
		"wallModul3RN" 235
		2 "|wallModul3:wallModul_corner" "miDeriveFromMaya" " 1"
		2 "|wallModul3:wallModul_corner" "miHide" " 0"
		2 "|wallModul3:wallModul_corner" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner" "miExportGeoShader" " 0"
		2 "|wallModul3:wallModul_corner" "miProxyRenderable" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miDeriveFromMaya" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miHide" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miExportGeoShader" " 0"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miProxyRenderable" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideCaustics" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miCausticAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miCausticRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miGlobillumRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherView" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMinSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMaxSamples" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miTransparencyCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miTransparencyReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miReflectionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miRefractionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miShadingSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMaxDisplace" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miDeriveFromMaya" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miHide" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miExportGeoShader" " 0"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miProxyRenderable" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideCaustics" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miCausticAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miCausticRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miGlobillumRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherView" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMinSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMaxSamples" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miTransparencyCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miTransparencyReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miReflectionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miRefractionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miShadingSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMaxDisplace" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miDeriveFromMaya" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miHide" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miExportGeoShader" " 0"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miProxyRenderable" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideCaustics" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miCausticAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miCausticRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miGlobillumRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherView" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMinSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMaxSamples" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miTransparencyCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miTransparencyReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miReflectionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miRefractionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miShadingSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMaxDisplace" " 0"
		2 "wallModul3:defaultRenderLayer" "globalIllum" " 0"
		2 "wallModul3:wall_material" "miRefractionBlur" " 0"
		2 "wallModul3:wall_material" "miRefractionRays" " 1"
		2 "wallModul3:wall_material" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul3:wall_material" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "wallModul3:wall_material" "miDeriveFromMaya" " 1"
		2 "wallModul3:wall_material" "miRefractiveIndex" " 1"
		2 "wallModul3:wall_material" "miRefractions" " 1"
		2 "wallModul3:wall_material" "miAbsorbs" " 1"
		2 "wallModul3:wall_material" "miDiffuse" " 0.8"
		2 "wallModul3:wall_material" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:wall_material" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul3:wall_material" "miTranslucence" " 0"
		2 "wallModul3:wall_material" "miTranslucenceFocus" " 0.5"
		2 "wallModul3:wall_material" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul3:wall_material" "miFrameBufferWriteOperation" " 1"
		2 "wallModul3:wall_material" "miFrameBufferWriteFlags" " 0"
		2 "wallModul3:wall_material" "miFrameBufferWriteFactor" " 1"
		2 "wallModul3:wall_material" "miRefractionBlurLimit" " 1"
		2 "wallModul3:wall_material" "miScatterRadius" " 0"
		2 "wallModul3:wall_material" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "wallModul3:wall_material" "miScatterAccuracy" " 97"
		2 "wallModul3:wall_material" "miScatterFalloff" " 0"
		2 "wallModul3:wall_material" "miScatterLimit" " 1"
		2 "wallModul3:wall_material" "miScatterCache" " 0"
		2 "wallModul3:lambert2SG" "miExportMrMaterial" " 0"
		2 "wallModul3:lambert2SG" "miOpaque" " 0"
		2 "wallModul3:lambert2SG" "miCutAwayOpacity" " 0"
		2 "wallModul3:lambert2SG" "miExportShadingEngine" " 1"
		2 "wallModul3:lambert2SG" "miExportVolumeSampler" " 0"
		2 "wallModul3:lambert2SG" "miContourEnable" " 0"
		2 "wallModul3:lambert2SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert2SG" "miContourAlpha" " 1"
		2 "wallModul3:lambert2SG" "miContourWidth" " 1.25"
		2 "wallModul3:lambert2SG" "miContourRelativeWidth" " 0"
		2 "wallModul3:file1" "miUseEllipticalFilter" " 0"
		2 "wallModul3:file1" "miEllipticalMaxMinor" " 8"
		2 "wallModul3:file1" "miOverrideConvertToOptim" " 0"
		2 "wallModul3:file1" "miConvertToOptim" " 0"
		2 "wallModul3:lambert3" "miRefractionBlur" " 0"
		2 "wallModul3:lambert3" "miRefractionRays" " 1"
		2 "wallModul3:lambert3" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert3" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert3" "miDeriveFromMaya" " 1"
		2 "wallModul3:lambert3" "miRefractiveIndex" " 1"
		2 "wallModul3:lambert3" "miRefractions" " 1"
		2 "wallModul3:lambert3" "miAbsorbs" " 1"
		2 "wallModul3:lambert3" "miDiffuse" " 0.8"
		2 "wallModul3:lambert3" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert3" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert3" "miTranslucence" " 0"
		2 "wallModul3:lambert3" "miTranslucenceFocus" " 0.5"
		2 "wallModul3:lambert3" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert3" "miFrameBufferWriteOperation" " 1"
		2 "wallModul3:lambert3" "miFrameBufferWriteFlags" " 0"
		2 "wallModul3:lambert3" "miFrameBufferWriteFactor" " 1"
		2 "wallModul3:lambert3" "miRefractionBlurLimit" " 1"
		2 "wallModul3:lambert3" "miScatterRadius" " 0"
		2 "wallModul3:lambert3" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert3" "miScatterAccuracy" " 97"
		2 "wallModul3:lambert3" "miScatterFalloff" " 0"
		2 "wallModul3:lambert3" "miScatterLimit" " 1"
		2 "wallModul3:lambert3" "miScatterCache" " 0"
		2 "wallModul3:lambert3SG" "miExportMrMaterial" " 0"
		2 "wallModul3:lambert3SG" "miOpaque" " 0"
		2 "wallModul3:lambert3SG" "miCutAwayOpacity" " 0"
		2 "wallModul3:lambert3SG" "miExportShadingEngine" " 1"
		2 "wallModul3:lambert3SG" "miExportVolumeSampler" " 0"
		2 "wallModul3:lambert3SG" "miContourEnable" " 0"
		2 "wallModul3:lambert3SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert3SG" "miContourAlpha" " 1"
		2 "wallModul3:lambert3SG" "miContourWidth" " 1.25"
		2 "wallModul3:lambert3SG" "miContourRelativeWidth" " 0"
		2 "wallModul3:file2" "miUseEllipticalFilter" " 0"
		2 "wallModul3:file2" "miEllipticalMaxMinor" " 8"
		2 "wallModul3:file2" "miOverrideConvertToOptim" " 0"
		2 "wallModul3:file2" "miConvertToOptim" " 0"
		2 "wallModul3:lambert4" "miRefractionBlur" " 0"
		2 "wallModul3:lambert4" "miRefractionRays" " 1"
		2 "wallModul3:lambert4" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert4" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert4" "miDeriveFromMaya" " 1"
		2 "wallModul3:lambert4" "miRefractiveIndex" " 1"
		2 "wallModul3:lambert4" "miRefractions" " 1"
		2 "wallModul3:lambert4" "miAbsorbs" " 1"
		2 "wallModul3:lambert4" "miDiffuse" " 0.8"
		2 "wallModul3:lambert4" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert4" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert4" "miTranslucence" " 0"
		2 "wallModul3:lambert4" "miTranslucenceFocus" " 0.5"
		2 "wallModul3:lambert4" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert4" "miFrameBufferWriteOperation" " 1"
		2 "wallModul3:lambert4" "miFrameBufferWriteFlags" " 0"
		2 "wallModul3:lambert4" "miFrameBufferWriteFactor" " 1"
		2 "wallModul3:lambert4" "miRefractionBlurLimit" " 1"
		2 "wallModul3:lambert4" "miScatterRadius" " 0"
		2 "wallModul3:lambert4" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert4" "miScatterAccuracy" " 97"
		2 "wallModul3:lambert4" "miScatterFalloff" " 0"
		2 "wallModul3:lambert4" "miScatterLimit" " 1"
		2 "wallModul3:lambert4" "miScatterCache" " 0"
		2 "wallModul3:lambert4SG" "miExportMrMaterial" " 0"
		2 "wallModul3:lambert4SG" "miOpaque" " 0"
		2 "wallModul3:lambert4SG" "miCutAwayOpacity" " 0"
		2 "wallModul3:lambert4SG" "miExportShadingEngine" " 1"
		2 "wallModul3:lambert4SG" "miExportVolumeSampler" " 0"
		2 "wallModul3:lambert4SG" "miContourEnable" " 0"
		2 "wallModul3:lambert4SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert4SG" "miContourAlpha" " 1"
		2 "wallModul3:lambert4SG" "miContourWidth" " 1.25"
		2 "wallModul3:lambert4SG" "miContourRelativeWidth" " 0"
		2 "wallModul3:file3" "miUseEllipticalFilter" " 0"
		2 "wallModul3:file3" "miEllipticalMaxMinor" " 8"
		2 "wallModul3:file3" "miOverrideConvertToOptim" " 0"
		2 "wallModul3:file3" "miConvertToOptim" " 0"
		"wallModul3RN" 376
		2 "|wallModul3:wallModul_corner" "visibility" " 1"
		2 "|wallModul3:wallModul_corner" "translate" " -type \"double3\" 0 0 25"
		2 "|wallModul3:wallModul_corner" "rotate" " -type \"double3\" 0 90 0"
		2 "|wallModul3:wallModul_corner" "rotatePivot" " -type \"double3\" 0 3 -1"
		
		2 "|wallModul3:wallModul_corner" "scalePivot" " -type \"double3\" 0 3 -1"
		
		2 "|wallModul3:wallModul_corner" "miDeriveFromMaya" " 1"
		2 "|wallModul3:wallModul_corner" "miHide" " 0"
		2 "|wallModul3:wallModul_corner" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner" "miExportGeoShader" " 0"
		2 "|wallModul3:wallModul_corner" "miProxyRenderable" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miDeriveFromMaya" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miHide" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miExportGeoShader" " 0"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3" "miProxyRenderable" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideCaustics" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miCausticAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miCausticRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miGlobillumRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherView" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miOverrideSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMinSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMaxSamples" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miTransparencyCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miTransparencyReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miReflectionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miRefractionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miShadingSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube3|wallModul3:pCubeShape3" 
		"miMaxDisplace" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miDeriveFromMaya" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miHide" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miExportGeoShader" " 0"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1" "miProxyRenderable" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideCaustics" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miCausticAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miCausticRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miGlobillumRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherView" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miOverrideSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMinSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMaxSamples" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miTransparencyCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miTransparencyReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miReflectionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miRefractionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miShadingSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube1|wallModul3:pCubeShape1" 
		"miMaxDisplace" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miDeriveFromMaya" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miHide" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miVisible" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miTrace" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miShadow" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miCaustic" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miGlobillum" " 5"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miExportGeoShader" " 0"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2" "miProxyRenderable" " 1"
		
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideCaustics" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miCausticAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miCausticRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideGlobalIllumination" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miGlobillumAccuracy" " 64"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miGlobillumRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideFinalGather" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherRays" " 1000"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherMinRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherMaxRadius" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherFilter" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherView" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miOverrideSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMinSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMaxSamples" " 2"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miFinalGatherReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miTransparencyCast" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miTransparencyReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miReflectionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miRefractionReceive" " 1"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miUpdateProxyBoundingBoxMode" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miShadingSamplesOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miShadingSamples" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMaxDisplaceOverride" " 0"
		2 "|wallModul3:wallModul_corner|wallModul3:pCube2|wallModul3:pCubeShape2" 
		"miMaxDisplace" " 0"
		2 "wallModul3:defaultRenderLayer" "globalIllum" " 0"
		2 "wallModul3:wall_material" "miRefractionBlur" " 0"
		2 "wallModul3:wall_material" "miRefractionRays" " 1"
		2 "wallModul3:wall_material" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul3:wall_material" "miIrradianceColor" " -type \"float3\" 1 1 1"
		
		2 "wallModul3:wall_material" "miDeriveFromMaya" " 1"
		2 "wallModul3:wall_material" "miRefractiveIndex" " 1"
		2 "wallModul3:wall_material" "miRefractions" " 1"
		2 "wallModul3:wall_material" "miAbsorbs" " 1"
		2 "wallModul3:wall_material" "miDiffuse" " 0.8"
		2 "wallModul3:wall_material" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:wall_material" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul3:wall_material" "miTranslucence" " 0"
		2 "wallModul3:wall_material" "miTranslucenceFocus" " 0.5"
		2 "wallModul3:wall_material" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul3:wall_material" "miFrameBufferWriteOperation" " 1"
		2 "wallModul3:wall_material" "miFrameBufferWriteFlags" " 0"
		2 "wallModul3:wall_material" "miFrameBufferWriteFactor" " 1"
		2 "wallModul3:wall_material" "miRefractionBlurLimit" " 1"
		2 "wallModul3:wall_material" "miScatterRadius" " 0"
		2 "wallModul3:wall_material" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		
		2 "wallModul3:wall_material" "miScatterAccuracy" " 97"
		2 "wallModul3:wall_material" "miScatterFalloff" " 0"
		2 "wallModul3:wall_material" "miScatterLimit" " 1"
		2 "wallModul3:wall_material" "miScatterCache" " 0"
		2 "wallModul3:lambert2SG" "miExportMrMaterial" " 0"
		2 "wallModul3:lambert2SG" "miOpaque" " 0"
		2 "wallModul3:lambert2SG" "miCutAwayOpacity" " 0"
		2 "wallModul3:lambert2SG" "miExportShadingEngine" " 1"
		2 "wallModul3:lambert2SG" "miExportVolumeSampler" " 0"
		2 "wallModul3:lambert2SG" "miContourEnable" " 0"
		2 "wallModul3:lambert2SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert2SG" "miContourAlpha" " 1"
		2 "wallModul3:lambert2SG" "miContourWidth" " 1.25"
		2 "wallModul3:lambert2SG" "miContourRelativeWidth" " 0"
		2 "wallModul3:file1" "miUseEllipticalFilter" " 0"
		2 "wallModul3:file1" "miEllipticalMaxMinor" " 8"
		2 "wallModul3:file1" "miOverrideConvertToOptim" " 0"
		2 "wallModul3:file1" "miConvertToOptim" " 0"
		2 "wallModul3:lambert3" "miRefractionBlur" " 0"
		2 "wallModul3:lambert3" "miRefractionRays" " 1"
		2 "wallModul3:lambert3" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert3" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert3" "miDeriveFromMaya" " 1"
		2 "wallModul3:lambert3" "miRefractiveIndex" " 1"
		2 "wallModul3:lambert3" "miRefractions" " 1"
		2 "wallModul3:lambert3" "miAbsorbs" " 1"
		2 "wallModul3:lambert3" "miDiffuse" " 0.8"
		2 "wallModul3:lambert3" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert3" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert3" "miTranslucence" " 0"
		2 "wallModul3:lambert3" "miTranslucenceFocus" " 0.5"
		2 "wallModul3:lambert3" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert3" "miFrameBufferWriteOperation" " 1"
		2 "wallModul3:lambert3" "miFrameBufferWriteFlags" " 0"
		2 "wallModul3:lambert3" "miFrameBufferWriteFactor" " 1"
		2 "wallModul3:lambert3" "miRefractionBlurLimit" " 1"
		2 "wallModul3:lambert3" "miScatterRadius" " 0"
		2 "wallModul3:lambert3" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert3" "miScatterAccuracy" " 97"
		2 "wallModul3:lambert3" "miScatterFalloff" " 0"
		2 "wallModul3:lambert3" "miScatterLimit" " 1"
		2 "wallModul3:lambert3" "miScatterCache" " 0"
		2 "wallModul3:lambert3SG" "miExportMrMaterial" " 0"
		2 "wallModul3:lambert3SG" "miOpaque" " 0"
		2 "wallModul3:lambert3SG" "miCutAwayOpacity" " 0"
		2 "wallModul3:lambert3SG" "miExportShadingEngine" " 1"
		2 "wallModul3:lambert3SG" "miExportVolumeSampler" " 0"
		2 "wallModul3:lambert3SG" "miContourEnable" " 0"
		2 "wallModul3:lambert3SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert3SG" "miContourAlpha" " 1"
		2 "wallModul3:lambert3SG" "miContourWidth" " 1.25"
		2 "wallModul3:lambert3SG" "miContourRelativeWidth" " 0"
		2 "wallModul3:file2" "miUseEllipticalFilter" " 0"
		2 "wallModul3:file2" "miEllipticalMaxMinor" " 8"
		2 "wallModul3:file2" "miOverrideConvertToOptim" " 0"
		2 "wallModul3:file2" "miConvertToOptim" " 0"
		2 "wallModul3:lambert4" "miRefractionBlur" " 0"
		2 "wallModul3:lambert4" "miRefractionRays" " 1"
		2 "wallModul3:lambert4" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert4" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert4" "miDeriveFromMaya" " 1"
		2 "wallModul3:lambert4" "miRefractiveIndex" " 1"
		2 "wallModul3:lambert4" "miRefractions" " 1"
		2 "wallModul3:lambert4" "miAbsorbs" " 1"
		2 "wallModul3:lambert4" "miDiffuse" " 0.8"
		2 "wallModul3:lambert4" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert4" "miTransparency" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert4" "miTranslucence" " 0"
		2 "wallModul3:lambert4" "miTranslucenceFocus" " 0.5"
		2 "wallModul3:lambert4" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "wallModul3:lambert4" "miFrameBufferWriteOperation" " 1"
		2 "wallModul3:lambert4" "miFrameBufferWriteFlags" " 0"
		2 "wallModul3:lambert4" "miFrameBufferWriteFactor" " 1"
		2 "wallModul3:lambert4" "miRefractionBlurLimit" " 1"
		2 "wallModul3:lambert4" "miScatterRadius" " 0"
		2 "wallModul3:lambert4" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "wallModul3:lambert4" "miScatterAccuracy" " 97"
		2 "wallModul3:lambert4" "miScatterFalloff" " 0"
		2 "wallModul3:lambert4" "miScatterLimit" " 1"
		2 "wallModul3:lambert4" "miScatterCache" " 0"
		2 "wallModul3:lambert4SG" "miExportMrMaterial" " 0"
		2 "wallModul3:lambert4SG" "miOpaque" " 0"
		2 "wallModul3:lambert4SG" "miCutAwayOpacity" " 0"
		2 "wallModul3:lambert4SG" "miExportShadingEngine" " 1"
		2 "wallModul3:lambert4SG" "miExportVolumeSampler" " 0"
		2 "wallModul3:lambert4SG" "miContourEnable" " 0"
		2 "wallModul3:lambert4SG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "wallModul3:lambert4SG" "miContourAlpha" " 1"
		2 "wallModul3:lambert4SG" "miContourWidth" " 1.25"
		2 "wallModul3:lambert4SG" "miContourRelativeWidth" " 0"
		2 "wallModul3:file3" "miUseEllipticalFilter" " 0"
		2 "wallModul3:file3" "miEllipticalMaxMinor" " 8"
		2 "wallModul3:file3" "miOverrideConvertToOptim" " 0"
		2 "wallModul3:file3" "miConvertToOptim" " 0"
		5 3 "wallModul3RN" "|wallModul3:wallModul_corner|wallModul3:pCube3.message" 
		"wallModul3RN.placeHolderList[1]" ""
		5 3 "wallModul3RN" "|wallModul3:wallModul_corner|wallModul3:pCube1.message" 
		"wallModul3RN.placeHolderList[2]" ""
		5 3 "wallModul3RN" "|wallModul3:wallModul_corner|wallModul3:pCube2.message" 
		"wallModul3RN.placeHolderList[3]" ""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[4]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[5]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[6]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[7]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[8]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[9]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[10]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[11]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[12]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[13]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[14]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[15]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[16]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[17]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[18]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[19]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[20]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[21]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert2SG.dagSetMembers" "wallModul3RN.placeHolderList[22]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[23]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[24]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[25]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[26]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[27]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[28]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[29]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[30]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[31]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[32]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[33]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[34]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[35]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[36]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[37]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[38]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[39]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[40]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert3SG.memberWireframeColor" "wallModul3RN.placeHolderList[41]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[42]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[43]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[44]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[45]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[46]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[47]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[48]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[49]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[50]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[51]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[52]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[53]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[54]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[55]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[56]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[57]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[58]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[59]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.dagSetMembers" "wallModul3RN.placeHolderList[60]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[61]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[62]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[63]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[64]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[65]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[66]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[67]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[68]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[69]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[70]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[71]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[72]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[73]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[74]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[75]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[76]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[77]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[78]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert3SG.groupNodes" "wallModul3RN.placeHolderList[79]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[80]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[81]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[82]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[83]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[84]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[85]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[86]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[87]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[88]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[89]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[90]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[91]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[92]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[93]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[94]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[95]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[96]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[97]" 
		""
		5 3 "wallModul3RN" "wallModul3:lambert4SG.memberWireframeColor" "wallModul3RN.placeHolderList[98]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[99]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[100]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[101]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[102]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[103]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[104]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[105]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[106]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[107]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[108]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[109]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[110]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[111]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[112]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[113]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[114]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[115]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[116]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.dagSetMembers" "wallModul3RN.placeHolderList[117]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[118]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[119]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[120]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[121]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[122]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[123]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[124]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[125]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[126]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[127]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[128]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[129]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[130]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[131]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[132]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[133]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[134]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[135]" 
		""
		5 4 "wallModul3RN" "wallModul3:lambert4SG.groupNodes" "wallModul3RN.placeHolderList[136]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	setAttr ".ihi" 0;
createNode groupId -n "groupId44";
	setAttr ".ihi" 0;
createNode groupId -n "groupId45";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	setAttr ".ihi" 0;
createNode groupId -n "groupId124";
	setAttr ".ihi" 0;
createNode groupId -n "groupId125";
	setAttr ".ihi" 0;
createNode groupId -n "groupId126";
	setAttr ".ihi" 0;
createNode groupId -n "groupId127";
	setAttr ".ihi" 0;
createNode groupId -n "groupId128";
	setAttr ".ihi" 0;
createNode groupId -n "groupId129";
	setAttr ".ihi" 0;
createNode groupId -n "groupId130";
	setAttr ".ihi" 0;
createNode groupId -n "groupId131";
	setAttr ".ihi" 0;
createNode groupId -n "groupId132";
	setAttr ".ihi" 0;
createNode groupId -n "groupId133";
	setAttr ".ihi" 0;
createNode groupId -n "groupId134";
	setAttr ".ihi" 0;
createNode groupId -n "groupId135";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupId -n "groupId139";
	setAttr ".ihi" 0;
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
createNode groupId -n "groupId141";
	setAttr ".ihi" 0;
createNode groupId -n "groupId142";
	setAttr ".ihi" 0;
createNode groupId -n "groupId143";
	setAttr ".ihi" 0;
createNode groupId -n "groupId144";
	setAttr ".ihi" 0;
createNode groupId -n "groupId145";
	setAttr ".ihi" 0;
createNode groupId -n "groupId146";
	setAttr ".ihi" 0;
createNode groupId -n "groupId147";
	setAttr ".ihi" 0;
createNode groupId -n "groupId148";
	setAttr ".ihi" 0;
createNode reference -n "duckRN";
	setAttr ".fn[0]" -type "string" "C:/Program Files/Assimp/test/models/Collada/duck.dae";
	setAttr ".ed" -type "dataReferenceEdits" 
		"duckRN"
		"duckRN" 3
		0 "|LOD3sp" "|rubberDuck" "-s -r "
		0 "|camera1" "|rubberDuck" "-s -r "
		0 "|directionalLight1" "|rubberDuck" "-s -r ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "sharedReferenceNode";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode reference -n "myDuckieRN";
	setAttr ".ed" -type "dataReferenceEdits" 
		"myDuckieRN"
		"myDuckieRN" 82
		2 "|myDuckie:LOD3sp" "miDeriveFromMaya" " 1"
		2 "|myDuckie:LOD3sp" "miHide" " 0"
		2 "|myDuckie:LOD3sp" "miVisible" " 2"
		2 "|myDuckie:LOD3sp" "miTrace" " 2"
		2 "|myDuckie:LOD3sp" "miShadow" " 2"
		2 "|myDuckie:LOD3sp" "miCaustic" " 5"
		2 "|myDuckie:LOD3sp" "miGlobillum" " 5"
		2 "|myDuckie:LOD3sp" "miExportGeoShader" " 0"
		2 "|myDuckie:LOD3sp" "miProxyRenderable" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideCaustics" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miCausticAccuracy" " 64"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miCausticRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideGlobalIllumination" 
		" 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miGlobillumAccuracy" " 64"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miGlobillumRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideFinalGather" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherRays" " 1000"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherMinRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherMaxRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherFilter" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherView" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideSamples" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMinSamples" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMaxSamples" " 2"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherCast" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miTransparencyCast" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miTransparencyReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miReflectionReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miRefractionReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miShadingSamplesOverride" " 0"
		
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miShadingSamples" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMaxDisplaceOverride" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMaxDisplace" " 0"
		2 "myDuckie:defaultRenderLayer" "globalIllum" " 0"
		2 "myDuckie:blinn3" "miRefractionBlur" " 0"
		2 "myDuckie:blinn3" "miRefractionRays" " 1"
		2 "myDuckie:blinn3" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "myDuckie:blinn3" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "myDuckie:blinn3" "miDeriveFromMaya" " 1"
		2 "myDuckie:blinn3" "miRefractiveIndex" " 1"
		2 "myDuckie:blinn3" "miRefractions" " 1"
		2 "myDuckie:blinn3" "miAbsorbs" " 1"
		2 "myDuckie:blinn3" "miDiffuse" " 0.8"
		2 "myDuckie:blinn3" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "myDuckie:blinn3" "miTransparency" " -type \"float3\" 0 0 0"
		2 "myDuckie:blinn3" "miTranslucence" " 0"
		2 "myDuckie:blinn3" "miTranslucenceFocus" " 0.5"
		2 "myDuckie:blinn3" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "myDuckie:blinn3" "miFrameBufferWriteOperation" " 1"
		2 "myDuckie:blinn3" "miFrameBufferWriteFlags" " 0"
		2 "myDuckie:blinn3" "miFrameBufferWriteFactor" " 1"
		2 "myDuckie:blinn3" "miRefractionBlurLimit" " 1"
		2 "myDuckie:blinn3" "miScatterRadius" " 0"
		2 "myDuckie:blinn3" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "myDuckie:blinn3" "miScatterAccuracy" " 97"
		2 "myDuckie:blinn3" "miScatterFalloff" " 0"
		2 "myDuckie:blinn3" "miScatterLimit" " 1"
		2 "myDuckie:blinn3" "miScatterCache" " 0"
		2 "myDuckie:blinn3" "miReflectionBlur" " 0"
		2 "myDuckie:blinn3" "miReflectionRays" " 1"
		2 "myDuckie:blinn3" "miShinyness" " 10"
		2 "myDuckie:blinn3" "miSpecularColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "myDuckie:blinn3" "miReflectivity" " 0.5"
		2 "myDuckie:blinn3" "miReflectionBlurLimit" " 1"
		2 "myDuckie:LOD3spSG" "miExportMrMaterial" " 0"
		2 "myDuckie:LOD3spSG" "miOpaque" " 0"
		2 "myDuckie:LOD3spSG" "miCutAwayOpacity" " 0"
		2 "myDuckie:LOD3spSG" "miExportShadingEngine" " 1"
		2 "myDuckie:LOD3spSG" "miExportVolumeSampler" " 0"
		2 "myDuckie:LOD3spSG" "miContourEnable" " 0"
		2 "myDuckie:LOD3spSG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "myDuckie:LOD3spSG" "miContourAlpha" " 1"
		2 "myDuckie:LOD3spSG" "miContourWidth" " 1.25"
		2 "myDuckie:LOD3spSG" "miContourRelativeWidth" " 0"
		2 "myDuckie:file2" "miUseEllipticalFilter" " 0"
		2 "myDuckie:file2" "miEllipticalMaxMinor" " 8"
		2 "myDuckie:file2" "miOverrideConvertToOptim" " 0"
		2 "myDuckie:file2" "miConvertToOptim" " 0"
		"myDuckieRN" 89
		2 "|myDuckie:LOD3sp" "translate" " -type \"double3\" -11.440701 -83.444593 27.7015"
		
		2 "|myDuckie:LOD3sp" "rotate" " -type \"double3\" 0 -12.396264 0"
		2 "|myDuckie:LOD3sp" "scale" " -type \"double3\" 0.01 0.01 0.01"
		2 "|myDuckie:LOD3sp" "rotatePivot" " -type \"double3\" 13.440701 86.949686 -3.7015"
		
		2 "|myDuckie:LOD3sp" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|myDuckie:LOD3sp" "scalePivot" " -type \"double3\" 13.440701 86.949686 -3.7015"
		
		2 "|myDuckie:LOD3sp" "scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|myDuckie:LOD3sp" "miDeriveFromMaya" " 1"
		2 "|myDuckie:LOD3sp" "miHide" " 0"
		2 "|myDuckie:LOD3sp" "miVisible" " 2"
		2 "|myDuckie:LOD3sp" "miTrace" " 2"
		2 "|myDuckie:LOD3sp" "miShadow" " 2"
		2 "|myDuckie:LOD3sp" "miCaustic" " 5"
		2 "|myDuckie:LOD3sp" "miGlobillum" " 5"
		2 "|myDuckie:LOD3sp" "miExportGeoShader" " 0"
		2 "|myDuckie:LOD3sp" "miProxyRenderable" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideCaustics" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miCausticAccuracy" " 64"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miCausticRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideGlobalIllumination" 
		" 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miGlobillumAccuracy" " 64"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miGlobillumRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideFinalGather" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherRays" " 1000"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherMinRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherMaxRadius" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherFilter" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherView" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miOverrideSamples" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMinSamples" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMaxSamples" " 2"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherCast" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miFinalGatherReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miTransparencyCast" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miTransparencyReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miReflectionReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miRefractionReceive" " 1"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miUpdateProxyBoundingBoxMode" 
		" 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miProxyBoundingBoxMin" " -type \"double3\" 0 0 0"
		
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miProxyBoundingBoxMax" " -type \"double3\" 0 0 0"
		
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miShadingSamplesOverride" " 0"
		
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miShadingSamples" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMaxDisplaceOverride" " 0"
		2 "|myDuckie:LOD3sp|myDuckie:LOD3spShape" "miMaxDisplace" " 0"
		2 "myDuckie:defaultRenderLayer" "globalIllum" " 0"
		2 "myDuckie:blinn3" "miRefractionBlur" " 0"
		2 "myDuckie:blinn3" "miRefractionRays" " 1"
		2 "myDuckie:blinn3" "miIrradiance" " -type \"float3\" 0 0 0"
		2 "myDuckie:blinn3" "miIrradianceColor" " -type \"float3\" 1 1 1"
		2 "myDuckie:blinn3" "miDeriveFromMaya" " 1"
		2 "myDuckie:blinn3" "miRefractiveIndex" " 1"
		2 "myDuckie:blinn3" "miRefractions" " 1"
		2 "myDuckie:blinn3" "miAbsorbs" " 1"
		2 "myDuckie:blinn3" "miDiffuse" " 0.8"
		2 "myDuckie:blinn3" "miColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "myDuckie:blinn3" "miTransparency" " -type \"float3\" 0 0 0"
		2 "myDuckie:blinn3" "miTranslucence" " 0"
		2 "myDuckie:blinn3" "miTranslucenceFocus" " 0.5"
		2 "myDuckie:blinn3" "miNormalCamera" " -type \"float3\" 0 0 0"
		2 "myDuckie:blinn3" "miFrameBufferWriteOperation" " 1"
		2 "myDuckie:blinn3" "miFrameBufferWriteFlags" " 0"
		2 "myDuckie:blinn3" "miFrameBufferWriteFactor" " 1"
		2 "myDuckie:blinn3" "miRefractionBlurLimit" " 1"
		2 "myDuckie:blinn3" "miScatterRadius" " 0"
		2 "myDuckie:blinn3" "miScatterColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "myDuckie:blinn3" "miScatterAccuracy" " 97"
		2 "myDuckie:blinn3" "miScatterFalloff" " 0"
		2 "myDuckie:blinn3" "miScatterLimit" " 1"
		2 "myDuckie:blinn3" "miScatterCache" " 0"
		2 "myDuckie:blinn3" "miReflectionBlur" " 0"
		2 "myDuckie:blinn3" "miReflectionRays" " 1"
		2 "myDuckie:blinn3" "miShinyness" " 10"
		2 "myDuckie:blinn3" "miSpecularColor" " -type \"float3\" 0.5 0.5 0.5"
		2 "myDuckie:blinn3" "miReflectivity" " 0.5"
		2 "myDuckie:blinn3" "miReflectionBlurLimit" " 1"
		2 "myDuckie:LOD3spSG" "miExportMrMaterial" " 0"
		2 "myDuckie:LOD3spSG" "miOpaque" " 0"
		2 "myDuckie:LOD3spSG" "miCutAwayOpacity" " 0"
		2 "myDuckie:LOD3spSG" "miExportShadingEngine" " 1"
		2 "myDuckie:LOD3spSG" "miExportVolumeSampler" " 0"
		2 "myDuckie:LOD3spSG" "miContourEnable" " 0"
		2 "myDuckie:LOD3spSG" "miContourColor" " -type \"float3\" 1 1 1"
		2 "myDuckie:LOD3spSG" "miContourAlpha" " 1"
		2 "myDuckie:LOD3spSG" "miContourWidth" " 1.25"
		2 "myDuckie:LOD3spSG" "miContourRelativeWidth" " 0"
		2 "myDuckie:file2" "miUseEllipticalFilter" " 0"
		2 "myDuckie:file2" "miEllipticalMaxMinor" " 8"
		2 "myDuckie:file2" "miOverrideConvertToOptim" " 0"
		2 "myDuckie:file2" "miConvertToOptim" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :initialShadingGroup;
	setAttr -s 72 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 75 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :defaultTextureList1;
	setAttr -s 7 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 5 ".r";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :hyperGraphLayout;
	setAttr -s 3 ".hyp";
	setAttr ".hyp[1].isc" yes;
	setAttr ".hyp[2].isc" yes;
	setAttr ".hyp[3].isc" yes;
connectAttr "|R1C2|pCube2|pCubeShape2.iog" "wallModul1RN.phl[1]";
connectAttr "|R1C2|pCube1|pCubeShape1.iog" "wallModul1RN.phl[2]";
connectAttr "|R1C6|pCube2|pCubeShape2.iog" "wallModul1RN.phl[3]";
connectAttr "|R1C6|pCube1|pCubeShape1.iog" "wallModul1RN.phl[4]";
connectAttr "|R4C4_center|pCube2|pCubeShape2.iog" "wallModul1RN.phl[5]";
connectAttr "|R4C4_center|pCube1|pCubeShape1.iog" "wallModul1RN.phl[6]";
connectAttr "|R4C7|pCube2|pCubeShape2.iog" "wallModul1RN.phl[7]";
connectAttr "|R4C7|pCube1|pCubeShape1.iog" "wallModul1RN.phl[8]";
connectAttr "|R2C3|pCube2|pCubeShape2.iog" "wallModul1RN.phl[9]";
connectAttr "|R2C3|pCube1|pCubeShape1.iog" "wallModul1RN.phl[10]";
connectAttr "|R6C7|pCube2|pCubeShape2.iog" "wallModul1RN.phl[11]";
connectAttr "|R6C7|pCube1|pCubeShape1.iog" "wallModul1RN.phl[12]";
connectAttr "|R5C6|pCube2|pCubeShape2.iog" "wallModul1RN.phl[13]";
connectAttr "|R5C6|pCube1|pCubeShape1.iog" "wallModul1RN.phl[14]";
connectAttr "|R5C4|pCube2|pCubeShape2.iog" "wallModul1RN.phl[15]";
connectAttr "|R5C4|pCube1|pCubeShape1.iog" "wallModul1RN.phl[16]";
connectAttr "|R6C4|pCube2|pCubeShape2.iog" "wallModul1RN.phl[17]";
connectAttr "|R6C4|pCube1|pCubeShape1.iog" "wallModul1RN.phl[18]";
connectAttr "|R6C3|pCube2|pCubeShape2.iog" "wallModul1RN.phl[19]";
connectAttr "|R6C3|pCube1|pCubeShape1.iog" "wallModul1RN.phl[20]";
connectAttr "|R1C3|pCube1|pCubeShape1.iog" "wallModul2RN.phl[1]";
connectAttr "|R1C5|pCube1|pCubeShape1.iog" "wallModul2RN.phl[2]";
connectAttr "|R4C3|pCube1|pCubeShape1.iog" "wallModul2RN.phl[3]";
connectAttr "|R4C2|pCube1|pCubeShape1.iog" "wallModul2RN.phl[4]";
connectAttr "|R3C1|pCube1|pCubeShape1.iog" "wallModul2RN.phl[5]";
connectAttr "|R5C1|pCube1|pCubeShape1.iog" "wallModul2RN.phl[6]";
connectAttr "|R5C7|pCube1|pCubeShape1.iog" "wallModul2RN.phl[7]";
connectAttr "|R3C7|pCube1|pCubeShape1.iog" "wallModul2RN.phl[8]";
connectAttr "|R2C2|pCube1|pCubeShape1.iog" "wallModul2RN.phl[9]";
connectAttr "|R3C3|pCube1|pCubeShape1.iog" "wallModul2RN.phl[10]";
connectAttr "|R3C4|pCube1|pCubeShape1.iog" "wallModul2RN.phl[11]";
connectAttr "|R3C5|pCube1|pCubeShape1.iog" "wallModul2RN.phl[12]";
connectAttr "|R3C6|pCube1|pCubeShape1.iog" "wallModul2RN.phl[13]";
connectAttr "|R7C2|pCube1|pCubeShape1.iog" "wallModul2RN.phl[14]";
connectAttr "|R7C3|pCube1|pCubeShape1.iog" "wallModul2RN.phl[15]";
connectAttr "wallModul2RN.phl[16]" "|R1C3|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[17]" "|R1C3|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[18]" "|R1C5|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[19]" "|R1C5|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[20]" "|R4C3|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[21]" "|R4C3|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[22]" "|R4C2|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[23]" "|R4C2|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[24]" "|R3C1|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[25]" "|R3C1|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[26]" "|R5C1|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[27]" "|R5C1|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[28]" "|R5C7|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[29]" "|R5C7|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[30]" "|R3C7|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[31]" "|R3C7|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[32]" "|R2C2|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[33]" "|R2C2|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[34]" "|R3C3|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[35]" "|R3C3|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[36]" "|R3C4|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[37]" "|R3C4|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[38]" "|R3C5|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[39]" "|R3C5|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[40]" "|R3C6|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[41]" "|R3C6|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[42]" "|R7C2|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[43]" "|R7C2|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul2RN.phl[44]" "|R7C3|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul2RN.phl[45]" "|R7C3|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "|R1C3|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[46]";
connectAttr "|R1C3|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[47]";
connectAttr "|R1C5|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[48]";
connectAttr "|R1C5|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[49]";
connectAttr "|R4C3|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[50]";
connectAttr "|R4C3|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[51]";
connectAttr "|R4C2|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[52]";
connectAttr "|R4C2|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[53]";
connectAttr "|R3C1|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[54]";
connectAttr "|R3C1|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[55]";
connectAttr "|R5C1|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[56]";
connectAttr "|R5C1|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[57]";
connectAttr "|R5C7|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[58]";
connectAttr "|R5C7|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[59]";
connectAttr "|R3C7|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[60]";
connectAttr "|R3C7|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[61]";
connectAttr "|R2C2|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[62]";
connectAttr "|R2C2|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[63]";
connectAttr "|R3C3|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[64]";
connectAttr "|R3C3|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[65]";
connectAttr "|R3C4|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[66]";
connectAttr "|R3C4|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[67]";
connectAttr "|R3C5|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[68]";
connectAttr "|R3C5|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[69]";
connectAttr "|R3C6|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[70]";
connectAttr "|R3C6|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[71]";
connectAttr "|R7C2|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[72]";
connectAttr "|R7C2|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[73]";
connectAttr "|R7C3|pCube2|pCubeShape2.iog.og[0]" "wallModul2RN.phl[74]";
connectAttr "|R7C3|pCube3|pCubeShape3.iog.og[0]" "wallModul2RN.phl[75]";
connectAttr "groupId17.msg" "wallModul2RN.phl[76]";
connectAttr "groupId19.msg" "wallModul2RN.phl[77]";
connectAttr "groupId21.msg" "wallModul2RN.phl[78]";
connectAttr "groupId23.msg" "wallModul2RN.phl[79]";
connectAttr "groupId29.msg" "wallModul2RN.phl[80]";
connectAttr "groupId31.msg" "wallModul2RN.phl[81]";
connectAttr "groupId33.msg" "wallModul2RN.phl[82]";
connectAttr "groupId35.msg" "wallModul2RN.phl[83]";
connectAttr "groupId37.msg" "wallModul2RN.phl[84]";
connectAttr "groupId39.msg" "wallModul2RN.phl[85]";
connectAttr "groupId41.msg" "wallModul2RN.phl[86]";
connectAttr "groupId43.msg" "wallModul2RN.phl[87]";
connectAttr "groupId45.msg" "wallModul2RN.phl[88]";
connectAttr "groupId47.msg" "wallModul2RN.phl[89]";
connectAttr "groupId49.msg" "wallModul2RN.phl[90]";
connectAttr "groupId51.msg" "wallModul2RN.phl[91]";
connectAttr "groupId53.msg" "wallModul2RN.phl[92]";
connectAttr "groupId55.msg" "wallModul2RN.phl[93]";
connectAttr "groupId57.msg" "wallModul2RN.phl[94]";
connectAttr "groupId59.msg" "wallModul2RN.phl[95]";
connectAttr "groupId61.msg" "wallModul2RN.phl[96]";
connectAttr "groupId63.msg" "wallModul2RN.phl[97]";
connectAttr "groupId65.msg" "wallModul2RN.phl[98]";
connectAttr "groupId67.msg" "wallModul2RN.phl[99]";
connectAttr "groupId69.msg" "wallModul2RN.phl[100]";
connectAttr "groupId71.msg" "wallModul2RN.phl[101]";
connectAttr "groupId73.msg" "wallModul2RN.phl[102]";
connectAttr "groupId75.msg" "wallModul2RN.phl[103]";
connectAttr "groupId77.msg" "wallModul2RN.phl[104]";
connectAttr "groupId79.msg" "wallModul2RN.phl[105]";
connectAttr "wallModul3RN.phl[1]" ":hyperGraphLayout.hyp[1].dn";
connectAttr "wallModul3RN.phl[2]" ":hyperGraphLayout.hyp[2].dn";
connectAttr "wallModul3RN.phl[3]" ":hyperGraphLayout.hyp[3].dn";
connectAttr "|Edges|Edge4|pCube1|pCubeShape1.iog" "wallModul3RN.phl[4]";
connectAttr "|Edges|Edge3|pCube1|pCubeShape1.iog" "wallModul3RN.phl[5]";
connectAttr "|Edges|Edge1_R1C7|pCube1|pCubeShape1.iog" "wallModul3RN.phl[6]";
connectAttr "|Edges|Edge2_R1C1|pCube1|pCubeShape1.iog" "wallModul3RN.phl[7]";
connectAttr "|R1C4|pCube1|pCubeShape1.iog" "wallModul3RN.phl[8]";
connectAttr "|R4C5|pCube1|pCubeShape1.iog" "wallModul3RN.phl[9]";
connectAttr "|R4C6|pCube1|pCubeShape1.iog" "wallModul3RN.phl[10]";
connectAttr "|R4C1|pCube1|pCubeShape1.iog" "wallModul3RN.phl[11]";
connectAttr "|R2C1|pCube1|pCubeShape1.iog" "wallModul3RN.phl[12]";
connectAttr "|R2C7|pCube1|pCubeShape1.iog" "wallModul3RN.phl[13]";
connectAttr "|R3C2|pCube1|pCubeShape1.iog" "wallModul3RN.phl[14]";
connectAttr "|R5C2|pCube1|pCubeShape1.iog" "wallModul3RN.phl[15]";
connectAttr "|R2C4|pCube1|pCubeShape1.iog" "wallModul3RN.phl[16]";
connectAttr "|R2C5|pCube1|pCubeShape1.iog" "wallModul3RN.phl[17]";
connectAttr "|R2C6|pCube1|pCubeShape1.iog" "wallModul3RN.phl[18]";
connectAttr "|R6C1|pCube1|pCubeShape1.iog" "wallModul3RN.phl[19]";
connectAttr "|R6C6|pCube1|pCubeShape1.iog" "wallModul3RN.phl[20]";
connectAttr "|R6C5|pCube1|pCubeShape1.iog" "wallModul3RN.phl[21]";
connectAttr "|R6C2|pCube1|pCubeShape1.iog" "wallModul3RN.phl[22]";
connectAttr "wallModul3RN.phl[23]" "|Edges|Edge4|pCube2|pCubeShape2.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[24]" "|Edges|Edge3|pCube2|pCubeShape2.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[25]" "|Edges|Edge1_R1C7|pCube2|pCubeShape2.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[26]" "|Edges|Edge2_R1C1|pCube2|pCubeShape2.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[27]" "|R1C4|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[28]" "|R4C5|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[29]" "|R4C6|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[30]" "|R4C1|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[31]" "|R2C1|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[32]" "|R2C7|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[33]" "|R3C2|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[34]" "|R5C2|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[35]" "|R2C4|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[36]" "|R2C5|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[37]" "|R2C6|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[38]" "|R6C1|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[39]" "|R6C6|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[40]" "|R6C5|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "wallModul3RN.phl[41]" "|R6C2|pCube2|pCubeShape2.iog.og[0].gco";
connectAttr "|Edges|Edge4|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[42]";
connectAttr "|Edges|Edge3|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[43]";
connectAttr "|Edges|Edge1_R1C7|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[44]"
		;
connectAttr "|Edges|Edge2_R1C1|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[45]"
		;
connectAttr "|R1C4|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[46]";
connectAttr "|R4C5|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[47]";
connectAttr "|R4C6|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[48]";
connectAttr "|R4C1|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[49]";
connectAttr "|R2C1|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[50]";
connectAttr "|R2C7|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[51]";
connectAttr "|R3C2|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[52]";
connectAttr "|R5C2|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[53]";
connectAttr "|R2C4|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[54]";
connectAttr "|R2C5|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[55]";
connectAttr "|R2C6|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[56]";
connectAttr "|R6C1|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[57]";
connectAttr "|R6C6|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[58]";
connectAttr "|R6C5|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[59]";
connectAttr "|R6C2|pCube2|pCubeShape2.iog.og[0]" "wallModul3RN.phl[60]";
connectAttr "groupId3.msg" "wallModul3RN.phl[61]";
connectAttr "groupId7.msg" "wallModul3RN.phl[62]";
connectAttr "groupId11.msg" "wallModul3RN.phl[63]";
connectAttr "groupId15.msg" "wallModul3RN.phl[64]";
connectAttr "groupId27.msg" "wallModul3RN.phl[65]";
connectAttr "groupId95.msg" "wallModul3RN.phl[66]";
connectAttr "groupId99.msg" "wallModul3RN.phl[67]";
connectAttr "groupId103.msg" "wallModul3RN.phl[68]";
connectAttr "groupId107.msg" "wallModul3RN.phl[69]";
connectAttr "groupId111.msg" "wallModul3RN.phl[70]";
connectAttr "groupId115.msg" "wallModul3RN.phl[71]";
connectAttr "groupId119.msg" "wallModul3RN.phl[72]";
connectAttr "groupId123.msg" "wallModul3RN.phl[73]";
connectAttr "groupId127.msg" "wallModul3RN.phl[74]";
connectAttr "groupId131.msg" "wallModul3RN.phl[75]";
connectAttr "groupId135.msg" "wallModul3RN.phl[76]";
connectAttr "groupId139.msg" "wallModul3RN.phl[77]";
connectAttr "groupId143.msg" "wallModul3RN.phl[78]";
connectAttr "groupId147.msg" "wallModul3RN.phl[79]";
connectAttr "wallModul3RN.phl[80]" "|Edges|Edge4|pCube3|pCubeShape3.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[81]" "|Edges|Edge3|pCube3|pCubeShape3.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[82]" "|Edges|Edge1_R1C7|pCube3|pCubeShape3.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[83]" "|Edges|Edge2_R1C1|pCube3|pCubeShape3.iog.og[0].gco"
		;
connectAttr "wallModul3RN.phl[84]" "|R1C4|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[85]" "|R4C5|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[86]" "|R4C6|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[87]" "|R4C1|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[88]" "|R2C1|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[89]" "|R2C7|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[90]" "|R3C2|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[91]" "|R5C2|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[92]" "|R2C4|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[93]" "|R2C5|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[94]" "|R2C6|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[95]" "|R6C1|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[96]" "|R6C6|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[97]" "|R6C5|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "wallModul3RN.phl[98]" "|R6C2|pCube3|pCubeShape3.iog.og[0].gco";
connectAttr "|Edges|Edge4|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[99]";
connectAttr "|Edges|Edge3|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[100]";
connectAttr "|Edges|Edge1_R1C7|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[101]"
		;
connectAttr "|Edges|Edge2_R1C1|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[102]"
		;
connectAttr "|R1C4|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[103]";
connectAttr "|R4C5|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[104]";
connectAttr "|R4C6|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[105]";
connectAttr "|R4C1|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[106]";
connectAttr "|R2C1|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[107]";
connectAttr "|R2C7|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[108]";
connectAttr "|R3C2|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[109]";
connectAttr "|R5C2|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[110]";
connectAttr "|R2C4|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[111]";
connectAttr "|R2C5|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[112]";
connectAttr "|R2C6|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[113]";
connectAttr "|R6C1|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[114]";
connectAttr "|R6C6|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[115]";
connectAttr "|R6C5|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[116]";
connectAttr "|R6C2|pCube3|pCubeShape3.iog.og[0]" "wallModul3RN.phl[117]";
connectAttr "groupId1.msg" "wallModul3RN.phl[118]";
connectAttr "groupId5.msg" "wallModul3RN.phl[119]";
connectAttr "groupId9.msg" "wallModul3RN.phl[120]";
connectAttr "groupId13.msg" "wallModul3RN.phl[121]";
connectAttr "groupId25.msg" "wallModul3RN.phl[122]";
connectAttr "groupId93.msg" "wallModul3RN.phl[123]";
connectAttr "groupId97.msg" "wallModul3RN.phl[124]";
connectAttr "groupId101.msg" "wallModul3RN.phl[125]";
connectAttr "groupId105.msg" "wallModul3RN.phl[126]";
connectAttr "groupId109.msg" "wallModul3RN.phl[127]";
connectAttr "groupId113.msg" "wallModul3RN.phl[128]";
connectAttr "groupId117.msg" "wallModul3RN.phl[129]";
connectAttr "groupId121.msg" "wallModul3RN.phl[130]";
connectAttr "groupId125.msg" "wallModul3RN.phl[131]";
connectAttr "groupId129.msg" "wallModul3RN.phl[132]";
connectAttr "groupId133.msg" "wallModul3RN.phl[133]";
connectAttr "groupId137.msg" "wallModul3RN.phl[134]";
connectAttr "groupId141.msg" "wallModul3RN.phl[135]";
connectAttr "groupId145.msg" "wallModul3RN.phl[136]";
connectAttr "groupId1.id" "|Edges|Edge4|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId2.id" "|Edges|Edge4|pCube3|pCubeShape3.ciog.cog[1].cgid";
connectAttr "groupId3.id" "|Edges|Edge4|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId4.id" "|Edges|Edge4|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId5.id" "|Edges|Edge3|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId6.id" "|Edges|Edge3|pCube3|pCubeShape3.ciog.cog[1].cgid";
connectAttr "groupId7.id" "|Edges|Edge3|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId8.id" "|Edges|Edge3|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId9.id" "|Edges|Edge1_R1C7|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId10.id" "|Edges|Edge1_R1C7|pCube3|pCubeShape3.ciog.cog[1].cgid"
		;
connectAttr "groupId11.id" "|Edges|Edge1_R1C7|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId12.id" "|Edges|Edge1_R1C7|pCube2|pCubeShape2.ciog.cog[1].cgid"
		;
connectAttr "groupId13.id" "|Edges|Edge2_R1C1|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId14.id" "|Edges|Edge2_R1C1|pCube3|pCubeShape3.ciog.cog[1].cgid"
		;
connectAttr "groupId15.id" "|Edges|Edge2_R1C1|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId16.id" "|Edges|Edge2_R1C1|pCube2|pCubeShape2.ciog.cog[1].cgid"
		;
connectAttr "groupId17.id" "|R1C3|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId18.id" "|R1C3|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId19.id" "|R1C3|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId20.id" "|R1C3|pCube3|pCubeShape3.ciog.cog[2].cgid";
connectAttr "groupId21.id" "|R1C5|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId22.id" "|R1C5|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId23.id" "|R1C5|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId24.id" "|R1C5|pCube3|pCubeShape3.ciog.cog[2].cgid";
connectAttr "groupId25.id" "|R1C4|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId26.id" "|R1C4|pCube3|pCubeShape3.ciog.cog[1].cgid";
connectAttr "groupId27.id" "|R1C4|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId28.id" "|R1C4|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId29.id" "|R4C3|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId30.id" "|R4C3|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId31.id" "|R4C3|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId32.id" "|R4C3|pCube3|pCubeShape3.ciog.cog[2].cgid";
connectAttr "groupId33.id" "|R4C2|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId34.id" "|R4C2|pCube2|pCubeShape2.ciog.cog[2].cgid";
connectAttr "groupId35.id" "|R4C2|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId36.id" "|R4C2|pCube3|pCubeShape3.ciog.cog[3].cgid";
connectAttr "groupId37.id" "|R3C1|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId38.id" "|R3C1|pCube2|pCubeShape2.ciog.cog[3].cgid";
connectAttr "groupId39.id" "|R3C1|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId40.id" "|R3C1|pCube3|pCubeShape3.ciog.cog[4].cgid";
connectAttr "groupId41.id" "|R5C1|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId42.id" "|R5C1|pCube2|pCubeShape2.ciog.cog[4].cgid";
connectAttr "groupId43.id" "|R5C1|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId44.id" "|R5C1|pCube3|pCubeShape3.ciog.cog[5].cgid";
connectAttr "groupId45.id" "|R5C7|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId46.id" "|R5C7|pCube2|pCubeShape2.ciog.cog[5].cgid";
connectAttr "groupId47.id" "|R5C7|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId48.id" "|R5C7|pCube3|pCubeShape3.ciog.cog[6].cgid";
connectAttr "groupId49.id" "|R3C7|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId50.id" "|R3C7|pCube2|pCubeShape2.ciog.cog[6].cgid";
connectAttr "groupId51.id" "|R3C7|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId52.id" "|R3C7|pCube3|pCubeShape3.ciog.cog[7].cgid";
connectAttr "groupId53.id" "|R2C2|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId54.id" "|R2C2|pCube2|pCubeShape2.ciog.cog[7].cgid";
connectAttr "groupId55.id" "|R2C2|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId56.id" "|R2C2|pCube3|pCubeShape3.ciog.cog[8].cgid";
connectAttr "groupId57.id" "|R3C3|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId58.id" "|R3C3|pCube2|pCubeShape2.ciog.cog[8].cgid";
connectAttr "groupId59.id" "|R3C3|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId60.id" "|R3C3|pCube3|pCubeShape3.ciog.cog[9].cgid";
connectAttr "groupId61.id" "|R3C4|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId62.id" "|R3C4|pCube2|pCubeShape2.ciog.cog[9].cgid";
connectAttr "groupId63.id" "|R3C4|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId64.id" "|R3C4|pCube3|pCubeShape3.ciog.cog[10].cgid";
connectAttr "groupId65.id" "|R3C5|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId66.id" "|R3C5|pCube2|pCubeShape2.ciog.cog[10].cgid";
connectAttr "groupId67.id" "|R3C5|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId68.id" "|R3C5|pCube3|pCubeShape3.ciog.cog[11].cgid";
connectAttr "groupId69.id" "|R3C6|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId70.id" "|R3C6|pCube2|pCubeShape2.ciog.cog[11].cgid";
connectAttr "groupId71.id" "|R3C6|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId72.id" "|R3C6|pCube3|pCubeShape3.ciog.cog[12].cgid";
connectAttr "groupId73.id" "|R7C2|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId74.id" "|R7C2|pCube2|pCubeShape2.ciog.cog[12].cgid";
connectAttr "groupId75.id" "|R7C2|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId76.id" "|R7C2|pCube3|pCubeShape3.ciog.cog[13].cgid";
connectAttr "groupId77.id" "|R7C3|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId78.id" "|R7C3|pCube2|pCubeShape2.ciog.cog[13].cgid";
connectAttr "groupId79.id" "|R7C3|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId80.id" "|R7C3|pCube3|pCubeShape3.ciog.cog[14].cgid";
connectAttr "groupId93.id" "|R4C5|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId94.id" "|R4C5|pCube3|pCubeShape3.ciog.cog[1].cgid";
connectAttr "groupId95.id" "|R4C5|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId96.id" "|R4C5|pCube2|pCubeShape2.ciog.cog[1].cgid";
connectAttr "groupId97.id" "|R4C6|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId98.id" "|R4C6|pCube3|pCubeShape3.ciog.cog[2].cgid";
connectAttr "groupId99.id" "|R4C6|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId100.id" "|R4C6|pCube2|pCubeShape2.ciog.cog[2].cgid";
connectAttr "groupId101.id" "|R4C1|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId102.id" "|R4C1|pCube3|pCubeShape3.ciog.cog[3].cgid";
connectAttr "groupId103.id" "|R4C1|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId104.id" "|R4C1|pCube2|pCubeShape2.ciog.cog[3].cgid";
connectAttr "groupId105.id" "|R2C1|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId106.id" "|R2C1|pCube3|pCubeShape3.ciog.cog[4].cgid";
connectAttr "groupId107.id" "|R2C1|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId108.id" "|R2C1|pCube2|pCubeShape2.ciog.cog[4].cgid";
connectAttr "groupId109.id" "|R2C7|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId110.id" "|R2C7|pCube3|pCubeShape3.ciog.cog[5].cgid";
connectAttr "groupId111.id" "|R2C7|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId112.id" "|R2C7|pCube2|pCubeShape2.ciog.cog[5].cgid";
connectAttr "groupId113.id" "|R3C2|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId114.id" "|R3C2|pCube3|pCubeShape3.ciog.cog[6].cgid";
connectAttr "groupId115.id" "|R3C2|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId116.id" "|R3C2|pCube2|pCubeShape2.ciog.cog[6].cgid";
connectAttr "groupId117.id" "|R5C2|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId118.id" "|R5C2|pCube3|pCubeShape3.ciog.cog[7].cgid";
connectAttr "groupId119.id" "|R5C2|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId120.id" "|R5C2|pCube2|pCubeShape2.ciog.cog[7].cgid";
connectAttr "groupId121.id" "|R2C4|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId122.id" "|R2C4|pCube3|pCubeShape3.ciog.cog[8].cgid";
connectAttr "groupId123.id" "|R2C4|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId124.id" "|R2C4|pCube2|pCubeShape2.ciog.cog[8].cgid";
connectAttr "groupId125.id" "|R2C5|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId126.id" "|R2C5|pCube3|pCubeShape3.ciog.cog[9].cgid";
connectAttr "groupId127.id" "|R2C5|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId128.id" "|R2C5|pCube2|pCubeShape2.ciog.cog[9].cgid";
connectAttr "groupId129.id" "|R2C6|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId130.id" "|R2C6|pCube3|pCubeShape3.ciog.cog[10].cgid";
connectAttr "groupId131.id" "|R2C6|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId132.id" "|R2C6|pCube2|pCubeShape2.ciog.cog[10].cgid";
connectAttr "groupId133.id" "|R6C1|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId134.id" "|R6C1|pCube3|pCubeShape3.ciog.cog[11].cgid";
connectAttr "groupId135.id" "|R6C1|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId136.id" "|R6C1|pCube2|pCubeShape2.ciog.cog[11].cgid";
connectAttr "groupId137.id" "|R6C6|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId138.id" "|R6C6|pCube3|pCubeShape3.ciog.cog[12].cgid";
connectAttr "groupId139.id" "|R6C6|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId140.id" "|R6C6|pCube2|pCubeShape2.ciog.cog[12].cgid";
connectAttr "groupId141.id" "|R6C5|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId142.id" "|R6C5|pCube3|pCubeShape3.ciog.cog[13].cgid";
connectAttr "groupId143.id" "|R6C5|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId144.id" "|R6C5|pCube2|pCubeShape2.ciog.cog[13].cgid";
connectAttr "groupId145.id" "|R6C2|pCube3|pCubeShape3.iog.og[0].gid";
connectAttr "groupId146.id" "|R6C2|pCube3|pCubeShape3.ciog.cog[14].cgid";
connectAttr "groupId147.id" "|R6C2|pCube2|pCubeShape2.iog.og[0].gid";
connectAttr "groupId148.id" "|R6C2|pCube2|pCubeShape2.ciog.cog[14].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "sharedReferenceNode.sr" "duckRN.sr";
connectAttr "|Edges|Edge4|pCube3|pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge4|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge3|pCube3|pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge3|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge1_R1C7|pCube3|pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge1_R1C7|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge2_R1C1|pCube3|pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|Edges|Edge2_R1C1|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|R1C3|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R1C3|pCube3|pCubeShape3.ciog.cog[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R1C5|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R1C5|pCube3|pCubeShape3.ciog.cog[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R1C4|pCube3|pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R1C4|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C3|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C3|pCube3|pCubeShape3.ciog.cog[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C2|pCube2|pCubeShape2.ciog.cog[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C2|pCube3|pCubeShape3.ciog.cog[3]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C1|pCube2|pCubeShape2.ciog.cog[3]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C1|pCube3|pCubeShape3.ciog.cog[4]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R5C1|pCube2|pCubeShape2.ciog.cog[4]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R5C1|pCube3|pCubeShape3.ciog.cog[5]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R5C7|pCube2|pCubeShape2.ciog.cog[5]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R5C7|pCube3|pCubeShape3.ciog.cog[6]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C7|pCube2|pCubeShape2.ciog.cog[6]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C7|pCube3|pCubeShape3.ciog.cog[7]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C2|pCube2|pCubeShape2.ciog.cog[7]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C2|pCube3|pCubeShape3.ciog.cog[8]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C3|pCube2|pCubeShape2.ciog.cog[8]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C3|pCube3|pCubeShape3.ciog.cog[9]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C4|pCube2|pCubeShape2.ciog.cog[9]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C4|pCube3|pCubeShape3.ciog.cog[10]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C5|pCube2|pCubeShape2.ciog.cog[10]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C5|pCube3|pCubeShape3.ciog.cog[11]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C6|pCube2|pCubeShape2.ciog.cog[11]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C6|pCube3|pCubeShape3.ciog.cog[12]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R7C2|pCube2|pCubeShape2.ciog.cog[12]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R7C2|pCube3|pCubeShape3.ciog.cog[13]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R7C3|pCube2|pCubeShape2.ciog.cog[13]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R7C3|pCube3|pCubeShape3.ciog.cog[14]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C5|pCube3|pCubeShape3.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C5|pCube2|pCubeShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C6|pCube3|pCubeShape3.ciog.cog[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C6|pCube2|pCubeShape2.ciog.cog[2]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C1|pCube3|pCubeShape3.ciog.cog[3]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R4C1|pCube2|pCubeShape2.ciog.cog[3]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C1|pCube3|pCubeShape3.ciog.cog[4]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C1|pCube2|pCubeShape2.ciog.cog[4]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C7|pCube3|pCubeShape3.ciog.cog[5]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C7|pCube2|pCubeShape2.ciog.cog[5]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C2|pCube3|pCubeShape3.ciog.cog[6]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R3C2|pCube2|pCubeShape2.ciog.cog[6]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R5C2|pCube3|pCubeShape3.ciog.cog[7]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R5C2|pCube2|pCubeShape2.ciog.cog[7]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C4|pCube3|pCubeShape3.ciog.cog[8]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C4|pCube2|pCubeShape2.ciog.cog[8]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C5|pCube3|pCubeShape3.ciog.cog[9]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C5|pCube2|pCubeShape2.ciog.cog[9]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C6|pCube3|pCubeShape3.ciog.cog[10]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R2C6|pCube2|pCubeShape2.ciog.cog[10]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C1|pCube3|pCubeShape3.ciog.cog[11]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C1|pCube2|pCubeShape2.ciog.cog[11]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C6|pCube3|pCubeShape3.ciog.cog[12]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C6|pCube2|pCubeShape2.ciog.cog[12]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C5|pCube3|pCubeShape3.ciog.cog[13]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C5|pCube2|pCubeShape2.ciog.cog[13]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C2|pCube3|pCubeShape3.ciog.cog[14]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|R6C2|pCube2|pCubeShape2.ciog.cog[14]" ":initialShadingGroup.dsm" -na
		;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId52.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId124.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId126.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId128.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId130.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId132.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId134.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId142.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId144.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId146.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId148.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of maze.ma
