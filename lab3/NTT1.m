function[ans] = NTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
	k = (prime-1)/ N
	matrix = VDM(root^k, N);
	matrix = rem(matrix, prime);

  ans = rem((matrix * x')', prime)
end
