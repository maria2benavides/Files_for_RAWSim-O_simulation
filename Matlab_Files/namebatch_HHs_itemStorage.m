% The following lines clean all variables from memory and clean the command window
clear all  
clc

%%
% EXECUTABLE LINE
% ejecutable is the variable with the path of your RAWSimO.CLI.exe. You
% need to add an space at the end
ejecutable = "C:\Users\MARIA\OneDrive\Documentos\DCC_Tec\Simulation_DCC_RMFS\Proyecto_visual_RAWSim_O\RAWSimO.CLI\bin\Debug\net6.0\RAWSimO.CLI.exe ";

% INSTANCES is equivalent to your .xinst file

%xinst = ["1-4-4-32-183.xinst "];  % Example for INSTANCE 60

% Uncomment the following blocks of code for defining each one of the sets. For
% example, for Set 1, uncomment the first block (lines 18 - 35)

% SET 1: instances 11
% xinst = ["1-1-1-1-3094.xinst "];
%instance 11, 12, 15-30
% xinst = ["1-1-1-1-3094.xinst ",...
%          "1-1-1-32-3094.xinst ",...
%          "1-12-6-6-1190.xinst ",...
%          "1-12-6-12-1190.xinst ",...
%          "1-12-12-6-1190.xinst ",...
%          "1-12-12-12-1190.xinst ",...
%          "1-6-6-6-1190.xinst ",...
%          "1-6-6-12-1190.xinst ",...
%          "1-6-12-6-1190.xinst ",...
%          "1-6-12-12-1190.xinst ",...
%          "1-1-1-6-142.xinst ",...
%          "1-1-1-12-1190.xinst ",...
%          "1-1-6-1-618.xinst ",...
%          "1-1-6-6-618.xinst ",...
%          "1-1-6-12-618.xinst ",...
%          "1-1-12-1-1190.xinst ",...
%          "1-1-12-6-1190.xinst ",...
%          "1-1-12-12-1190.xinst "];

% SET 2: instances 31 to 40
% xinst=["1-6-1-1-618.xinst ",
%         "1-6-1-6-618.xinst ",
%         "1-6-1-12-618.xinst ",
%         "1-6-6-1-618.xinst ",
%         "1-6-12-1-1190.xinst ",
%         "1-12-1-1-1190.xinst ",
%         "1-12-1-6-1190.xinst ",
%         "1-12-1-12-1190.xinst ",
%         "1-12-6-1-1190.xinst ",
%         "1-12-12-1-1190.xinst "];

% SET 3 : instances 41 to 56
xinst  = ["1-2-2-3-102.xinst ",
        "1-2-4-3-183.xinst ",
        "1-4-2-3-183.xinst ",
        "1-4-4-3-183.xinst ",
        "1-2-2-3-374.xinst ",
        "1-2-4-3-673.xinst ",
        "1-4-2-3-673.xinst ",
        "1-4-4-3-673.xinst ",
        "1-2-2-6-102.xinst ",
        "1-2-4-6-183.xinst ",
        "1-4-2-6-183.xinst ",
        "1-4-4-6-183.xinst ",
        "1-2-2-6-374.xinst ",
        "1-2-4-6-673.xinst ",
        "1-4-2-6-673.xinst ",
        "1-4-4-6-673.xinst "];

% SET 4 : instances 57 to 72
% xinst=["1-2-2-18-102.xinst ",
%         "1-2-4-32-183.xinst ",
%         "1-4-2-32-183.xinst ",
%         "1-4-4-32-183.xinst ",
%         "1-2-2-32-374.xinst ",
%         "1-2-4-32-673.xinst ",
%         "1-4-2-32-673.xinst ",
%         "1-4-4-32-673.xinst ",
%         "1-2-2-10-102.xinst ",
%         "1-2-4-16-183.xinst ",
%         "1-4-2-16-183.xinst ",
%         "1-4-4-16-183.xinst ",
%         "1-2-2-66-374.xinst ",
%         "1-2-4-75-673.xinst ",
%         "1-4-2-75-673.xinst ",
%         "1-4-4-75-673.xinst "];

