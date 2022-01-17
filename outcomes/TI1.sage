def generator():
    x = var("x")

    # define possible factors
    outs = [
        x^randrange(3,6),
        sqrt(x),
        log(x),
        exp(x),
        cos(x),
        sin(x),
        1/sqrt(x),
    ]
    out(x) = choice(outs)
    
    us = [
        x^randrange(3,6),
        log(x),
        exp(x),
        cos(x),
        sin(x),
    ]
    f,g = sample(us,2)
    primes = [2,3,5,7]
    m,n = sample(primes,2)
    u(x) = m*f+n*g
    
    f=out(u(x))
    dfdx=out.diff()(u(x))*u.diff()(x)
    

    return {
        "f": f.simplify(),
        "dfdx": dfdx.simplify(),
    }
