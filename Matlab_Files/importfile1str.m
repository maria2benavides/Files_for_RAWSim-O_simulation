function statistics = importfile1str(filename, dataLines)
%IMPORTFILE1 Import data from a text file
%  STATISTICS1HRANDOMNA0 = IMPORTFILE1(FILENAME) reads data from text
%  file FILENAME for the default selection.  Returns the data as a
%  string array.
%
%  STATISTICS1HRANDOMNA0 = IMPORTFILE1(FILE, DATALINES) reads data for
%  the specified row interval(s) of text file FILENAME. Specify
%  DATALINES as a positive scalar integer or a N-by-2 array of positive
%  scalar integers for dis-contiguous row intervals.
%
%  Example:
%  statistics1HRandomNA0 = importfile1("C:\Users\Maria\Documents\DCC_Tec\Simulation_DCC_RMFS\Pruebas_preliminares\1_Prueba_Semilla\statistics1HRandomNA0.txt", [3, Inf]);
%
%  See also READMATRIX.
%
% Auto-generated by MATLAB on 15-Jun-2023 16:14:25

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [3, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 2);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ":";

% Specify column names and types
opts.VariableNames = ["Bot0", "VarName2"];
opts.VariableTypes = ["string", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Bot0", "VarName2"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Bot0", "VarName2"], "EmptyFieldRule", "auto");

% Import the data
statistics = readmatrix(filename, opts);

end