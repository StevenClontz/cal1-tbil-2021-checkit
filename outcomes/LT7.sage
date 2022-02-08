def generator():
    x=var("x")

    # Rational Function Factored
    ############################
    ### Generate 3 zeros to use in polynomials
    zeros = sample([Integer(i) for i in range(-6, 7) if i != 0], 3)
    # Generate 2 random non-zero integer coefficients
    coeff = list(range(-9,10))
    coeff.remove(0)
    c1 = choice(coeff)
    c2 = choice(coeff)
    #generare a random power for the non-hole factor
    p1 = randrange(2,4)
    p2 = choice([p1, p1, p1,p1-1])
    ## Construct numerator and denominator with a shared zero and random coefficient
    top =  c1*(x-zeros[0])^p2 * (x-zeros[1])
    bottom =  c2*(x-zeros[1]) * (x-zeros[2])^p1
    ## Evaluate the limit at the shared zero
    xhole = zeros[1]
    yhole = limit(top/bottom, x=xhole)
    if p1 == p2 :
        ha = QQ(c1/c2)
    else:
        ha = 0
    va = zeros[2]

    limits = {
        "top":top,
        "bottom":bottom,
        "xhole":xhole,
        "yhole":yhole,
        "ha":ha,
        "va":va
        }
    
    return {
        "limits":limits
        }

