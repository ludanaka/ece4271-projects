% Arjun Sabnis
% ECE 4271 - Spring 2018

function BER = transceiver(length,SNR)
    bits = dataGeneration(length);
    s = pulse(bits,SNR);
    noise = noiseGeneration(s);
    est = receiver(s+noise);
    BER = bit_error(bits,est);
end