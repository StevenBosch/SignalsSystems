function[ans] = invNTT1(x)
  N = length(x);
  [root, prime] = rootsofunity(N)
	k = (prime-1)/ N
  invRoot = modinverse(root, prime)
	invN = modinverse(N, prime)
  
	matrix = VDM(invRoot^k, N);
	matrix = rem(matrix, prime);

  answers = rem( matrix * x', prime)'
  ans = rem( invN * answers, prime);
end
