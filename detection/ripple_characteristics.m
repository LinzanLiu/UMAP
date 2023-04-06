%% SAME TRIAL, DIFFERENT CONDITION
clearvars
clc
close all
% x- Entropy; y- Mean Freq; z- Amplitude; l- AUC; q- Duration; p- Peak2Peak
% prompt = {'Select a trial for comparison 1(presleep)-2(PT1)-3(PT2)-4(PT3)-5(PT4)-6(PT5.1)-7(PT5.2)-8(PT5.3)-9(PT5.4))'};
% dlgtitle = 'Choose between (1-9)';
% definput = {'9'};
% ChosenPT = inputdlg(prompt,dlgtitle,[1 80],definput); %Chosen PT for Characteristics
% m=str2double(ChosenPT{1, 1});

% % OR 
% [OR,path]=uigetfile('ripple_waveforms_broadband*.mat','Select OR');
% File=fullfile(path,OR)
% ripple_waveform_broadband_total_OR=load(File);
% Ripples_OR_total=ripple_waveform_broadband_total_OR.ripple_waveform_broadband_total;
% 
% % HC
% [HC,path]=uigetfile('ripple_waveforms_broadband*.mat','Select HC');
% File=fullfile(path,HC)
% ripple_waveform_broadband_total_HC=load(File);
% Ripples_HC_total=ripple_waveform_broadband_total_HC.ripple_waveform_broadband_total;
% 
% % CN
% [CN,path]=uigetfile('ripple_waveforms_broadband*.mat','Select CN');
% File=fullfile(path,CN)
% ripple_waveform_broadband_total_CN=load(File);
% Ripples_CN_total=ripple_waveform_broadband_total_CN.ripple_waveform_broadband_total;
% 
% % OD
% [OD,path]=uigetfile('ripple_waveforms_broadband*.mat','Select OD');
% File=fullfile(path,OD)
% ripple_waveform_broadband_total_OD=load(File);
% Ripples_OD_total=ripple_waveform_broadband_total_OD.ripple_waveform_broadband_total;



cd('/media/genzel/genzel1/UMAP_NSD/5')
% cd('/media/genzel/genzel1/UMAP_Basic_OS/9')
% cd('/media/genzel/genzel1/UMAP_Basic_OS/13/')
TotalCharacteristicsHC= [];
TotalCharacteristicsCN= [];
TotalCharacteristicsOD= [];
TotalCharacteristicsOR= [];
TotalCharacteristicsOR_N= [];
TotalCharacteristicsOR_N_S= [];
TotalCharacteristicsOR_NN_S= [];

[Conditions,path]=uigetfile('ripple_waveforms_broadband*.mat','MultiSelect','on');


for m=1:9; %1(presleep)-2(PT1)-3(PT2)-4(PT3)-5(PT4)-6(PT5.1)-7(PT5.2)-8(PT5.3)-9(PT5.4)



clear Ripples_OR_NN_S Ripples_OR_N_S Ripples_HC Ripples_CN Ripples_OR_N Ripples_OD Ripples_OR
clear Ripples_OR_NN_S_total Ripples_OR_N_S_total Ripples_HC_total Ripples_CN_total Ripples_OR_N_total Ripples_OD_total Ripples_OR_total

% or_n, or_n_s and or_nn_s

OR_NN_S=Conditions(find(contains(Conditions,'OR_NN_S')))
if ~isempty(OR_NN_S)
FileOR_NN_S=fullfile(path,OR_NN_S{1,1})
ripple_waveform_broadband_total_OR_NN_S=load(FileOR_NN_S);
Ripples_OR_NN_S_total=ripple_waveform_broadband_total_OR_NN_S.ripple_waveform_broadband_total;
Ripples_OR_NN_S = Ripples_OR_NN_S_total{1, m}';
else
    Ripples_OR_NN_S={}; 
end

