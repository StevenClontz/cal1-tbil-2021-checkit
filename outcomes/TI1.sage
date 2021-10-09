def generator():
    x = var("x")

    # define possible factors
    
    out(x)=0
    u(x)=0
    
    while(out(x)==u(x)):
        outfactors = [
            x^randint(2,5),
            sqrt(x),
            log(x),
            e^x,
            cos(x),
            sin(x),
            1/sqrt(x),
        ]
        
        ufactors = [
            x^randint(2,5)+randint(-5,5),
            log(x),
            e^x,
            cos(x),
            sin(x),
        ]
        shuffle(outfactors)
        shuffle(ufactors)
        
        out(x)=outfactors[0]
        u(x)=ufactors[0]
    
    k=randint(1,5)*choice([-1,1])
    
    
    f=k*out(u(x))
    
    
    dfdx=f.diff()
    
    
        
    
    
    

    return {
        "f": f.simplify(),
        "dfdx": dfdx.simplify(),
    }