xinstLen = length(xinst);  % Length of the xinst vector, which provides the number of instances within the set you are running
% .xsett   
xsett = "SimpleItem-Fill-200-200-86400.xsett ";  % Use this for 24 hours of simulation
% xsett = "SimpleItem-Fill-200-200-18000_Mu-1000.xsett "; % 5 hours

xsettlen = length(xsett); % Length of the xsett vector

% .xconf

% HH set 1 time best
% xconf = ["iniR_1T_9N_isCorr_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
%worst HH
% xconf = ["iniR_9N_1T_isCorr_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
% orders best and worst hh
% xconf = ["iniR_1T_9N_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf ",...
%          "iniR_9N_1T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];


% HH set 2 Time best 
% xconf = ["iniF_1N_9T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
%worst HH
% xconf = ["iniF_7N_3T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
% orders best and worst hh
% xconf = ["iniF_1N_9S_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf ",...
%          "iniF_8N_2S_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];

% HH set 3 Time
% xconf = ["iniF_1N_9T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf " ];
%worst HH
% xconf = ["iniF_9N_1T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
% orders best and worst hh
% xconf = ["iniF_1N_9T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf ",...
%          "iniF_9N_1T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
% extra HH
% xconf = ["iniR_1N_9T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
xconf = ["iniR_9N_1T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];

% HH set 4 Time
% xconf = ["iniR_1T_9N_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
%worst HH
% xconf = ["iniR_9N_1T_is_ClosePPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];
% orders best and worst hh
% xconf = ["iniR_1N_9S_isRand_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf ",...
%          "iniR_9N_1S_isRand_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled.xconf "];

% Pod storage heuristics with Empiest heuristic configuration for item storage
% xconf = ["Random_PPFAR-TABalanced-SAActivateAll-ISEmptiest-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "Fixed_PPFAR-TABalanced-SAActivateAll-ISEmptiest-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "NEAREST_PPFAR-TABalanced-SAActivateAll-ISEmptiest-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "StationBased_PPFAR-TABalanced-SAActivateAll-ISEmptiest-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "CacheEuclid_PPFAR-TABalanced-SAActivateAll-ISEmptiest-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "Turnover_PPFAR-TABalanced-SAActivateAll-ISEmptiest-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf "];

% xconf file for the experiment 'Validating Item Storage heuristics'
% xconf = ["R_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%   "R_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%   "R_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%   "R_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%   "R_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf  ",...
%   "R_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf " ];

% xconf file for the Stage 1, Set 1  (TO DO)
% xconf = ["R_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "R_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "R_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "R_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "R_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "R_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "F_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "F_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "F_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "F_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "F_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "F_Leas_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "N_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "N_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "N_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "N_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "N_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "N_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "S_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "S_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "S_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "S_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "S_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "S_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "C_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "C_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "C_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "C_ClosestLocationPPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "C_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "C_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "T_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "T_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "T_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "T_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "T_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf ",...
%     "T_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange.xconf " ];


% Include the other ones as you require them (remember to comment/uncomment as
% necessary)

xconfLen = length(xconf);

% Seeds for making the random numbers repeatable (so data can be replicated by
% others) 
seed = ["1","2","3","7"]; % Our base seeds
%seed = ["1"]; % An example with a single seed

seedLen = length(seed);

% To create the list of folders (do not modify this)
carpetassinespacio = string; 
carpetas = string;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%  Change A acording to the set ... 
% For example, for Set 1: [11,12,15:30]; for Set 2: [31:40]; for Set 3: [41:56]; for Set 4: [57:72]
A = string([41:56]); % An example with a single instance

carpetasLen = xsettlen*xinstLen;
for i = 1: length(A) % This sweeps the given set 
        carpetas(i)= append('WorstHHSet3_',A(i),' '); %change for the name of your experiment folder 
        carpetassinespacio(i)= append('WorstHHSet3_',A(i)); %change for the name of your experiment folder
end


%% To create each experiment for the CMD 
% This code sweeps all the configurations defined in the previous steps and
% creates the command for each experiment
n=1;
names = string;
for i= 1:xinstLen
    for j = 1: xsettlen
        for k = 1: xconfLen
            for m= 1:seedLen
                % path to executable .xinst .xsett .xconf nameExperimentFolder seed
                name = strcat(ejecutable, xinst(i), xsett(j), xconf(k), carpetas(i), seed(m));
                names(n) = string(name);
                n = n + 1;
            end
        end
    end
end

names= names';

%% to print in the experiment batch file 
linea1 = "cd C:\Users\MARIA\OneDrive\Desktop\Test_rawsimO"; % the path to your main experiment folder
% The name of the batch file: please select a very descriptive name, Use _ to separate all the information
fID = fopen('BatchFile_WorstTimesHHSet_3_inirandom_seed1_2_3_7_24h.bat','w') 
fprintf(fID, '%s\n \n', linea1)
fprintf(fID, '%s\n', names)
fclose(fID)



% until here the first part, creating the experiment file



%%  BATCH FILE TO PROCESS THE DATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
linea1 = "cd C:\Users\MARIA\OneDrive\Desktop\Test_rawsimO"; % Path to your Desktop experiments folder
% name of the batch file to process the data: you can use the same name of experiment batch file, but include 
% the word ProcessData to differentiate between files
fID2 = fopen('ProcessData_BatchFile_WorstHHSet_inirandom_3_seed1_2_3_7_24h.bat','w'); 
fprintf(fID2, '%s\n \n', linea1);

iniciocopy = "copy C:\Users\MARIA\OneDrive\Desktop\Test_rawsimO\"; % Path to your Desktop experiments folder
carpetadepaste = "C:\Users\MARIA\OneDrive\Desktop\Test_rawsimO\BestWorstTimeHHSet_3_statistics" % Path to a new folder for pasting the renamed statistics files 
inicioren = "REN C:\Users\MARIA\OneDrive\Desktop\Test_rawsimO\BestWorstTimeHHSet_3_statistics\statistics.txt";% Change for the same path as in the previous line, but do not change the \statistics.txt part

%% creating the names of all subfolders

% These are the same names of the xinst vector, but the .xinst change for a dash(-) and requires no space at the end
% SET 1: instances names 11, 12, and  15 to 30
% instname = ["1-1-1-1-3094-",...
%           "1-1-1-32-3094-",...
%          "1-12-6-6-1190-",...
%          "1-12-6-12-1190-",...
%          "1-12-12-6-1190-",...
%          "1-12-12-12-1190-",...
%          "1-6-6-6-1190-",...
%          "1-6-6-12-1190-",...
%          "1-6-12-6-1190-",...
%          "1-6-12-12-1190-",...
%          "1-1-1-6-142-",...
%          "1-1-1-12-1190-",...
%          "1-1-6-1-618-",...
%          "1-1-6-6-618-",...
%          "1-1-6-12-618-",...
%          "1-1-12-1-1190-",...
%          "1-1-12-6-1190-",...
%          "1-1-12-12-1190-"];

 % SET 2: instances names  s 31 a 40
 % instname =["1-6-1-1-618-",
 %        "1-6-1-6-618-",
 %        "1-6-1-12-618-",
 %        "1-6-6-1-618-",
 %        "1-6-12-1-1190-",
 %        "1-12-1-1-1190-",
 %        "1-12-1-6-1190-",
 %        "1-12-1-12-1190-",
 %        "1-12-6-1-1190-",
 %        "1-12-12-1-1190-"];

% SET 3: instances names  41 to 56
 instname =["1-2-2-3-102-",
        "1-2-4-3-183-",
        "1-4-2-3-183-",
        "1-4-4-3-183-",
        "1-2-2-3-374-",
        "1-2-4-3-673-",
        "1-4-2-3-673-",
        "1-4-4-3-673-",
        "1-2-2-6-102-",
        "1-2-4-6-183-",
        "1-4-2-6-183-",
        "1-4-4-6-183-",
        "1-2-2-6-374-",
        "1-2-4-6-673-",
        "1-4-2-6-673-",
        "1-4-4-6-673-"];

 % SET 4: instances names 57 to 72
 % instname =["1-2-2-18-102-",
 %        "1-2-4-32-183-",
 %        "1-4-2-32-183-",
 %        "1-4-4-32-183-",
 %        "1-2-2-32-374-",
 %        "1-2-4-32-673-",
 %        "1-4-2-32-673-",
 %        "1-4-4-32-673-",
 %        "1-2-2-10-102-",
 %        "1-2-4-16-183-",
 %        "1-4-2-16-183-",
 %        "1-4-4-16-183-",
 %        "1-2-2-66-374-",
 %        "1-2-4-75-673-",
 %        "1-4-2-75-673-",
 %        "1-4-4-75-673-"];

settname = "SimpleItem-Fill-200-200-86400-"; % For 24 hours
% settname = "SimpleItem-Fill-200-200-18000-";

% tecname vector are the names of your .xconf , but changing .xconf to - and without the final espace
% tecname = ["R_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "R_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "R_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "R_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "R_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "R_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "F_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "F_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "F_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "F_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "F_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "F_Leas_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "N_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "N_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "N_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "N_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "N_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "N_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSNearest-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "S_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "S_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "S_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "S_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "S_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "S_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSStationBased-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "C_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "C_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "C_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "C_ClosestLocationPPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "C_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "C_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSCache-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "T_Random_PPFAR-TABalanced-SAActivateAll-ISRandom-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "T_Correlative_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "T_Turnover_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "T_ClosestLocation_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "T_Reactive_PPFAR-TABalanced-SAActivateAll-ISReactive-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange-",...
%     "T_Least_PPFAR-TABalanced-SAActivateAll-ISLeastDemand-PSTurnover-RPDummy-OBPodMatching-RBSamePod-MMNoChange-"];

%set 1
% tecname = ["iniR_1T_9N_isCorr_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
% tecname = ["iniR_9N_1T_isCorr_PPFAR-TABalanced-SAActivateAll-ISCorrelative-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-" ];
%orders
% tecname = ["iniR_1T_9N_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-",...
%          "iniR_9N_1T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];


%Set 2
% tecname = ["iniF_1N_9T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
%worst HH
% tecname = ["iniF_7N_3T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
%orders
% tecname = ["iniF_1N_9S_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-",...
%          "iniF_8N_2S_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];


%set 3
% tecname = ["iniF_1N_9T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-" ];
%worst HH
% tecname = ["iniF_9N_1T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
%orders
% tecname = ["iniF_1N_9T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-",...
%          "iniF_9N_1T_isTurn_PPFAR-TABalanced-SAActivateAll-ISTurnover-PSFixed-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
%extra
% tecname = ["iniR_1N_9T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
tecname = ["iniR_9N_1T_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];

%set 4
% tecname = ["iniR_1T_9N_isClose_PPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
%worst HH
% tecname = ["iniR_9N_1T_is_ClosePPFAR-TABalanced-SAActivateAll-ISClosestLocation-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];
% orders
% tecname = ["iniR_1N_9S_isRand_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-",...
%          "iniR_9N_1S_isRand_PPFAR-TABalanced-SAActivateAll-ISRandom-PSRandom-RPDummy-OBPodMatching-RBSamePod-MMScheduled-"];



seedLen = length(seed);

tecnameLen=length(tecname);
instnameLen = length(instname);
subcarpetas = string;
n=1;

for i=1: instnameLen
    for p =1: tecnameLen
     for j = 1: seedLen
        subcarpetas = strcat(instname(i),settname,tecname(p),seed(j));
        subcarpetasname(n) = string(subcarpetas);
        n=n+1;
     end
    end
end


%% Creates the list of new names for the statistics files
filenames = FILENAME()'; % this line call the FILENAME.m code and you only need to change that matlab program
p=1;

for i = 1 :carpetasLen
    for j = 1:tecnameLen
        for k = 1: seedLen
            fprintf(fID2,'%s%s\\%s\\statistics.txt  %s\n',iniciocopy,carpetassinespacio(i),subcarpetasname(p),carpetadepaste);
            fprintf(fID2,'%s %s \n\n', inicioren, filenames(p));
            p = p+1;
        end 
    end
end
fclose(fID2);