%% Manual creation of data struct. 
 
% Dataset  Treatment     RatIDDataset   Condition    Trial
%   CBD      CBD          Rat1CBD          CON      Presleep


%Rat 4
CBD.VEH.Rat4CBD.OR=Z;
CBD.VEH.Rat4CBD.HC=Z;
CBD.CBD.Rat4CBD.OR=Z;
CBD.CBD.Rat4CBD.OD=Z;
CBD.VEH.Rat4CBD.OD=Z;
CBD.CBD.Rat4CBD.HC=Z;
% Rat 5
CBD.CBD.Rat5CBD.OR=Z;
CBD.VEH.Rat5CBD.OR=Z;
CBD.VEH.Rat5CBD.OD=Z;
CBD.VEH.Rat5CBD.HC=Z;
CBD.CBD.Rat5CBD.OD=Z;
CBD.CBD.Rat5CBD.HC=Z;

% Rat 6
CBD.VEH.Rat6CBD.OR=Z;
CBD.CBD.Rat6CBD.OR=Z;
CBD.CBD.Rat6CBD.OD=Z;
CBD.VEH.Rat6CBD.HC=Z;
CBD.VEH.Rat6CBD.OD=Z;
CBD.CBD.Rat6CBD.HC=Z;

clear Z
%%
cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/1')

load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat1BASIC.CN=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_HC.mat')
OSBASIC.VEH.Rat1BASIC.HC=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_OD.mat')
OSBASIC.VEH.Rat1BASIC.OD=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_study_day_2_OR.mat')
OSBASIC.VEH.Rat1BASIC.OR=Z;
clear Z


cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/3')

load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat3BASIC.CN=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_OD.mat')
OSBASIC.VEH.Rat3BASIC.OD=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat3_SD1_OR_08-09_11_2017.mat')
OSBASIC.VEH.Rat3BASIC.OR=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat3_SD3_HC_15_11_2017.mat')
OSBASIC.VEH.Rat3BASIC.HC=Z;
clear Z


cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/4')

load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat4BASIC.CN=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_OD.mat')
OSBASIC.VEH.Rat4BASIC.OD=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat4_SD2_HC_13_12_2017.mat')
OSBASIC.VEH.Rat4BASIC.HC=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat4_SD3_OR_11-12_12_2017.mat')
OSBASIC.VEH.Rat4BASIC.OR=Z;
clear Z

cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/6')
load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat6BASIC.CN=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Study_day1_HC_16feb2018.mat')
OSBASIC.VEH.Rat6BASIC.HC=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Study_day2_OD_19_20feb2018.mat')
OSBASIC.VEH.Rat6BASIC.OD=Z;
clear Z
load('preprocessed2_GC_window_ripples_broadband_Study_day5_OR_26_27feb2018.mat')
OSBASIC.VEH.Rat6BASIC.OR=Z;
clear Z

%xo
cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/9')

load('preprocessed2_GC_window_ripples_broadband_2018_06_04_Study_day10_OR.mat')
OSBASIC.VEH.Rat9BASIC.OR=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat9BASIC.CN=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_HC.mat')
OSBASIC.VEH.Rat9BASIC.HC=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_OD.mat')
OSBASIC.VEH.Rat9BASIC.OD=Z;
clear Z

cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/11')

load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat11BASIC.CN=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_HC.mat')
OSBASIC.VEH.Rat11BASIC.HC=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_OD.mat')
OSBASIC.VEH.Rat11BASIC.OD=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_OR.mat')
OSBASIC.VEH.Rat11BASIC.OR=Z;
clear Z

cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/13')

load('preprocessed2_GC_window_ripples_broadband_CN.mat')
OSBASIC.VEH.Rat13BASIC.CN=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat13_344994_SD2_HC_15_05_2019.mat')
OSBASIC.VEH.Rat13BASIC.HC=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat13_344994_SD3_OR_16-17_05_2019.mat')
OSBASIC.VEH.Rat13BASIC.OR=Z;
clear Z

load('preprocessed2_GC_window_ripples_broadband_Rat_OS_Ephys_Rat13_344994_SD4_OD_21-22_05_2019.mat')
OSBASIC.VEH.Rat13BASIC.OD=Z;
clear Z

%% RGS14

RGS14.VEH.Rat1RGS.CN=Z;
RGS14.VEH.Rat1RGS.OD=Z;
RGS14.VEH.Rat1RGS.OR=Z;
RGS14.VEH.Rat1RGS.HC=Z;


RGS14.VEH.Rat2RGS.OD=Z;
RGS14.VEH.Rat2RGS.OR=Z;
RGS14.VEH.Rat2RGS.CN=Z;
RGS14.VEH.Rat2RGS.HC=Z;

clear Z

RGS14.RGS.Rat3RGS.OD=Z;
RGS14.RGS.Rat3RGS.OR=Z;
RGS14.RGS.Rat3RGS.CN=Z;
RGS14.RGS.Rat3RGS.HC=Z;

clear Z

RGS14.RGS.Rat4RGS.CN=Z;
RGS14.RGS.Rat4RGS.HC=Z;
RGS14.RGS.Rat4RGS.OD=Z;
RGS14.RGS.Rat4RGS.OR=Z;

clear Z

RGS14.VEH.Rat6RGS.HC=Z;
RGS14.VEH.Rat6RGS.OR=Z;
RGS14.VEH.Rat6RGS.CN=Z;
RGS14.VEH.Rat6RGS.OD=Z;

clear Z


RGS14.RGS.Rat7RGS.HC=Z;
RGS14.RGS.Rat7RGS.OR=Z;
RGS14.RGS.Rat7RGS.CN=Z;
RGS14.RGS.Rat7RGS.OD=Z;