OR_N_S=Conditions(find(contains(Conditions,'OR_N_S')))
if ~isempty(OR_N_S)
FileOR_N_S=fullfile(path,OR_N_S{1,1})
ripple_waveform_broadband_total_OR_N_S=load(FileOR_N_S);
Ripples_OR_N_S_total=ripple_waveform_broadband_total_OR_N_S.ripple_waveform_broadband_total;
Ripples_OR_N_S = Ripples_OR_N_S_total{1, m}';
else
    Ripples_OR_N_S={};
end

HC=Conditions(find(contains(Conditions,'HC')))
if ~isempty(HC)
FileHC=fullfile(path,HC{1,1})
ripple_waveform_broadband_total_HC=load(FileHC);
Ripples_HC_total=ripple_waveform_broadband_total_HC.ripple_waveform_broadband_total;
Ripples_HC = Ripples_HC_total{1, m}';
else
    Ripples_HC={};
end
CN=Conditions(find(contains(Conditions,'CN')))
if ~isempty(CN)
FileCN=fullfile(path,CN{1,1})
ripple_waveform_broadband_total_CN=load(FileCN);
Ripples_CN_total=ripple_waveform_broadband_total_CN.ripple_waveform_broadband_total;
Ripples_CN = Ripples_CN_total{1, m}';
else
    Ripples_CN={};
end

OD=Conditions(find(contains(Conditions,'OD')))
if ~isempty(OD)
FileOD=fullfile(path,OD{1,1})
ripple_waveform_broadband_total_OD=load(FileOD);
Ripples_OD_total=ripple_waveform_broadband_total_OD.ripple_waveform_broadband_total;
Ripples_OD = Ripples_OD_total{1, m}';
else
   Ripples_OD={};
end

OR_N=Conditions(find(contains(Conditions,'OR_N')))
if ~isempty(OR_N)
FileOR_N=fullfile(path,OR_N{1,end})
ripple_waveform_broadband_total_OR_N=load(FileOR_N);
Ripples_OR_N_total=ripple_waveform_broadband_total_OR_N.ripple_waveform_broadband_total;
Ripples_OR_N = Ripples_OR_N_total{1, m}';
else
   Ripples_OR_N={};
end



OR=Conditions(find(contains(Conditions,'OR')))
OR(contains(OR,'OR_N')) = [];
if ~isempty(OR)
FileOR=fullfile(path,OR{1,end})
ripple_waveform_broadband_total_OR=load(FileOR);
Ripples_OR_total=ripple_waveform_broadband_total_OR.ripple_waveform_broadband_total;
Ripples_OR = Ripples_OR_total{1, m}';
else
    Ripples_OR={};
end

% Trial by Trial  
% Ripples_HC = Ripples_HC_total{1, m}';
% Ripples_OR = Ripples_OR_total{1, m}';
% Ripples_OD = Ripples_OD_total{1, m}';
% Ripples_CN = Ripples_CN_total{1, m}';
% Ripples_OR_N = Ripples_OR_N_total{1, m}';
% Ripples_OR_N_S = Ripples_OR_N_S_total{1, m}';
% Ripples_OR_NN_S = Ripples_OR_NN_S_total{1, m}';


if ~iscell(Ripples_HC)
    if isnan(Ripples_HC)
        Ripples_HC={};
    elseif isempty(Ripples_HC)
        Ripples_HC={};
    end
end
if ~iscell(Ripples_OR)
     if isnan(Ripples_OR)
        Ripples_OR={};
     elseif isempty(Ripples_OR)
        Ripples_OR={};
     end
end
if ~iscell(Ripples_OD)
     if isnan(Ripples_OD)
        Ripples_OD={};   
     elseif isempty(Ripples_OD)
         Ripples_OD={};
     end
end
if ~iscell(Ripples_CN)
     if isnan(Ripples_CN)
         Ripples_CN={};
     elseif isempty(Ripples_CN)
         Ripples_CN={};         
     end
end
if ~iscell(Ripples_OR_N)
     if isnan(Ripples_OR_N)
        Ripples_OR_N={};
     elseif isempty(Ripples_OR_N)
         Ripples_OR_N={};         
     end
end
if ~iscell(Ripples_OR_N_S)
     if isnan(Ripples_OR_N_S)
        Ripples_OR_N_S={};
     elseif isempty(Ripples_OR_N_S)
         Ripples_OR_N_S={};                
     end
