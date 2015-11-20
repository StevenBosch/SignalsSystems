function playsound(samples, sampling_rate)
  if nargin == 1
    sampling_rate = 8000;
  endif
  file = tmpnam();
  file= [file, '.wav'];
  dim = size(samples)
  if dim(1) <= 2
    samples = samples';   # transpose
  endif
  wavwrite(samples, sampling_rate, file);
  system(['play ' file ]);
  system(['rm ' file]);
endfunction
