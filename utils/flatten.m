function B = flatten(A)
    B = squeeze(reshape(A, 1, []));
end