end
if ~iscell(Ripples_OR_NN_S)
     if isnan(Ripples_OR_NN_S)
        Ripples_OR_NN_S={};
     elseif isempty(Ripples_OR_NN_S)
         Ripples_OR_NN_S={};        
     end
end

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_HC,'UniformOutput',false);
si_index= cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_HC= Ripples_HC(si_index);

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_OR,'UniformOutput',false);
si_index = cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_OR = Ripples_OR(si_index); 

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_OD,'UniformOutput',false);
si_index= cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_OD= Ripples_OD(si_index);

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_CN,'UniformOutput',false);
si_index = cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_CN = Ripples_CN(si_index); 

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_OR_N,'UniformOutput',false);
si_index = cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_OR_N = Ripples_OR_N(si_index); 

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_OR_N_S,'UniformOutput',false);
si_index = cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_OR_N_S = Ripples_OR_N_S(si_index); 

si_index = cellfun(@(equis) sum(isnan(equis)), Ripples_OR_NN_S,'UniformOutput',false);
si_index = cell2mat(si_index);
si_index = ~logical(si_index);
Ripples_OR_NN_S = Ripples_OR_NN_S(si_index); 

Wn1=[100/(2500/2) 300/(2500/2)]; % Cutoff=100-300 Hz
[b1,a1] = butter(3,Wn1,'bandpass'); %Filter coefficients
Ripples_OR_N = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_OR_N ,'UniformOutput',false);
Ripples_OR_N_S = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_OR_N_S ,'UniformOutput',false);
Ripples_OR_NN_S = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_OR_NN_S ,'UniformOutput',false);
Ripples_OR = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_OR ,'UniformOutput',false);
Ripples_HC = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_HC ,'UniformOutput',false);
Ripples_OD = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_OD ,'UniformOutput',false);
Ripples_CN = cellfun(@(equis)filtfilt(b1,a1,equis),Ripples_CN ,'UniformOutput',false);

% Entropy
x_or = cellfun(@(equis) entropy(equis),Ripples_OR,'UniformOutput',false);
x_or = vertcat(x_or{:});
x_hc = cellfun(@(equis) entropy(equis),Ripples_HC,'UniformOutput',false);
x_hc = vertcat(x_hc{:});
x_od = cellfun(@(equis) entropy(equis),Ripples_OD,'UniformOutput',false);
x_od = vertcat(x_od{:});
x_cn = cellfun(@(equis) entropy(equis),Ripples_CN,'UniformOutput',false);
x_cn = vertcat(x_cn{:});
x_or_n = cellfun(@(equis) entropy(equis),Ripples_OR_N,'UniformOutput',false);
x_or_n = vertcat(x_or_n{:});
x_or_n_s = cellfun(@(equis) entropy(equis),Ripples_OR_N_S,'UniformOutput',false);
x_or_n_s = vertcat(x_or_n_s{:});
x_or_nn_s = cellfun(@(equis) entropy(equis),Ripples_OR_NN_S,'UniformOutput',false);
x_or_nn_s = vertcat(x_or_nn_s{:});



% Mean Freqs
y_or = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_OR,'UniformOutput',false);
y_or = vertcat(y_or{:});
y_hc = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_HC,'UniformOutput',false);
y_hc = vertcat(y_hc{:});
y_od = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_OD,'UniformOutput',false);
y_od = vertcat(y_od{:});
y_cn = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_CN,'UniformOutput',false);
y_cn = vertcat(y_cn{:});
y_or_n = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_OR_N,'UniformOutput',false);
y_or_n = vertcat(y_or_n{:});
y_or_n_s = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_OR_N_S,'UniformOutput',false);
y_or_n_s = vertcat(y_or_n_s{:});
y_or_nn_s = cellfun(@(equis) (meanfreq(equis,2500)),Ripples_OR_NN_S,'UniformOutput',false);
y_or_nn_s = vertcat(y_or_nn_s{:});

