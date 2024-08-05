function [filenames] = FILENAME()
%%  FILENAME
% In this file you just have to modify the set of instances that you are using

% filename = intaname + statistics + 00H + PodStorageConfig + seed

% H is the simulation time window (24 for your case)
H = ["24H"];

% PodStorageConfig is the name of the technique/heuristic we are using. For example,
% R_ClosestLocation , R_Correlative , R_Least ...

% PodStorageConfig = ["R_Random", "R_Correlative", "R_Turnover", "R_ClosestLocation", "R_Reactive", "R_Least"...
%     "F_Random", "F_Correlative", "F_Turnover", "F_ClosestLocation", "F_Reactive", "F_Least"...
%     "N_Random", "N_Correlative", "N_Turnover", "N_ClosestLocation", "N_Reactive", "N_Least"...
%     "S_Random", "S_Correlative", "S_Turnover", "S_ClosestLocation", "S_Reactive", "S_Least"...
%     "C_Random", "C_Correlative", "C_Turnover", "C_ClosestLocation", "C_Reactive", "C_Least"...
%     "T_Random", "T_Correlative", "T_Turnover", "T_ClosestLocation", "T_Reactive", "T_Least"];

%set 1 best hh
% PodStorageConfig = [ "iniR_1T_9N_isCorr"];
% PodStorageConfig = [ "iniR_9N_1T_isCorr"];
% PodStorageConfig = [ "iniR_1T_9N_isClose", "iniR_9N_1T_isClose"];

%set 2
% PodStorageConfig = [ "iniF_1N_9T_isTurn"];
% PodStorageConfig = [ "iniF_7N_3T_isTurn"];
% PodStorageConfig = [ "iniF_1N_9S_isTurn", "iniF_8N_2S_isTurn"];


% set 3
% PodStorageConfig = [ "iniF_1N_9T_isClose"];
% PodStorageConfig = [ "iniF_9N_1T_isClose"];
% PodStorageConfig = [ "iniF_1N_9T_isTurn", "iniF_9N_1T_isTurn"];
PodStorageConfig = ["iniR_9N_1T_isClose"];

%set 4
% PodStorageConfig = [ "iniR_1T_9N_isClose"];
% PodStorageConfig = [ "iniR_9N_1T_isClose"];
%orders
% PodStorageConfig = [ "iniR_1N_9S_isRand", "iniR_9N_1S_isRand"];
%extra
% PodStorageConfig = [ "iniR_1N_9T_isClose"];



% seeds
seed = ["1","2" ,"3" ,"7" ];

% Name of instances with different format
% instance 11
% Instancia = ["1_1_1_1_3094"];

% Set 1 instances 11, 12 and 15 to 30
% Instancia = ["1_1_1_1_3094",...
% "1_1_1_32_3094",...
% "1_12_6_6_1190",...
% "1_12_6_12_1190",...
% "1_12_12_6_1190",...
% "1_12_12_12_1190",...
% "1_6_6_6_1190",...
% "1_6_6_12_1190",...
% "1_6_12_6_1190",...
% "1_6_12_12_1190",...
% "1_1_1_6_142",...
% "1_1_1_12_1190",...
% "1_1_6_1_618",...
% "1_1_6_6_618",...
% "1_1_6_12_618",...
% "1_1_12_1_1190",...
% "1_1_12_6_1190",...
% "1_1_12_12_1190"];


% Set 2 : 31 to 40
% Instancia=["1_6_1_1_618",
% "1_6_1_6_618",
% "1_6_1_12_618",
% "1_6_6_1_618",
% "1_6_12_1_1190",
% "1_12_1_1_1190",
% "1_12_1_6_1190",
% "1_12_1_12_1190",
% "1_12_6_1_1190",
% "1_12_12_1_1190"];


% Set 3 : 41 to 56
Instancia =  ["1_2_2_3_102",
        "1_2_4_3_183",
        "1_4_2_3_183",
        "1_4_4_3_183",
        "1_2_2_3_374",
        "1_2_4_3_673",
        "1_4_2_3_673",
        "1_4_4_3_673",
        "1_2_2_6_102",
        "1_2_4_6_183",
        "1_4_2_6_183",
        "1_4_4_6_183",
        "1_2_2_6_374",
        "1_2_4_6_673",
        "1_4_2_6_673",
        "1_4_4_6_673"];

% Set 4 :  57 to 72
% Instancia=["1_2_2_18_102",
%         "1_2_4_32_183",
%         "1_4_2_32_183",
%         "1_4_4_32_183",
%         "1_2_2_32_374",
%         "1_2_4_32_673",
%         "1_4_2_32_673",
%         "1_4_4_32_673",
%         "1_2_2_10_102",
%         "1_2_4_16_183",
%         "1_4_2_16_183",
%         "1_4_4_16_183",
%         "1_2_2_66_374",
%         "1_2_4_75_673",
%         "1_4_2_75_673",
%         "1_4_4_75_673"];


%%%%%%%%%%%
HLen = length(H); % length of time vector
PodStorageConfigLen = length(PodStorageConfig); % length
seedLen = length(seed); % length seed vector
InstanciaLen = length(Instancia); 
filename = string;
filenames = string;

n= 1;
% Sweep the parameters 
    for p= 1: InstanciaLen
       for i= 1: HLen 
        for j= 1:PodStorageConfigLen
           for m = 1: seedLen
                     filename = strcat(Instancia(p),'_statistics', H(i),'_',PodStorageConfig(j),'_', seed(m), '.txt');
                     filenames(n) = string(filename);
                     n = n + 1;                   
           end
        end 
       end 
    end
   numtests = PodStorageConfigLen*InstanciaLen ; % quantity of experiments

   
end

