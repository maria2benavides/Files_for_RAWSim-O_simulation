
% datos necesarios para identificar las pruebas 

% DOES NOT USE function filename
%%  FILENAME
% filename = intaname + statistics + 00H + PodStorageConfig + seed

% H is the simulation time window
H = ["24H"];

% PodStorageConfig is the name of the technique we are using, for example,
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

%set 4
% PodStorageConfig = [ "iniR_1T_9N_isClose"];
PodStorageConfig = [ "iniR_9N_1T_isClose"];
%orders
% PodStorageConfig = [ "iniR_1N_9S_isRand", "iniR_9N_1S_isRand"];


% seeds
seed = ["1","2","3","7"];

% Name of instances with different format

% Set 1 instances 11
% Instancia = ["1_1_1_1_3094"];

% Set 1 instances 12 and 15 to 30
% Instancia = ["1_1_1_32_3094",...
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

% Set 3 : 41 to 56
% Instancia =  ["1_2_2_3_102",
%         "1_2_4_3_183",
%         "1_4_2_3_183",
%         "1_4_4_3_183",
%         "1_2_2_3_374",
%         "1_2_4_3_673",
%         "1_4_2_3_673",
%         "1_4_4_3_673",
%         "1_2_2_6_102",
%         "1_2_4_6_183",
%         "1_4_2_6_183",
%         "1_4_4_6_183",
%         "1_2_2_6_374",
%         "1_2_4_6_673",
%         "1_4_2_6_673",
%         "1_4_4_6_673"];


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

% Set 4 :  57 to 72
Instancia=["1_2_2_18_102",
        "1_2_4_32_183",
        "1_4_2_32_183",
        "1_4_4_32_183",
        "1_2_2_32_374",
        "1_2_4_32_673",
        "1_4_2_32_673",
        "1_4_4_32_673",
        "1_2_2_10_102",
        "1_2_4_16_183",
        "1_4_2_16_183",
        "1_4_4_16_183",
        "1_2_2_66_374",
        "1_2_4_75_673",
        "1_4_2_75_673",
        "1_4_4_75_673"];

%%%%%%%%%%%
HLen = length(H); 
PodStorageConfigLen = length(PodStorageConfig); 
seedLen = length(seed); 
InstanciaLen = length(Instancia);  
filename = string;
filenames = string;

n= 1;

    for p= 1: InstanciaLen
       for i= 1: HLen 
        for j= 1:seedLen
           for m = 1: PodStorageConfigLen 
                     filename = strcat(Instancia(p),'_statistics', H(i),'_', PodStorageConfig(m),'_', seed(j), '.txt');
                     filenames(n) = string(filename);
                     n = n + 1;                   
           end
       end 
   end 
end

%%
% All system variables to be extracted 
numtests =InstanciaLen*seedLen*PodStorageConfigLen;
variables_totales = ["StatTimingPodStorageAverage"; "StatTimingPodStorageOverall";
            "StatTimingPodStorageCount"; "StatOverallOrdersPlaced"; "StatAverageThroughputTime"; ];
variables_por_robot = ["PodsHandled"; "NumOrdersFinished"; "PodHandlingTimeAvg"];

%%%%  Change A acording to the set ... 
% For example, for Set 1: [11,12,15:30]; for Set 2: [31:40]; for Set 3: [41:56]; for Set 4: [57:72]
A = string([57:72]);
pruebas_inst = string;
n=1;
for i = 1:length(A)
    for j=1:seedLen
        pruebas_inst(n)= append('inst',A(i),'_',seed(j));
        n = n+1;
    end
end

pruebas_instLen = length(pruebas_inst);

for i=1:numtests
    statistics = importfile1str(filenames(i), 3);
    % single or total variables 
    for j = 1 : length(variables_totales)
        
        indx_var = find(statistics(:,1)==variables_totales(j));
        numvar = sum(str2double(statistics(indx_var,2)));

        var_pruebas(i,j) = numvar;
    end 

    % variables per station that requires total calculation 
    for k= 1: length(variables_por_robot)
        indx_var_por_robot = find(statistics==variables_por_robot(k));
        strToNum = str2double(statistics(indx_var_por_robot,2));
        numvar_por_robot = sum(strToNum);
        var_pruebas(i, length(variables_totales) + k) = numvar_por_robot;
    end 
end

% data processing for    StatAverageThroughputTime 
    StatAverageThroughputTime = [];
    n=1;
    for i= 1:pruebas_instLen
            for j = 1:PodStorageConfigLen
                StatAverageThroughputTime(i,j) = var_pruebas(n,5);
                n=n+1;
            end 
    end

tecnicas = PodStorageConfig';
T_ThroughputTime = array2table(StatAverageThroughputTime);
T_ThroughputTime.Properties.VariableNames = tecnicas ;
T_ThroughputTime = addvars(T_ThroughputTime,pruebas_inst','Before',tecnicas(1))

 % data processing for   NumOrdersFinished 
    NumOrdersFinished = [];
    n=1;
    for i= 1:pruebas_instLen     
        for j = 1:PodStorageConfigLen
            NumOrdersFinished(i,j) = var_pruebas(n,7);
            n=n+1;
        end 
    end
tecnicas = PodStorageConfig';
T_NumOrdersFinished = array2table(NumOrdersFinished);
T_NumOrdersFinished.Properties.VariableNames = tecnicas;
T_NumOrdersFinished = addvars(T_NumOrdersFinished,pruebas_inst','Before',tecnicas(1))

%% to create table T that has all the results, all the variables
var_names = [variables_totales; variables_por_robot];
T = array2table(var_pruebas);
pruebas = filenames';
T.Properties.VariableNames = var_names;
T = addvars(T,pruebas,'Before',variables_totales(1))