% Amplitude
z_or = cellfun(@(equis) max(abs(hilbert(equis))) ,Ripples_OR,'UniformOutput',false);
z_or = vertcat(z_or{:});
z_hc = cellfun(@(equis) max(abs(hilbert(equis))),Ripples_HC,'UniformOutput',false);
z_hc = vertcat(z_hc{:});
z_od = cellfun(@(equis) max(abs(hilbert(equis))) ,Ripples_OD,'UniformOutput',false);
z_od = vertcat(z_od{:});
z_cn = cellfun(@(equis) max(abs(hilbert(equis))),Ripples_CN,'UniformOutput',false);
z_cn = vertcat(z_cn{:});
z_or_n = cellfun(@(equis) max(abs(hilbert(equis))) ,Ripples_OR_N,'UniformOutput',false);
z_or_n = vertcat(z_or_n{:});
z_or_n_s = cellfun(@(equis) max(abs(hilbert(equis))) ,Ripples_OR_N_S,'UniformOutput',false);
z_or_n_s = vertcat(z_or_n_s{:});
z_or_nn_s = cellfun(@(equis) max(abs(hilbert(equis))) ,Ripples_OR_NN_S,'UniformOutput',false);
z_or_nn_s = vertcat(z_or_nn_s{:});


% Area under curve
l_or = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_OR,'UniformOutput',false));
l_hc = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_HC,'UniformOutput',false));
l_od = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_OD,'UniformOutput',false));
l_cn = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_CN,'UniformOutput',false));
l_or_n = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_OR_N,'UniformOutput',false));
l_or_n_s = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_OR_N_S,'UniformOutput',false));
l_or_nn_s = cell2mat(cellfun(@(equis) trapz((1:length(equis))./2500,abs(equis)), Ripples_OR_NN_S,'UniformOutput',false));

% Duration
q_or =(cellfun('length',Ripples_OR)/2500);
q_hc = (cellfun('length',Ripples_HC)/2500);
q_od =(cellfun('length',Ripples_OD)/2500);
q_cn = (cellfun('length',Ripples_CN)/2500);
q_or_n =(cellfun('length',Ripples_OR_N)/2500);
q_or_n_s =(cellfun('length',Ripples_OR_N_S)/2500);
q_or_nn_s =(cellfun('length',Ripples_OR_NN_S)/2500);

% PeaktoPeak Amplitude
p_or = cellfun(@peak2peak,Ripples_OR);
p_hc = cellfun(@peak2peak,Ripples_HC);
p_od = cellfun(@peak2peak,Ripples_OD);
p_cn = cellfun(@peak2peak,Ripples_CN);
p_or_n = cellfun(@peak2peak,Ripples_OR_N);
p_or_n_s = cellfun(@peak2peak,Ripples_OR_N_S);
p_or_nn_s = cellfun(@peak2peak,Ripples_OR_NN_S);

% Combination of characteristics 
try
l_hc = l_hc';
l_cn = l_cn';
l_od = l_od';
l_or = l_or';
l_or_n = l_or_n';
l_or_n_s = l_or_n_s';
l_or_nn_s = l_or_nn_s';

q_hc = q_hc';
q_cn = q_cn';
q_od = q_od';
q_or = q_or';
q_or_n = q_or_n';
q_or_n_s = q_or_n_s';
q_or_nn_s = q_or_nn_s';

p_hc = p_hc';
p_cn = p_cn';
p_od = p_od';
p_or = p_or';
p_or_n = p_or_n';
p_or_n_s = p_or_n_s';
p_or_nn_s = p_or_nn_s';

