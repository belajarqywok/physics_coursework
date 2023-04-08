function result = nan_prevent (value)

    % Mencegah terjadinya output NaN
    if logical(isnan(value)); result = 0;

    else result = value;
    end

end