clear Z


RGS14.RGS.Rat8RGS.HC=Z;
RGS14.RGS.Rat8RGS.CN=Z;
RGS14.RGS.Rat8RGS.OR=Z;
RGS14.RGS.Rat8RGS.OD=Z;

clear Z

RGS14.VEH.Rat9RGS.HC=Z;
RGS14.VEH.Rat9RGS.CN=Z;
RGS14.VEH.Rat9RGS.OR=Z;
RGS14.VEH.Rat9RGS.OD=Z;

%% Extract (new) features. 
clear
cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/1')

load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat1BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];

clear rip_duration rip_phase SO_b SO_a rip_threshold
load('newfeatures_GC_window_ripples_broadband_HC.mat')
OSBASIC_features.VEH.Rat1BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_OD.mat')
OSBASIC_features.VEH.Rat1BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_study_day_2_OR.mat')
OSBASIC_features.VEH.Rat1BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 


cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/3')

load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat3BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_OD.mat')
OSBASIC_features.VEH.Rat3BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat3_SD1_OR_08-09_11_2017.mat')
OSBASIC_features.VEH.Rat3BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat3_SD3_HC_15_11_2017.mat')
OSBASIC_features.VEH.Rat3BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 


cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/4')

load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat4BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_OD.mat')
OSBASIC_features.VEH.Rat4BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat4_SD2_HC_13_12_2017.mat')
OSBASIC_features.VEH.Rat4BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat4_SD3_OR_11-12_12_2017.mat')
OSBASIC_features.VEH.Rat4BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/6')
load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat6BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Study_day1_HC_16feb2018.mat')
OSBASIC_features.VEH.Rat6BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Study_day2_OD_19_20feb2018.mat')
OSBASIC_features.VEH.Rat6BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 
load('newfeatures_GC_window_ripples_broadband_Study_day5_OR_26_27feb2018.mat')
OSBASIC_features.VEH.Rat6BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

%xo
cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/9')

load('newfeatures_GC_window_ripples_broadband_2018_06_04_Study_day10_OR.mat')
OSBASIC_features.VEH.Rat9BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat9BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_HC.mat')
OSBASIC_features.VEH.Rat9BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_OD.mat')
OSBASIC_features.VEH.Rat9BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/11')

load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat11BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_HC.mat')
OSBASIC_features.VEH.Rat11BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_OD.mat')
OSBASIC_features.VEH.Rat11BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_OR.mat')
OSBASIC_features.VEH.Rat11BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

cd('/mnt/genzel/Rat/OS_UMAP_analysis/UMAP_Basic_OS/13')

load('newfeatures_GC_window_ripples_broadband_CN.mat')
OSBASIC_features.VEH.Rat13BASIC.CN=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat13_344994_SD2_HC_15_05_2019.mat')
OSBASIC_features.VEH.Rat13BASIC.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat13_344994_SD3_OR_16-17_05_2019.mat')
OSBASIC_features.VEH.Rat13BASIC.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_Rat13_344994_SD4_OD_21-22_05_2019.mat')
OSBASIC_features.VEH.Rat13BASIC.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];
clear rip_duration rip_phase SO_b SO_a rip_threshold 

%% Features CBD

 cd /mnt/genzel/Rat/OS_CBD_analysis/chronic

%Rat 4
cd /mnt/genzel/Rat/OS_CBD_analysis/chronic/4

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat4_407699_SD1_OR_20210601')
CBD.VEH.Rat4CBD.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat4_407699_SD2_HC_20210603')
CBD.VEH.Rat4CBD.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat4_407699_SD3_OR_20210604')
CBD.CBD.Rat4CBD.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat4_407699_SD4_OD_20210607')
CBD.CBD.Rat4CBD.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat4_407699_SD6_OD_20210610')
CBD.VEH.Rat4CBD.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat4_407699_SD7_HC_20210614')
CBD.CBD.Rat4CBD.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 


% Rat 5
cd /mnt/genzel/Rat/OS_CBD_analysis/chronic/5

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat5_411358_SD1_OR_6_07_2021')
CBD.CBD.Rat5CBD.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat5_411358_SD2_OR_9_07_2021')
CBD.VEH.Rat5CBD.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat5_411358_SD3_OD_14-15_07_2021')
CBD.VEH.Rat5CBD.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat5_411358_SD4_HC_16_07_2021')
CBD.VEH.Rat5CBD.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat5_411358_SD5_OD_20210717')
CBD.CBD.Rat5CBD.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat5_411358_SD6_HC_20210719')
CBD.CBD.Rat5CBD.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

% Rat 6
cd /mnt/genzel/Rat/OS_CBD_analysis/chronic/6

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat6_411357_SD1_OR_20210706')
CBD.VEH.Rat6CBD.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat6_411357_SD2_OR_20210708')
CBD.CBD.Rat6CBD.OR=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat6_411357_SD3_OD_20210714')
CBD.CBD.Rat6CBD.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat6_411357_SD4_HC_20210716')
CBD.VEH.Rat6CBD.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat6_411357_SD5_OD_20210717')
CBD.VEH.Rat6CBD.OD=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

load('newfeatures_GC_window_ripples_broadband_Rat_OS_Ephys_cbd_chronic_Rat6_411357_SD6_HC_20210719')
CBD.CBD.Rat6CBD.HC=[rip_duration; rip_phase; SO_b; SO_a ;rip_threshold];;
clear rip_duration rip_phase SO_b SO_a rip_threshold 

CBD_features=CBD;
clear CBD