totalCharacteristicsHC= [zeros(size(x_hc))+m x_hc y_hc z_hc l_hc q_hc p_hc];
totalCharacteristicsCN= [zeros(size(x_cn))+m x_cn y_cn z_cn l_cn q_cn p_cn];
totalCharacteristicsOD= [zeros(size(x_od))+m x_od y_od z_od l_od q_od p_od];
totalCharacteristicsOR= [zeros(size(x_or))+m x_or y_or z_or l_or q_or p_or];
totalCharacteristicsOR_N= [zeros(size(x_or_n))+m x_or_n y_or_n z_or_n l_or_n q_or_n p_or_n];
totalCharacteristicsOR_N_S= [zeros(size(x_or_n_s))+m x_or_n_s y_or_n_s z_or_n_s l_or_n_s q_or_n_s p_or_n_s];
totalCharacteristicsOR_NN_S= [zeros(size(x_or_nn_s))+m x_or_nn_s y_or_nn_s z_or_nn_s l_or_nn_s q_or_nn_s p_or_nn_s];
catch 
totalCharacteristicsHC= [zeros(size(x_hc))+m x_hc y_hc z_hc l_hc q_hc p_hc];
totalCharacteristicsCN= [zeros(size(x_cn))+m x_cn y_cn z_cn l_cn q_cn p_cn];
totalCharacteristicsOD= [zeros(size(x_od))+m x_od y_od z_od l_od q_od p_od];
totalCharacteristicsOR= [zeros(size(x_or))+m x_or y_or z_or l_or q_or p_or];
totalCharacteristicsOR_N= [zeros(size(x_or_n))+m x_or_n y_or_n z_or_n l_or_n q_or_n p_or_n];
totalCharacteristicsOR_N_S= [zeros(size(x_or_n_s))+m x_or_n_s y_or_n_s z_or_n_s l_or_n_s q_or_n_s p_or_n_s];
totalCharacteristicsOR_NN_S= [zeros(size(x_or_nn_s))+m x_or_nn_s y_or_nn_s z_or_nn_s l_or_nn_s q_or_nn_s p_or_nn_s];
end

TotalCharacteristicsHC= [TotalCharacteristicsHC ; totalCharacteristicsHC];
TotalCharacteristicsCN= [TotalCharacteristicsCN; totalCharacteristicsCN];
TotalCharacteristicsOD= [TotalCharacteristicsOD; totalCharacteristicsOD];
TotalCharacteristicsOR= [TotalCharacteristicsOR; totalCharacteristicsOR];
TotalCharacteristicsOR_N= [TotalCharacteristicsOR_N ; totalCharacteristicsOR_N];
TotalCharacteristicsOR_N_S= [TotalCharacteristicsOR_N_S; totalCharacteristicsOR_N_S];
TotalCharacteristicsOR_NN_S= [TotalCharacteristicsOR_NN_S; totalCharacteristicsOR_NN_S];




