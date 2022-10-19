#!/bin/bash
head -n 65 TestField.csv | tail -n 64 > TrimmedTestField2.csv
head -n 193 TestField.csv | tail -n 64 > TrimmedTestField3.csv
cat TrimmedTestField2.csv TrimmedTestField3.csv >> TFCombo.csv
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_,Time to Leave Center _s_,Time Spent in Center _s_,Time 
Spent in Outer _s_,Total Distance _m_,Entries to Outer, Exits from Outer” 
> header.csv
cat header.csv TFCombo.csv > TFTitle.csv
sort -t"," -k4 -k5 TestField.csv > OpenField2.csv
sort -t"," -k3 -k4 OpenField2.csv > OpenField3.csv
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_, Time to Leave Center _s_,Time Spent in Center _s_,Time 
Spent in Outer _s_,Total Distance _m_,Entries to Outer, Exits from Outer” 
> OpenFieldHeader.csv
cat OpenFieldHeader.csv OpenField3.csv > FinalOpenField.csv
mkdir OpenField
mv TrimmedTestField2.csv OpenField
mv TrimmedTestField3.csv OpenField
mv header.csv OpenField
mv TFCombo.csv OpenField
mv TestField.csv OpenField
mv OpenField2.csv OpenField
mv OpenField3.csv OpenField
mv OpenFieldHeader.csv OpenField
mkdir FinalData
mv FinalOpenField.csv FinalData
sort -t"," -k4 -k5 TFTitle.csv > OpenField4.csv
sort -t"," -k3 -k4 OpenField4.csv > OpenField5.csv
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_, Time to Leave Center _s_,Time Spent in Center _s_,Time 
Spent in Outer _s_,Total Distance _m_,Entries to Outer, Exits from Outer” 
> OpenFieldHeader2.csv
cat OpenFieldHeader2.csv OpenField5.csv > FinalOpenFieldNo2.csv
mv TFTitle.csv OpenField
mv OpenField4.csv OpenField
mv OpenField5.csv OpenField
mv OpenFieldHeader2.csv OpenField
mv FinalOpenFieldNo2.csv FinalData
sort -t"," -k4 -k5 TestMarble.csv > Marble2.csv
sort -t"," -k3 -k4 Marble2.csv > Marble3.csv
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_,MB 0 min,MB 5 min,MB 10 min,MB 15 min,MB 20 min” > 
MarbleTestHeader.csv
cat MarbleTestHeader.csv Marble3.csv > FinalMarbleBury.csv
mkdir MarbleBury
mv TestMarble.csv MarbleBury
mv Marble2.csv MarbleBury
mv Marble3.csv MarbleBury
mv MarbleTestHeader.csv MarbleBury
mv FinalMarbleBury.csv FinalData
sort -t"," -k4 -k5 TestNest.csv > Nest2.csv
sort -t"," -k3 -k4 Nest2.csv > Nest3.csv
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_,Cotton Mass Used Hour 0,CMU Hour 1,CMU Hour 2,CMU Hour 
3,CMU Hour 4,CMU Hour 5,CMU Hour 24” > NestTestHeader.csv
cat NestTestHeader.csv Nest3.csv > FinalNestBuild.csv
mkdir NestBuild
mv TestNest.csv NestBuild
mv Nest2.csv NestBuild
mv Nest3.csv NestBuild
mv NestTestHeader.csv NestBuild
mv FinalNestBuild.csv FinalData
sort -t"," -k4 -k5 TestTail.csv > Tail2.csv
sort -t"," -k3 -k4 Tail2.csv > Tail3.csv
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_,Time Spent Mobile _s_” > TailTestHeader.csv
cat TailTestHeader.csv Tail3.csv > FinalTailSus.csv
mkdir TailSus
mv TestTail.csv TailSus
mv Tail2.csv TailSus
mv Tail3.csv TailSus
mv TailTestHeader.csv TailSus
mv FinalTailSus.csv FinalData
mv TestSocial.csv CSVstages
cd CSVstages
echo “Generation,ID #,Strain,1st Treatment,2nd Treatment,Mouse Mass 
_g_,dFBr Dose _mL_,Distance _m_,CZ Entries,CZ Time _s_,CS Mean Visit _s_,P 
EZ Entries,P EZ Time _s_,P EZ Mean Visit _s_,P MZ Entries,P MZ Time _s_,P 
MZ Mean Visit _s_, N EZ Entries,N EZ Time _s_,N EZ Mean Visit _s_,N MZ 
Entries,N MZ Time _s_,N MZ Mean Visit _s_” > SocialTestHeader.csv
mkdir Stage1
sort -t"," -k4 -k5 Stage1.csv > Stage1A.csv
sort -t"," -k3 -k4 Stage1A.csv > Stage1B.csv
cat SocialTestHeader.csv Stage1B.csv > FinalSocStage1.csv
mv Stage1.csv Stage1
mv Stage1A.csv Stage1
mv Stage1B.csv Stage1
mv FinalSocStage1.csv ../FinalSocStage1.csv
mkdir Stage2
sort -t"," -k4 -k5 Stage2.csv > Stage2A.csv
sort -t"," -k3 -k4 Stage2A.csv > Stage2B.csv
cat SocialTestHeader.csv Stage2B.csv > FinalSocStage2.csv
mv Stage2.csv Stage2
mv Stage2A.csv Stage2
mv Stage2B.csv Stage2
mv FinalSocStage2.csv ../FinalSocStage2.csv
mkdir Stage3
sort -t"," -k4 -k5 Stage3.csv > Stage3A.csv
sort -t"," -k3 -k4 Stage3A.csv > Stage3B.csv
cat SocialTestHeader.csv Stage3B.csv > FinalSocStage3.csv
mv Stage3.csv Stage3
mv Stage3A.csv Stage3
mv Stage3B.csv Stage3
mv FinalSocStage3.csv ../FinalSocStage3.csv
cd ..
mv FinalSocStage1.csv FinalData
mv FinalSocStage2.csv FinalData
mv FinalSocStage3.csv FinalData

