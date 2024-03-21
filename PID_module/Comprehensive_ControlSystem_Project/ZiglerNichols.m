function [KP, KI, KD] = ZiglerNichols(KU, TU, controller_type)
    % Implementation of Zigler-Nichols method for PID controller tuning
    if strcmpi(controller_type, 'ClassicPID')
        KP = 0.6 * KU;
        KI = 2 * KP / TU;
        KD = KP * TU / 8;
    elseif strcmpi(controller_type, 'PessenIntegralRule')
        KP = 0.7 * KU;
        KI = 1.75 * KP / TU;
        KD = KP * TU / 3;
    elseif strcmpi(controller_type, 'SomeOvershoot')
        KP = 0.33 * KU;
        KI = 0.33 * KU / TU;
        KD = 0.33 * KU * TU / 3;
    else
        error('Unknown controller type');
    end
end