end
% subplot(3,2,1)
% h1=histogram(x_or); title('Entropy');xlabel('Entropy');ylabel('Count')
% h1.FaceColor= [1 1 1]; h1.LineWidth=1;
% hold on
% h2=histogram(x_hc); title('Entropy');xlabel('Entropy');ylabel('Count')
% h2.FaceColor= [0.4940 0.1840 0.5560];
% h3=histogram(x_od); title('Entropy');xlabel('Entropy');ylabel('Count')
% h3.FaceColor= [0.7 0.7 0.7]; h3.LineWidth=0.4;
% hold on
% h4=histogram(x_cn); title('Entropy');xlabel('Entropy');ylabel('Count')
% h4.FaceColor= [0.8940 0.3840 0.6560];
% legend('OR', 'HC', 'OD', 'CN')
% alpha(0.7)
% hold off
% 
% subplot(3,2,2)
% 
% h1=histogram(y_or); title('Average Frequencies');xlabel('Frequency (Hz)');ylabel('Count')
% h1.BinWidth = 0.75;
% h1.FaceColor= [1 1 1];h1.LineWidth=1;
% hold on
% h2=histogram(y_hc); title('Average Frequencies');xlabel('Frequency (Hz)');ylabel('Count')
% h2.BinWidth = 0.75;
% h2.FaceColor= [0.4940 0.1840 0.5560];
% h3=histogram(y_od); title('Average Frequencies');xlabel('Frequency (Hz)');ylabel('Count')
% h3.BinWidth = 0.75;
% h3.FaceColor= [0.7 0.6 0.5];h3.LineWidth=0.4;
% hold on
% h4=histogram(y_cn); title('Average Frequencies');xlabel('Frequency (Hz)');ylabel('Count')
% h4.BinWidth = 0.75;
% h4.FaceColor= [0.2940 0.0840 0.2560];
% legend('OR', 'HC', 'OD', 'CN')
% alpha(0.7)
% xlim([120 220])
% hold off
% 
% 
% subplot(3,2,3)
% 
% h1=histogram(z_or); title('Amplitude');xlabel('\muV');ylabel('Count')
% h1.BinWidth = 2;
% h1.FaceColor= [1 1 1];h1.LineWidth=1;
% hold on
% h2=histogram(z_hc); title('Amplitude');xlabel('\muV');ylabel('Count')
% h2.BinWidth = 2;
% h2.FaceColor= [0.4940 0.1840 0.5560];
% legend('OR', 'HC')
% alpha(0.7)
%       xlim([0 100])
% hold off
% 
% 
% subplot(3,2,4)
% 
% h1=histogram(l_or); title('Area under the curve');xlabel('AUC');ylabel('Count')
% h1.BinWidth = 0.25;
% h1.FaceColor = [1 1 1]; h1.LineWidth=1;
% hold on
% h2=histogram(l_hc); title('Area under the curve');xlabel('AUC');ylabel('Count')
% h2.BinWidth = 0.25;
% h2.FaceColor = [0.4940 0.1840 0.5560];
% legend('OR', 'HC')
% alpha(0.7)
%         xlim([-1 10])
% hold off
% 
% subplot(3,2,5)
% 
% h1=histogram(q_or*2500); title('Duration');xlabel('Miliseconds');ylabel('Count') 
% h1.BinWidth = 2;
% h1.FaceColor = [1 1 1];h1.LineWidth=1;
% hold on
% h2=histogram(q_hc*2500); title('Duration');xlabel('Miliseconds');ylabel('Count')
% h2.BinWidth = 2;
% h2.FaceColor= [0.4940 0.1840 0.5560];
% legend('OR', 'HC')
% alpha(0.7)
%       xlim([30 200])
% hold off
% 
% subplot(3,2,6)
% 
% h1=histogram(p_or); title('Peak-to-peak amplitude');xlabel('\muV');ylabel('Count'); 
% h1.BinWidth = 8;
% h1.FaceColor = [1 1 1];h1.LineWidth=1;
% hold on
% h2=histogram(p_hc); title('Peak-to-peak amplitude');xlabel('\muV');ylabel('Count'); 
% h2.BinWidth = 8;
% h2.FaceColor= [0.4940 0.1840 0.5560];
% legend('OR', 'HC')
%  alpha(0.7)
% xlim([0 250])
% hold off
%            
TotalCharacteristicsHC= table(TotalCharacteristicsHC);
TotalCharacteristicsCN= table(TotalCharacteristicsCN);
TotalCharacteristicsOD= table(TotalCharacteristicsOD);
TotalCharacteristicsOR= table(TotalCharacteristicsOR);
TotalCharacteristicsOR_N= table(TotalCharacteristicsOR_N);
TotalCharacteristicsOR_N_S= table(TotalCharacteristicsOR_N_S);
TotalCharacteristicsOR_NN_S= table(TotalCharacteristicsOR_NN_S);


filename = 'characteristics_sheet.xlsx';
writetable(TotalCharacteristicsHC,filename,'Sheet','HC','Range','A1:H100000','WriteVariableNames',false)
writetable(TotalCharacteristicsCN,filename,'Sheet','CN','Range','A1:H100000','WriteVariableNames',false)
writetable(TotalCharacteristicsOD,filename,'Sheet','OD','Range','A1:H100000','WriteVariableNames',false)
writetable(TotalCharacteristicsOR,filename,'Sheet','OR','Range','A1:H100000','WriteVariableNames',false)
writetable(TotalCharacteristicsOR_N,filename,'Sheet','OR_N','Range','A1:H100000','WriteVariableNames',false)
writetable(TotalCharacteristicsOR_N_S,filename,'Sheet','OR_N_S','Range','A1:H100000','WriteVariableNames',false)
writetable(TotalCharacteristicsOR_NN_S,filename,'Sheet','OR_NN_S','Range','A1:H100000','WriteVariableNames',false)
