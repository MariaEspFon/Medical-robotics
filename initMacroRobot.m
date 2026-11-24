%% This is the main Init file for the macro robot. It should run all files necesary for obtaining parameters and defining buses.
% 2018-04-26ng
% 2025-03-11rmr: compressed all added paths into a single command

clear all;
close all;
clc;

addpath(genpath('Library'))

initRobotBusSignals();
initRobotParameters;
initStateMachineParameters;